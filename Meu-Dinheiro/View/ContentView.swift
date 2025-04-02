import SwiftUI

 internal struct ContentView: View {
     
    @State  var newObject: [NewObject] = []
    
    
    @State private var isLoading = true
     
     var serviceTest = HomeService()
     var testAlomofire = HomeNetworing()
     
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack{ Spacer() }
                Text("Cadastro.")
                    .font(.largeTitle)
                    .bold()
                Text("Você no controle!.")
                    .font(.title)
                    .foregroundColor(.green)
                Spacer()
                TestView {
                    print("Bottom pressionado")
                }
            }
            .padding(.leading)
        }
        .padding(.top, -56)
        
        .onAppear {
            Task {
                await getNewObject()
            }
        }
    }
     
     func getAlomofire() {
//         testAlomofire.fetchDataNewObject { newObject, error in
//         }
     }
     
    internal func getNewObject() async {
        do {
            let result = try await serviceTest.fetchData()
            switch result {
                case .success(let newObj):
                    self.newObject = newObj
                    self.isLoading = false
                case.failure(let error):
                    print(error.localizedDescription)
                    self.isLoading = false
            }
        } catch {
            print(error.localizedDescription)
            self.isLoading = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
