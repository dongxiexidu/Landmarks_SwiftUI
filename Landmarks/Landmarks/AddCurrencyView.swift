//
//  AddCurrencyView.swift
//  Landmarks
//
//  Created by lidongxi on 2021/7/7.
//

import SwiftUI

struct AddCurrencyView: View {
    
    @State var isSelected: Bool = false
    var data = ["USA", "China"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(data, id: \.description) { item in
                    HStack {
                        Button(action: {
                            self.isSelected.toggle()
                        }, label: {
                            Text(item)
                        })
                        
                        Spacer()
                        
                        if isSelected {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                }
            }.navigationBarTitle(Text("Add Currency"))
        }
    }
    
}

struct AddCurrencyView_Previews: PreviewProvider {
    static var previews: some View {
        AddCurrencyView()
    }
}
