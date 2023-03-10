//
//  ColimaApp.swift
//  Colima
//
//  Created by Mike Meyer on 12/16/22.
//

import SwiftUI
import LaunchAtLogin

@main
struct ColimaApp: App {
    var body: some Scene {
        Settings {
            ContentView()
        }
        MenuBarExtra("Colima.app", systemImage: "1.circle") {
            Text("Colima is running")
            Button("Stop") {}
            Divider()
            Button("Settings") {
                showSettingsWindow()
            }
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
        }
    }
    
    private func showSettingsWindow() {
        NSApp.sendAction(Selector(("showSettingsWindow:")), to: nil, from: nil)
        NSApp.activate(ignoringOtherApps: true)
    }
}
