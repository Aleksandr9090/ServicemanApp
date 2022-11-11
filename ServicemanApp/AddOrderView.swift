//
//  AddOrderView.swift
//  ServicemanApp
//
//  Created by Aleksandr on 10.11.2022.
//

import SwiftUI

struct AddOrderView: View {
    
    @State private var address = "Address"
    @State private var phone = ""
    @State private var description = ""
    @State private var preCost = ""
    @State private var cost = ""
    @State private var stuff = ""
    @State private var stuffCost = ""
    @State private var profit = ""
    @State private var comment = ""
    @State private var owner = "Artem"
    @State private var percentOwner = "50"
    
    var body: some View {
        ScrollView {
            TextEditor(text: $address)
        }
        .textFieldStyle(.roundedBorder)
    }
}

struct AddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView()
    }
    
    
}

//TextField("Enter address", text: $address )
//TextField("Enter phone", text: $phone )
//TextField("Enter preCost", text: $preCost )
//TextField("Enter cost", text: $cost )
//TextField("Enter stuff", text: $stuff )
//TextField("Enter stuffCost", text: $stuffCost )
//TextField("Enter profit", text: $profit )
//TextField("Enter owner", text: $owner )
//TextField("Enter description", text: $description )
//TextField("Enter comment", text: $comment )
//TextField("percentOwner", text: $percentOwner)
