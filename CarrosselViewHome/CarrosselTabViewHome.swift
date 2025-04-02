import SwiftUI

struct CarrosselTabViewHome: View {
    
    @State private var currentIndex = 0
    
    let bannerHome: [ListView] = [
    ListView(id: 0, name: "Consultoria on-line", image: "Banner01"),
    ListView(id: 1, name: "Moda Masculina", image: "TestBanner"),
    ListView(id: 2, name: "Viagens", image: "BannerViagens"),
    ListView(id: 3, name: "", image: "BannerBike")
    ]
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(bannerHome) { bannerHome in
                CarrosselHome(listBanner: bannerHome)
                    .tag(bannerHome.id)
            }
        }
        .frame(height: 200)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
                withAnimation(.easeInOut(duration: 1)){
                    if currentIndex > bannerHome.count {
                        currentIndex = 1
                    }
                    currentIndex += 1
                }
            }
        }
    }
}

struct CarrosselTabViewHome_Previews: PreviewProvider {
    static var previews: some View {
        CarrosselTabViewHome()
    }
}
