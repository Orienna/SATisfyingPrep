//
//  buttonSATwork.swift
//  SATisfyingPrep
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct buttonSATwork: View {
    @AppStorage("mathProgress") var mathProgress: Double = 0.0
    @AppStorage("rwProgress") var rwProgress: Double = 0.0
    
    @AppStorage("rwUnlockedString") private var rwUnlockedString = "true,false,false,false"
    
    
    //    @AppStorage("mathUnlocked") var mathUnlocked: [Bool] = [true, false, false, false]
    //    @AppStorage("rwUnlocked") var rwUnlocked: [Bool] = [true, false, false, false]
    
    @State private var name = ""
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
                            Spacer()
                            Text("What subject would you")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("like to study?")
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer()
                            
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
                                                .fontWeight(.medium)
                                                .foregroundColor(Color.white)
                                                .padding(.leading, 6.0)
                                                .frame(width: 100.0, height: 60.0)
                                                .background(Color.periWrinkle)
                                                .cornerRadius(10)
                                            
                                        }
                                        .padding(.leading, 180.0)
                                        .padding(.bottom, -57.0)
                                        .padding(.leading, 25.0)
                                        
                                        VStack(alignment: .leading){
                                            Text("Mathematics:")
                                                .font(.title2)
                                                .fontWeight(.semibold)
                                                .padding(.trailing, 0.0)
                                            Text("Stage 1: Algebra")
                                                .font(.title3)
                                                .fontWeight(.light)
                                            Text("Stage 2: Data analysis🔒")
                                                .font(.title3)
                                                .fontWeight(.light)
                                            Text("Stage 3: Advanced math🔒")
                                                .font(.title3)
                                                .fontWeight(.light)
                                            Text("Stage 4: Trigonometry🔒")
                                                .font(.title3)
                                                .fontWeight(.light)
                                        }
                                        
                                        
                                        
                                        
                                    }
                                    .padding(.bottom)//VStack
                                }//HStack
                                
                            }//ZStack
                            ProgressView(value: mathProgress)
                                .frame(width: 300)
                            Text("\(Int(mathProgress * 100))% Complete.")
                                .font(.footnote)
                                .padding(.bottom)
                            Spacer()
                            
                            ZStack{
                                Rectangle()
                                    .fill(Color.lightPink)
                                    .frame(width: 330.0, height: 190.0)
                                    .cornerRadius(10)
                                
                                
                                HStack{
                                    VStack(alignment: .leading){
                                        NavigationLink(destination: EnglishQuestionsView()){
                                            Text("Go to page!")
                                                .font(.title2)
                                                .fontWeight(.medium)
                                                .foregroundColor(Color.white)
                                            
                                                .padding(.leading, 6.0)
                                                .frame(width: 100.0, height: 60.0)
                                                .background(Color.brightPink)
                                                .cornerRadius(10)
                                        }
                                        .padding(.leading, 190.0)
                                        .padding(.bottom, -57.0)
                                        .padding(.leading, 25.0)
                                        
                                        VStack(alignment: .leading){
                                            Text("Reading & Writing:")
                                                .font(.title2)
                                                .fontWeight(.semibold)
                                                .padding(.trailing, 0.0)
                                            Text("Stage 1: Grammar")
                                                .font(.title3)
                                                .fontWeight(.light)
                                            Text("Stage 2: Information & Ideas🔒")
                                                .font(.title3)
                                                .fontWeight(.light)
                                            Text("Stage 3: Craft & Structure🔒")
                                                .font(.title3)
                                                .fontWeight(.light)
                                            Text("Stage 4: Conventions & ")
                                                .font(.title3)
                                                .fontWeight(.light)
                                            Text("                 Expressions🔒")
                                                .font(.title3)
                                                .fontWeight(.light)
                                        }
                                        .padding(.leading, 5.0)
                                        
                                        
                                        
                                        
                                    }
                                    .padding(.bottom)//VStack
                                    
                                    
                                }//HStack
                                
                                
                            }//ZStack
                            VStack{
                                ProgressView(value: rwProgress)
                                    .frame(width: 300)
                                if rwProgress == 1 {
                                    NavigationLink(destination: EnglishQuestionsView()){
                                        Text("Go to page!")
                                            .font(.title2)
                                            .fontWeight(.medium)
                                            .foregroundColor(Color.white)
                                    }
                                    Text("\(Int(rwProgress * 100))% Complete.")
                                        .font(.caption)
                                        .padding(.bottom)
                                    
                                    
                                }
                            }
                            Text("\(Int(rwProgress * 100))% Complete.")
                                .font(.caption)
                                .padding(.bottom)
                            .padding(.bottom, 100.0)
                            //VStack
                            
                            
                            
                        }//ZStack
                        Spacer()
                    }//VStack
                    .padding()
                    
                }//ZStack
                
                
            }
            
        }//varBody
    }//struct
}
    
    
    #Preview {
        buttonSATwork()
    }

