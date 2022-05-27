//
//  theTouch.swift
//  Nintendo
//
//  Created by Tristan Aly on 24/05/2022.
//

import SwiftUI

struct theTouch: View {
    
    @State var screen = false
    
    
    var body: some View {
       
        HStack( spacing: 15){
            Image(systemName: "dpad.fill")
                .resizable()
                .frame(width: 130, height: 130)
            Spacer()
            Image(systemName: "b.circle.fill")
                .TouchStyle()
                .offset( y: 15)
            NavigationLink{
                SecondView()
            } label: {
            Image(systemName: "a.circle.fill")
                .TouchStyle()
                .offset( y: -20)
                .foregroundColor(.black)
            }
            
        }.padding(.horizontal)
        
    }
}

struct theTouch_Previews: PreviewProvider {
    static var previews: some View {
        theTouch()
        
    }
}

extension Image {
    func TouchStyle() -> some View {
        self
            .resizable()
            .frame(width: 45, height: 45)
    }
}
