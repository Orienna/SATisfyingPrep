//
//  secondViewFile.swift
//  SATisfyingPrep
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Choose a topic in Reading & Writing!")
                    .padding()
                HStack {
                    NavigationLink(destination: EnglishQuestionsView()) {
                        Text("Grammar")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                }//hstack1
                HStack {
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                    }
                }//hstack2
            }//vstack
        }//navstack
    }//body
}//struct

#Preview {
    ContentView()
}
