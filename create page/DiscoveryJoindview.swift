//
//  DiscoveryJoindview.swift
//  create page
//
//  Created by Rashdan Natiq on 2024-08-08.
//

import SwiftUI

struct DiscoveryJoindview: View {
    
    let imges: [String]
    
    init( imageList: [String]) {
        self.imges = imageList
    }
    var body: some View {
        HStack {
            Image(imges[0])
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.orange))
            
            
            Image(imges[1])
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.orange))
            
            Image(imges[2])
                .resizable()
                .cornerRadius(20)
                .frame(width: 40, height: 40)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.orange))
            
            ZStack{
                Circle()
                    .foregroundColor(.orange)
                    .frame(width: 30, height: 30)
                
                Text("+2")
                    .foregroundColor(.white)
                    .frame(width: 22.0, height: 13.0, alignment: .center)
                    .font(.custom("HelveticaNeue-Medium", size: 11.0))
            }
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("join")
                
            })
                .frame(width: 85, height: 25)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(35)
                .overlay(
                    RoundedRectangle(cornerRadius: 35)
                        .stroke(Color.black)
                )
                .shadow(radius: 25)
        }
    }
}



struct DiscoveryJoindview_Previews: PreviewProvider {
    static var previews: some View {
        let allImage = ["image1","image2","image1", "image1", "image1", "image1"]
        DiscoveryJoindview(imageList: allImage)
    }
}
