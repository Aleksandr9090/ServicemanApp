//
//  OrdersView.swift
//  ServicemanApp
//
//  Created by Aleksandr on 10.11.2022.
//

import SwiftUI

struct OrdersView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hello, world!")
                    .navigationBarTitle("Orders")
                    .toolbar {
                        ToolbarItem {
                            Button(action: {}) {
                                Image(systemName: "plus")
                                    .font(.title3)
                            }
                        }
                    }
            }
            
            
        }
    }
}

struct OrdersView_Previews: PreviewProvider {
    static var previews: some View {
        OrdersView()
    }
}

