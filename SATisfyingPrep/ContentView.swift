//
//  ContentView.swift
//  SATisfyingPrep
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct secondViewFile: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("purpleBG") // Replace with the name of your asset
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea() // Make it cover the whole screen
                VStack {
                    Image("logo")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom, 50.0)
                        .frame(width: 300.0, height: 300.0)
                        .cornerRadius(20)
                    
                    NavigationLink(destination: mainPage()) {
                        Text("Sign in")
                            .frame(width: 300.0, height: 60.0)
                            .background(Color.white)
                            .cornerRadius(10)
                        
                    }
                    .padding()
                    NavigationLink(destination: mainPage()) {
                        Text("Log in")
                            .frame(width: 300.0, height: 60.0)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                    
                }
            }//zstack
            
        }//navigation
    }//body
    
}//struct



#Preview {
    ContentView()
}
