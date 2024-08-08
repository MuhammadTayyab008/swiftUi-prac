//
//  ContentView.swift
//  create page
//
//  Created by Rashdan Natiq on 2024-08-07.
//

import SwiftUI

//class ParentCalss {
//
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//}
//
//class childClass: ParentCalss {
//
//    let schoolName: String
//
//    init(name: String, schollName: String) {
//        self.schoolName = schollName
//        super.init(name: name)
//    }
//}
//
//let object = childClass(name: "Tayyab", schollName: "ABC")
//
//func abc() {
//    let anotherObject = object
//    anotherObject.name = "sultan"
//
//
//    let discoverObject = Discover(productImage: "image1",
//                                  produtName: "Black panther",
//                                  date: "Sat, 15 August • 13:00",
//                                  discrition: "Biljardpalatset 112 34 Stockholm",
//                                  category: "pool")
//    var anOtherDisover = discoverObject
//    anOtherDisover.category = "ACB"
//
//
//    print(object.name)
//}


struct Discover {
    let productImage: String
    let produtName: String
    let date: String
    let discrition : String
    var category: String
    let dotIcon: String
    let imageList: [String]

}

struct DiscoverTile: View {
    
    let discover: Discover
    
    init(discover: Discover) {
        self.discover = discover
    }
    
    var body: some View {
        
        HStack {
            
            Image(discover.productImage)
                .resizable()
                .frame(width: 117, height: 117)
                .cornerRadius(60)
                .clipped()
            VStack(alignment: .leading, spacing: 5) {
                
                DiscoveryInfoView(info: DiscoverInfo(produtName: discover.produtName, date: discover.date, discrition: discover.discrition, category: discover.category, dotIcon: discover.dotIcon))
                
                DiscoveryJoindview(imageList: discover.imageList)

            }.padding(.leading, 14)
            Spacer()
        }
        
        .padding(.vertical, 10)
        .padding(.horizontal, 7)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let discoverObject = Discover(productImage: "image1",
                                      produtName: "Black panther",
                                      date: "Sat, 15 August • 13:00",
                                      discrition: "Biljardpalatset 112 34 Stockholm",
                                      category: "pool",
                                      dotIcon: "icon",
                                      imageList: ["image1", "image2", "image1"]
)
        DiscoverTile(discover: discoverObject)
//        ListView()
    }
}


//struct ListView: View {
//
//    var body: some View {
//        VStack {
//            List {
//                ContentView()
////                ContentView()
////                ContentView()
//            }
//        }
//    }
//}

