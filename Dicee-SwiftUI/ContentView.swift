//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by 林晓中 on 2024/12/2.
//

import SwiftUI

struct ContentView: View {
    
    //在struct内是数据是不可变的，加State关键字可以改变
    @State var leftDiceNumber = 1
    @State var rightDiceNuber = 1
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                
                Spacer()
                
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNuber)
                }.padding(.horizontal)
                
                Spacer()
                
                Button("Roll") {
                    //action
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNuber = Int.random(in: 1...6)
                }
                    .font(.system(size:50))
                    .fontWeight(.heavy)
                    .foregroundStyle(.white).padding(.horizontal)
                    .background(Color.red)
                
                Spacer().frame(height:50) // 添加空白占位符

                    
            }
        }
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1,contentMode: .fit) //1代表宽高比相等，即正方形
            .padding()
    }
}


#Preview {
    ContentView()
}

