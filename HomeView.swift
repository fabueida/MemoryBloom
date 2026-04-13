//
//  ContentView.swift
//  MemoryBloom
//
//  Created by June Thomas on 4/6/26.
//

import SwiftUI

struct HomeView: View {
    @State private var userInput: String = "Sign in with Apple for Login"
    
    var body: some View {
        
        //            Image(systemName: "square")
        //MARK: Remember, 'systemName' is for SF Symbols!
        //  Image(systemName: "JapaneseCherryBlossom")
        VStack {
            
//Image(systemName: "apple.logo")
            Image("Image1")
                .resizable()
                .scaledToFit()
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding(.trailing, 100)
            
            Text("Welcome To Memory Bloom")
                .padding()
            Text("A gentle space for those going through Perimenopause to remember what matters")
      
            
            
            Image("Image2")
                .resizable()
                .scaledToFit()
                .imageScale(.large)
                .foregroundStyle(.tint)
                        //                    .padding(.bottom, 200)
            //                    .padding(.top, 100)
            //          to the left          .padding(.leading, 100)
            //         to the right             .padding(.trailing, 100)
            
            
         VStack {
                NavigationLink {
              //      Text("Destination View")
                } label: {
            //        Text("Go to Next Screen")
                }

             ZStack {
                 RoundedRectangle(cornerRadius: 40)
                     .foregroundStyle(.purple)
                 HStack{
                     Image("MicImage")
                         .resizable()
                         .scaledToFit()
                         .cornerRadius(8)
                         .frame(width:100, height: 40)
                     VStack {
                         Text("Capture:")
                         Text("Speak your thoughts & we'll ")
                         Text("Remember")
                     }
                     .foregroundStyle(.white)
                     .bold()
                     .padding(.trailing, 90)
                 }
             }
             ZStack {
                 RoundedRectangle(cornerRadius: 40)
                     .foregroundStyle(.purple)
                 HStack{
                     Image("Image")
                         .resizable()
                         .scaledToFit()
                         .cornerRadius(8)
                         .frame(width:100, height: 40)
                     VStack{
                         Text( "Today's Bloom :")
                         Text ("See what Mattters")
                         Text("& Complete it with ease")
                     }
                 }
                 .foregroundStyle(.white)
                 .bold()
                 .padding(.trailing, 90)
             }
             ZStack {
                 RoundedRectangle(cornerRadius: 40)
                     .foregroundStyle(.purple)
                 HStack {
                     Image ("Woman")
                         .resizable()
                         .scaledToFit()
                         .cornerRadius(8)
                         .frame(width:100, height: 40)
                         
                     VStack{
                         Text("Top 5 Symtons")
                     }
                     }
                 .foregroundStyle(.white)
                 .bold()
                 .padding(.trailing, 210)
                 }
             }
                 
         }
         
         
             Button {
                 // action goes here
             } label: {
                
                 VStack{
          //           NavigationLink {
//Text("Destination View")
           //          } label: {
//Text("Go to Next Screen")
                //     }
      
                     }
                     
                   
                        }
                 
                 //           NavigationLink {
//Text("Destination View")
                  //          } label: {
//Text("Go to Next Screen")
                       //     }
             
                            }
                            
                        }
                   
                
           
        
    


#Preview {
    HomeView()
}


