import SwiftUI

struct TestView: View {
    
    var onButtonPress: () -> Void
    
    var body: some View {
        Button {
            onButtonPress()
        }label: {
            HStack {
                Image(systemName: "cart")
                Text("ver moedas")
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 16)
            .font(.title3)
            .bold()
            .foregroundColor(.white)
            .background(Color.yellow)
            .cornerRadius(32)
            .shadow(color: Color(.blue).opacity(0.6), radius: 10, x: 6, y: 8)
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView {
            print("botão pressionando previews")
        }
    }
}
