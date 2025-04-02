//
//  Extensions .swift
//  Meu-Dinheiro
//
//  Created by Diego Fernando on 01/04/25.

import UIKit

struct AppAppearance {
    
    static func setAppearance() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.clear
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
}
