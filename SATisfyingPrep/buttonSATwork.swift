//
//  buttonSATwork.swift
//  SATisfyingPrep
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct buttonSATwork: View {
    @State private var name = ""
    @State private var textTitle = "What subject would you like to study?"
    var body: some View {
        
        
        NavigationStack{
            ZStack{
                Color("PeriWrinkle")
                    .ignoresSafeArea()
                VStack{
                    Text(textTitle)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding()
                    Spacer()
                    
                    NavigationLink(destination: MathQuestionsView()) {
                        Text("Math")
                            .font(.largeTitle)
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity)
                            .frame(height: 150.0)
                            .background(Color("White"))
                        
                    }
                    //.padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    Spacer()
                    NavigationLink(destination: EnglishQuestionsView()) {
                        Text("English")
                            .font(.largeTitle)
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity)
                            .frame(height: 150.0)
                        
                    }
                    
                    
                    .background(Color("White"))
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    Spacer()
                }
                
                
                .padding(.horizontal, 20.0)
                
                
                
                
                .padding()
            }
            //  background(Color("SkyBlue"))
        }
        
    }
        
    }
    
    
    #Preview {
        buttonSATwork()
    }

