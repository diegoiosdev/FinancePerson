import SwiftUI

struct ListViewHome: View {
    
    let listView: ListView
    
    var body: some View {
        VStack(spacing: 5) {
            Image(listView.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(8)
                .fixedSize(horizontal: false, vertical: true)
            Text(listView.name)
                .font(.system(size: 12))
        }
        .frame(width: 70, height: 70)
    }
}

struct ListViewHome_Previews: PreviewProvider {
    static var previews: some View {
        ListViewHome(listView: ListView(id: 1, name: "Renda Extra", image: "soda"))
            .previewLayout(.sizeThatFits)
    }
}
