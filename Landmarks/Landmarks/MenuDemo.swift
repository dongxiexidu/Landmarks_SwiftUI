//
//  MenuDemo.swift
//  Landmarks
//
//  Created by lidongxi on 2021/7/7.
//

import SwiftUI

struct MenuDemo: View {
    var body: some View {
//        Menu {
//            Button("Open in Preview", action: {
//
//            })
//            Button("Save as PDF", action: {
//
//            })
//        } label: {
//            Image(systemName: "document")
//            Text("PDF")
//        }
        
        Menu("menu") {
            Button("Duplicate", action: { })
            Button("Rename", action:  { })
            Button("Delete…", action:  { })
            Menu("Copy") {
                Button("Copy", action:  { })
                Button("Copy Formatted", action:  { })
                Button("Copy Library Path", action:  { })
            }
        }
        
        
    }
}

struct MenuDemo_Previews: PreviewProvider {
    static var previews: some View {
        MenuDemo()
    }
}
