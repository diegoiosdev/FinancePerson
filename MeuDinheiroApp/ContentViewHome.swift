import SwiftUI

 struct ContentViewHome: View {
    
    internal var body: some View {

        TabView {
            RegisterViewHome()
                .tabItem {
                    Image(systemName: "house.fill")
                                    Text("Início")}
            CarrosselTabViewHome()
                .tabItem {
                    Image(systemName: "arrow.down.left.circle.fill")
                                      Text("Entrada")}
            ServiceHome()
                .tabItem {
                    Image(systemName: "arrow.up.right.circle.fill")
                                      Text("Saida")}
            TestView(onButtonPress: {
            })
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                                     Text("Perfil do Usuário")
            }
        }
    }
}

