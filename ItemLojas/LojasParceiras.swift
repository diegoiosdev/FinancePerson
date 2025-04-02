import SwiftUI

struct LojasParceiras: View {
    
    let list: ListView
    
    var body: some View {
        Text(list.name)
    }
}

struct LojasParceiras_Previews: PreviewProvider {
    static var previews: some View {
        LojasParceiras(list: listViewMock[0])
    }
}
