import SwiftUI

internal struct ServiceHome: View {
    
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    }
    
    var body: some View {
        HStack {
            LazyHGrid(rows: gridLayout, spacing: 15) {
                ForEach(listViewMock) { listView in
                    NavigationLink {
                        LojasParceiras(list: listView)
                    } label: {
                        ListViewHome(listView: listView)
                    }
                }
            }
            .foregroundColor(.black)
            .frame(height: 240)
            .padding(.horizontal, 50)
        .padding(.top, 15)
        }
    }
    
    internal struct ServiceHome_Previews: PreviewProvider {
        static var previews: some View {
            ServiceHome()
        }
    }
}
