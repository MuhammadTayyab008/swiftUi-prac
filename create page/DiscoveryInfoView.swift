//
//  DiscoveryInfoView.swift
//  create page
//
//  Created by Rashdan Natiq on 2024-08-08.
//

import SwiftUI

struct DiscoverInfo {
    let produtName: String
    let date: String
    let discrition : String
    var category: String
    let dotIcon: String
}

struct DiscoveryInfoView: View {
    
    
    let discoveryInfo: DiscoverInfo
    
    init(info: DiscoverInfo) {
        self.discoveryInfo = info
    }
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Text(discoveryInfo.produtName)
                    .bold()
                
                Spacer()
                Image(discoveryInfo.dotIcon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 10)
            }
            
            Text(discoveryInfo.date)
                .foregroundColor(.orange)
                .font(.system(size: 12))
            
            Text(discoveryInfo.discrition)
                .font(.system(size: 13))
            
            Text(discoveryInfo.category)
                .foregroundColor(Color(red: 79.0 / 255.0, green: 185.0 / 255.0, blue: 242.0 / 255.0))
                .font(.system(size: 10))
            
            Divider()
            
        }
    }
}

struct DiscoveryInfoView_Previews: PreviewProvider {
    static var previews: some View {
        let info = DiscoverInfo(produtName: "ABC", date: "ABC", discrition: "ABC", category: "ABC", dotIcon: "ABC")
        DiscoveryInfoView(info: info)
    }
}
