//
//  Landmark.swift
//  Landmarks
//
//  Created by lidongxi on 2021/7/5.
//

import SwiftUI
import CoreLocation

//当 Landmark 类型声明了 Identifiable 协议需要的 id 属性后
struct Landmark: Hashable, Codable, Identifiable {
    //一个可以辨别出某个实例的满足 Hashable 的 id,这个要求将在数据变更时快速定位到变化的数据所对应的 cell，并进行 UI 刷新。
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    var isFavorite: Bool

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
