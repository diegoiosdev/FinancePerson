import SwiftUI

struct CarrosselHome: View {
    
    let listBanner: ListView
    
    var body: some View {
        Image(listBanner.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(8)
            .padding(20)
    }
}

struct CarrosselHome_Previews: PreviewProvider {
    static var previews: some View {
        CarrosselHome(listBanner:  ListView(id: 1, name: "", image: "banner02"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
