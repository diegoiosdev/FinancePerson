import SwiftUI

struct RegisterViewHome: View {
    
    @State var textFielRegister: String = ""
    @State var textFielValue:  String = ""
    @State var textFielType:  String = ""
    @State var textFielCategory:  String = ""
    @State var textFielMonth:  String = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                TextField("Digite o nome da conta", text: $textFielRegister)
                    .padding()
                    .background(Color.gray.opacity(0.2).cornerRadius(10))
                    .font(.headline)
                
                TextField("R$: 140,00", text: $textFielValue)
                    .padding()
                    .background(Color.gray.opacity(0.2).cornerRadius(10))
                    .keyboardType(.decimalPad)
                    .font(.headline)
                
                TextField("Tipo da conta", text: $textFielType)
                    .padding()
                    .background(Color.gray.opacity(0.2).cornerRadius(10))
                    .font(.headline)
                
                TextField("Categoria", text: $textFielCategory)
                    .padding()
                    .background(Color.gray.opacity(0.2).cornerRadius(10))
                    .font(.headline)
                
                TextField("Mês", text: $textFielMonth)
                    .padding()
                    .background(Color.gray.opacity(0.2).cornerRadius(10))
                    .font(.headline)
                            
                Button(action: {
                }, label: {
                    Text("Salvar".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.cornerRadius(10))
                        .foregroundColor(.white)
                        .font(.headline)})
             
            }
        }
        .padding(.bottom)
        .navigationTitle("Cadastrar contas")
    
    }
}

  struct CadastroViewHome_Previews: PreviewProvider {
    static var previews: some View {
        RegisterViewHome()
    }
}
