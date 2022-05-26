//
//  ContentView.swift
//  Nintendo
//
//  Created by Tristan Aly on 24/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30){
                
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
                    Text("GAME BOY")
                        .font(.system(size: 35,weight: .bold))
                        .overlay(
                            LinearGradient(colors: [Color.red, Color.yellow,Color.yellow,Color.green], startPoint: .leading, endPoint: .trailing)
                    )
                        .mask(
                    Text("GAME BOY")
                        .font(.system(size: 35,weight: .bold)))
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
                Spacer()
                
            }.padding(.top,50)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
