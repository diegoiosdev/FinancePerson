import Foundation

internal struct DetailViews: Identifiable {
    
    let id: Int
    let name: String
    let product: [StoreView]
}

internal struct StoreView: Identifiable {
    
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
}
