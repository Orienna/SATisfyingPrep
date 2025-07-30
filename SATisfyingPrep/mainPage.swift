//
//  mainPage.swift
//  SATisfyingPrep
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI

struct mainPage: View {
    @State var name = ""
    @State var password = ""
    var body: some View {
        ZStack {
            Color("backgroundPurple").ignoresSafeArea()
            VStack {
                Image("SAT2")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.leading, 150.0)
//                Spacer()
//                    .padding()
//                Spacer()
//                    .padding()
                ZStack{
                    Rectangle()
                    .fill(Color.white)
                    .cornerRadius(10)
                    .ignoresSafeArea()
                    ZStack{
                        Text("Sign in ______________________")
                            .font(.title)
                            .padding(.bottom, 570.0)
                        Text("  Username:")
                            .font(.title3)
                            .padding([.bottom, .trailing], 240.0)
                            .padding(.bottom, 150.0)
                        TextField("  Insert username here", text: $name)
                            .frame(height: 30.0)
                            .border(Color.gray, width:1)
                            .padding(.bottom, 300.0)
                            .padding(.horizontal, 22.0)
                        Text("  Password:")
                            .font(.title3)
                            .padding(.trailing, 240.0)
                            .padding(.bottom, 180.0)
                        TextField("  Insert password here", text: $password)
                            .frame(height: 30.0)
                            .border(Color.gray, width:1)
                            .padding(.horizontal, 22.0)
                            .padding(.bottom, 80.0)
                        Button("Submit") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                        .buttonStyle(.borderedProminent)
                        .tint(.purple)
                        .padding(.top, 100.0)
                    }
                }
            }
            .padding()
            
        }

    }
}

#Preview {
    mainPage()
}

