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
        NavigationStack {
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
                        VStack{
                            
                            Text("What subject would you")
                                .font(.title2)
                            Text("like to study?")
                                .font(.title2)
                                
                            
                            ZStack{
                                Rectangle()
                                    .fill(Color.lightPink)
                                    .frame(width: 330.0, height: 160.0)
                                    .cornerRadius(10)
                                
                                
                                HStack{
                                    VStack(alignment: .leading){
                                        NavigationLink(destination: MathQuestionsView()){
                                            Text("Go to page!")
                                                .font(.title2)
                                                .foregroundColor(Color.black)
                                                .padding(.leading)
                                                .frame(width: 100.0, height: 60.0)
                                                .background(Color.lightBlue)
                                                .cornerRadius(10)
                                        }
                                        .padding(.leading, 180.0)
                                        .padding(.bottom, -57.0)
                                        
                                        VStack(alignment: .leading){
                                            Text("Mathematics:")
                                                .padding(.trailing, 0.0)
                                            Text("Stage 1: Algebra")
                                            Text("Stage 2: Data analysis🔒")
                                            Text("Stage 3: Advanced math🔒")
                                            Text("Stage 4: Trigonometry🔒")
                                        }
                                        
                                        
                                        
                                        
                                    }
                                    .padding(.bottom)//VStack
                                }//HStack
                                
                                
                            }//ZStack
                            .padding(.bottom)
                            
                            ZStack{
                                Rectangle()
                                    .fill(Color.lightPink)
                                    .frame(width: 330.0, height: 160.0)
                                    .cornerRadius(10)
                                
                                
                                HStack{
                                    VStack(alignment: .leading){
                                        NavigationLink(destination: EnglishQuestionsView()){
                                            Text("Go to page!")
                                                .font(.title2)
                                                .foregroundColor(Color.black)
                                                
                                                .padding(.leading)
                                                .frame(width: 100.0, height: 60.0)
                                                .background(Color.lightBlue)
                                                .cornerRadius(10)
                                        }
                                        .padding(.leading, 190.0)
                                        .padding(.bottom, -57.0)
                                        
                                        VStack(alignment: .leading){
                                            Text("Reading & Writing:")
                                                .padding(.trailing, 0.0)
                                            Text("Stage 1: Grammar")
                                            Text("Stage 2: Information & Ideas🔒")
                                            Text("Stage 3: Craft & Structure🔒")
                                            Text("Stage 4: Conventions & Expressions🔒")
                                        }
                                        .padding(.leading, 5.0)
                                        
                                        
                                        
                                        
                                    }
                                    .padding(.bottom)//VStack
                                }//HStack
                                
                                
                            }//ZStack
                            .padding(.bottom)
                            
                            
                        }//VStack
                        
                    }//ZStack
                    Spacer()
                }//VStack
                .padding()
                
            }//ZStack
            
        }
        
    }//varBody
}//struct
    
    
    #Preview {
        buttonSATwork()
    }

