//
//  LandmarkList.swift
//  Landmarks
//
//  Created by lidongxi on 2021/7/5.
//

import SwiftUI

/*
 SwiftUI 中还有几个常见的 @ 开头的修饰，比如 @Binding，@Environment，@EnvironmentObject 等，原理上和 @State 都一样，只不过它们所对应的 struct 中定义读写方式有区别。它们共同构成了 SwiftUI 数据流的最基本的单元。
 */

struct LandmarkList: View {
    //对于读取，非常简单，使用 showFavoritesOnly.value 就能拿到 State 中存储的实际值
    //@propertyWrapper 的修饰符最终会作用在属性上，将属性“包裹”起来，以达到控制某个属性的读写行为的目的
    //$showFavoritesOnly 的写法也只不过是 showFavoritesOnly.binding 的简化
    //state 是一个值或一组值，它可以随时间变化，并且会影响视图的行为、内容或布局
    // @State var showFavoritesOnly = true
      // var showFavoritesOnly = State(initialValue: true)
    
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
//        List {
//            LandmarkRow(landmark: landmarkData[0])
//            LandmarkRow(landmark: landmarkData[0])
//        }
        
        // 让数据变成 identifiable ：使用 key path 属性来唯一标识每个元素，或者让数据类型遵循 Identifiable 协议
//        List(landmarkData, id: \.id) { Landmark in
//            LandmarkRow(landmark: Landmark)
//        }
        
        NavigationView {
            List{
                //使用 $ 前缀来访问一个状态变量或者它的属性的绑定
                Toggle(isOn: $userData.showFavoritesOnly, label: {
                    Text("Favorites only")
                })
                
                //若要在列表中组合静态和动态视图，或者将两个或多个不同的动态视图组合在一起，
                //要使用 ForEach 类型 而不是List
                ForEach(self.userData.landmarks) { landmark in
                    if landmark.isFavorite || !self.userData.showFavoritesOnly {
                        
                        NavigationLink( destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
        
    }
}
#if DEBUG
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
                    .environmentObject(UserData())
//        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
//            LandmarkList()
//                            .previewDevice(PreviewDevice(rawValue: deviceName))
//        }
    }
}
#endif
