//
//  theTouch.swift
//  Nintendo
//
//  Created by Tristan Aly on 24/05/2022.
//

import SwiftUI

struct theTouch: View {
    var body: some View {
        HStack( spacing: 15){
            Image(systemName: "dpad.fill")
                .resizable()
                .frame(width: 130, height: 130)
            Spacer()
            Image(systemName: "b.circle.fill")
                .resizable()
                .frame(width: 45, height: 45)
                .offset( y: 15)
            Image(systemName: "a.circle.fill")
                .resizable()
                .frame(width: 45, height: 45)
                .offset( y: -20)
        }.padding(.horizontal)
    }
}

struct theTouch_Previews: PreviewProvider {
    static var previews: some View {
        theTouch()
    }
}
