//
//  ContentView.swift
//  SATisfyingPrep
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct Untitled: View {
    var body: some View {

                GeometryReader { geometry in
                    VStack(spacing: 0) {
                        // Upper half background image
                        ZStack{
                            Image("purpleBG") // Replace with your asset name
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width, height: geometry.size.height / 2)
                                .clipped()
                                .cornerRadius(10)
                            Image("icon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        
                        // Lower half content
                        VStack {
                            Text("Hello, world!")
                                .font(.largeTitle)
                                .padding()
                        }//VStack
                        .frame(width: geometry.size.width, height: geometry.size.height / 2)
                        .background(Color.white)
                    }//VStack
                    .edgesIgnoringSafeArea(.all)
                }//???
            }//body
        }//struct


#Preview {
    Untitled()
}
