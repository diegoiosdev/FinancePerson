import SwiftUI

@main
  struct MeuDinheiroApp: App {
     init() {
         AppAppearance.setAppearance()
     }
    var body: some Scene {
        WindowGroup {
            HomeVIewApp()
        }
    }
}
