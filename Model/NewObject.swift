import Foundation

internal struct NewObject: Identifiable, Codable {
    
    let id: Int
    let name: String
    let logo_Image: String
    let header_Image: String
    let location: String
    let stars: Int
    let products: [ProductType]
    
    private enum CodingKeys: String, CodingKey {
        case id, name, products, stars
        case logo_Image = "logoImage"
        case header_Image = "headerImage"
        case location = "localizacao"
    }
    
}

internal struct ProductType: Codable {
    
    let idNome: Double
    let name: String
    
    private enum CodingKeys: String, CodingKey {
        case name
        case idNome = "id_nome"
    }
}
