import Foundation

internal enum RequestError: Error {
    case invalidURL
    case errorRequest(error: String)
    case errorData
}

internal struct HomeService {
    
    func fetchData() async throws -> Result<[NewObject], RequestError> {
        
        guard let url = URL(string: "https://polls.apiblueprint.org/questions")
        else {
            return .failure(.invalidURL)
        }
        
        var resquet = URLRequest(url: url)
        resquet.httpMethod = "GET"
        
        let (data, _) =  try await URLSession.shared.data(for: resquet)
        let newObject = try JSONDecoder().decode([NewObject].self, from: data)
        
        return .success(newObject)
    }
    
    
    func confirmeOrde(newObject: NewObject ) async throws -> Result<[ String: Any ]?, RequestError> {
        guard let url = URL(string: "https://polls.apiblueprint.org/questions") else {
            return .failure(.invalidURL)
        }
        
        let encodeObject = try JSONEncoder().encode(newObject)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = encodeObject
        
        let (data, _) = try  await URLSession.shared.data(for: request)
        let message = try JSONSerialization.jsonObject(with: data) as? [String: Any]
        return .success(message)
    }
}
