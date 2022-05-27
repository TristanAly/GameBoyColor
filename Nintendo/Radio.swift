//
//  Radio.swift
//  Nintendo
//
//  Created by Tristan Aly on 27/05/2022.
//

import SwiftUI

struct Radio: View {
    var body: some View {
        HStack{
            Spacer()
        VStack{
            
            radiofill()
        }
        .frame(width: 76, height: 82)
        .background(RoundedRectangle(cornerRadius: 10) .fill(Color.black.opacity(0.5))).rotationEffect(Angle(degrees: -20))
                
        }.padding(.horizontal)
            
    }
}


struct Radio_Previews: PreviewProvider {
    static var previews: some View {
        Radio()
    }
}

extension Radio {
    
    
    func radio() -> some View {
        ForEach (0 ..< 5) { i in
            HStack{
                Circle().stroke(lineWidth: 3)
                    .frame(width: 15, height: 15)
                    .foregroundColor(.black.opacity(0.3))
            }
        }
    }
    func radiofill() -> some View {
        ForEach (0 ..< 4) { i in
            VStack{
                HStack(spacing: 3){
                    radio()
                }
            }
        }
    }
}
