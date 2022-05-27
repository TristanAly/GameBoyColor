//
//  StarAndSelect.swift
//  Nintendo
//
//  Created by Tristan Aly on 27/05/2022.
//

import SwiftUI

struct StarAndSelect: View {
    var body: some View {
        VStack{
        HStack(spacing: 10){
            Ellipse()
                
            Ellipse()
        
        }.frame(width: 100, height: 17)
                
            
        HStack{
        Text("select")
        Text("start")}
        .foregroundColor(.black.opacity(0.5))
        .padding(.horizontal)
        }
        .padding()
    }
}

struct StarAndSelect_Previews: PreviewProvider {
    static var previews: some View {
        StarAndSelect()
    }
}
