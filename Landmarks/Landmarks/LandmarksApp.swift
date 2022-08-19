//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by lidongxi on 2022/8/19.
//

import Foundation
import SwiftUI

@main
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
            LandmarkList()
               .environmentObject(UserData())
        }
    }
}
