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
            VStack(spacing: 0){
               radiofill()
                    .padding(.horizontal)
                VStack{
                    HStack{
                        middle()}
                }.padding(.horizontal)
                radiofill()
                    .rotationEffect(Angle(degrees: 180))
                    .padding(.horizontal)
            }.rotationEffect(Angle(degrees: 40))
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
        ForEach (0 ..< 3) { i in
            HStack{
                Circle()
                    .fill(.black)
                    .frame(width: 10, height: 10)
            }
        }
    }
    func radio1() -> some View {
        ForEach (0 ..< 5) { i in
            HStack{
                Circle()
                    .fill(.black)
                    .frame(width: 10, height: 10)
            }
        }
    }
    func radio2() -> some View {
        ForEach (0 ..< 7) { i in
            HStack{
                Circle()
                    .fill(.black)
                    .frame(width: 10, height: 10)
            }
        }
    }
    func radio3() -> some View {
        ForEach (0 ..< 2) { i in
            HStack{
                Circle()
                    .stroke()
                    .frame(width: 10, height: 10)
            }
        }
    }
    func radio4() -> some View {
        ForEach (0 ..< 4) { i in
            HStack{
                Circle()
                    .stroke()
                    .frame(width: 10, height: 10)
            }
        }
    }
    func radio5() -> some View {
        ForEach (0 ..< 6) { i in
            HStack{
                Circle()
                    .stroke()
                    .frame(width: 10, height: 10)
            }
        }
    }
    func radiofill() -> some View {
        VStack(spacing: 0){
               HStack{radio3()}
                    HStack{radio()}
                        HStack{radio4()}
            HStack{radio1()}
                 HStack{radio5()}
                     HStack{radio2()}
            }
        }
    func middle() -> some View {
        ForEach (0 ..< 8) { i in
            
            HStack{
                Circle()
                    .stroke()
                    .frame(width: 10, height: 10)
            }
            
        }
    }
    }

