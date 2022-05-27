//
//  SecondView.swift
//  Nintendo
//
//  Created by Tristan Aly on 27/05/2022.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack{
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30){
                Spacer()
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 350)
                    Rectangle()
                        .foregroundColor(.gray.opacity(0.3))
                        .frame(width: 220, height: 220)
                    HStack(spacing: 1){
                    Text("Game boy ".uppercased())
                        .font(.system(size: 23,weight: .bold))
                        .foregroundColor(.gray)
                    Text("COLOR")
                            .font(.system(size: 23,weight: .bold))
                            .overlay(
                                LinearGradient(colors: [Color.red,Color.purple, Color.green,Color.yellow,Color.blue], startPoint: .leading, endPoint: .trailing)
                        )
                            .mask(
                        Text("COLOR")
                            .font(.system(size: 23,weight: .bold)))
                    }.offset(y: 150)
                    Image("zelda")
                        .resizable()
                        .frame(width: 220, height: 220)
                    
                    VStack {
                        HStack(spacing: 0){
                        Image(systemName: "circle.fill")
                                .foregroundColor(.red)
                            Image(systemName: "chevron.right")
                            Image(systemName: "chevron.right")
                            Image(systemName: "chevron.right")
                            
                        }.foregroundColor(.white).font(.caption)
                        Text("Power")
                            .font(.callout)
                           
                        
                    }.foregroundColor(.white)
                        .offset(x: -140)
                    
                        
                            
                }
                HStack{
                    Capsule()
                        .stroke(lineWidth: 3)
                        .frame(width: 130, height: 30)
                        .overlay(Text("Nintendo")
                            .font(.title)
                            )
                }.foregroundColor(.black.opacity(0.4))
                theTouch()
                StarAndSelect()
                HStack{
                    Radio()}
                .offset( x: 20,y: -45)
                Spacer()
                
            }.padding(.top,50)
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
