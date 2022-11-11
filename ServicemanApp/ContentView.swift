//
//  ContentView.swift
//  ServicemanApp
//
//  Created by Aleksandr on 11.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            OrdersView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Orders")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis.circle")
                    Text("Statistics")
                }
            ChatsView()
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("Chats")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
