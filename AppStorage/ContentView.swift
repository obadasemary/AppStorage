//
//  ContentView.swift
//  AppStorage
//
//  Created by Abdelrahman Mohamed on 1.07.2020.
//

import SwiftUI

struct ContentView: View {

    @AppStorage("isDarkMode")
    private var isDarkMode: Bool = false

    var body: some View {
        NavigationView{
            VStack {
                Text(isDarkMode ? "DARK" : "LIGHT")
                Toggle(isOn: $isDarkMode, label: {
                    Text("Select Mode")
                }).fixedSize()
            }
            .navigationTitle("AppStorage")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
