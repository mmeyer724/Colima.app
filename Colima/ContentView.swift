//
//  ContentView.swift
//  Colima
//
//  Created by Mike Meyer on 12/16/22.
//

import SwiftUI
import LaunchAtLogin

struct ContentView: View {
    @State private var cpus = 2.0
    @State private var memory = 4.0
    
    var body: some View {
        Form {
            HStack {
                Text("CPUs: ").bold()
                Text("\(Int(cpus))")
            }
            Slider(
                value: $cpus,
                in: 1...Double(ProcessInfo.processInfo.processorCount),
                step: 1
            )
            
            HStack {
                Text("Memory: ").bold()
                Text("\(Int(memory)) GB")
            }
            Slider(
                value: $memory,
                in: 1...Double(ProcessInfo.processInfo.physicalMemory / 1073741824),
                step: 1
            )
            
            HStack {
                LaunchAtLogin.Toggle()
                Spacer()
                Button("Restart Colima") {
                    
                }
            }
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
