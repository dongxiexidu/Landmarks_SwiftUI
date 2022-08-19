//
//  HikeView.swift
//  Landmarks
//
//  Created by lidongxi on 2021/7/6.
//

import SwiftUI

struct HikeView: View {
    var hike: Hike
    @State private var showDetail = false

    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)

                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.headline)
                    Text(hike.distanceText)
                }

                Spacer()

                Button(action: {
                    self.showDetail.toggle()
                }) {
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .padding()
                        //
                        .animation(.easeInOut(duration: 2))
                        //
                }
            }

            if showDetail {
                HikeDetail(hike: hike)
            }
        }
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        HikeView(hike: hikeData[0])
            .padding()
        Spacer()
    }
}
