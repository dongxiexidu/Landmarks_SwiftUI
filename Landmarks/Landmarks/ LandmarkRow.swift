//
//   LandmarkRow.swift
//  Landmarks
//
//  Created by lidongxi on 2021/7/5.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                // 系统图片是基于矢量的
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}
#if DEBUG
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarkData[0])
                .previewLayout(.fixed(width: 300, height: 70))
            LandmarkRow(landmark: landmarkData[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
        
    }
}
#endif
