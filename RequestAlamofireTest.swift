import Foundation
import Alamofire

 struct HomeNetworing {
    func fetchDataNewObject(completion: @escaping ([NewObject]?, Error?) -> Void) {
        AF.request("https://polls.apiblueprint.org/questions").responseDecodable(of: [NewObject].self) { response in
            switch response.result {
                case .success(let object):
                    completion(object, nil)
                default: break
            }
        }
    }
}
