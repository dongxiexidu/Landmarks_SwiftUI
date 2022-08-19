//
//  UserData.swift
//  Landmarks
//
//  Created by lidongxi on 2021/7/5.
//

import SwiftUI
//引入 Combine 库，声明一个遵循 ObservableObject 协议的模型类型。
import Combine

//SwiftUI 会订阅您的 ObservableObject ，并在数据更改时更新需要刷新的所有视图。
final class UserData: ObservableObject {
    
    // 给通过 didChange 发布者发送更新的两个属性创建 didSet handlers
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    
}
