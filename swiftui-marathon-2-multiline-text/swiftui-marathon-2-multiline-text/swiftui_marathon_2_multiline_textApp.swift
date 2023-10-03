//
//  swiftui_marathon_2_multiline_textApp.swift
//  swiftui-marathon-2-multiline-text
//
//  Created by Vladislav Shakhray on 03/10/2023.
//

import SwiftUI

@main
struct swiftui_marathon_2_multiline_textApp: App {
    init() {
        UserDefaults.standard.set(false, forKey: "NSAllowsDefaultLineBreakStrategy")
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
