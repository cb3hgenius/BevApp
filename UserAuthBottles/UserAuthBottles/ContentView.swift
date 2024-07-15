//
//  ContentView.swift
//  UserAuthBottles
//
//  Created by Charles B on 7/4/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        LocationsView()
        
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environmentObject(LocationsViewModel())
}
