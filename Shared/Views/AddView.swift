//
//  AddView.swift
//  ToDoList (iOS)
//
//  Created by David Nguyen on 24/11/2021.
//

import SwiftUI

struct AddView: View {
    @State var value: String = ""
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    TextField("Type some thing here ...", text: $value)
                        .frame(height: 55)
                        .background(Color.gray)
                    Button(action: {
                        
                    }, label: {
                        Text("Save".uppercased())
                            .frame( height: 55)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                    })
                }
            }
            .navigationTitle("Add an Item  📖")
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
