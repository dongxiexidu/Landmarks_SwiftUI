//
//  Calculator.swift
//  Landmarks
//
//  Created by lidongxi on 2021/7/7.
//

import SwiftUI

struct Calculator: View {
    
    @State private var display = "0"
    
    let data =  [["AC","±", "%", "÷"],
                 ["7", "8", "9","×"],
                 ["4", "5", "6","-"],
                 ["1", "2", "3", "+"],
                 ["0", ".", "="]]
    
    
    var body: some View {
        let margin: CGFloat = 10
        
        VStack(alignment: .center) {
            HStack {
                Spacer()
                Text(display)
                    .foregroundColor(.blue)
                    .font(.largeTitle)
                    .frame(minHeight: 100)
            }.padding(.all)
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: margin) {
                ForEach(data, id: \.description) { item in
                    HStack(alignment: .center, spacing: margin) {
                        ForEach(item, id: \.description) { temp in
                            Button(action: {
                                display = temp
                            }, label: {
                                Text(temp)
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(.blue)
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
                            })
                        }
                    }

                }
            }
        }.padding(margin)
        
    }
}

struct Calculator_Previews: PreviewProvider {
    static var previews: some View {
        Calculator()
    }
}
