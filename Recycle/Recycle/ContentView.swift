//
//  ContentView.swift
//  Recycle
//
//  Created by Kirtan Patel on 2/22/20.
//  Copyright © 2020 Kirtan Patel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var image: Image? = nil
    @State var showCaptureImageView: Bool = false
    @State var show: Bool = false
    
    var exists: Bool {
        if image != nil{
            return true
        }
        else{
            return false
        }
    }
    
    var body: some View {
        
        Group {
            if exists {
                ZStack {
                    Color.green.edgesIgnoringSafeArea(.all)
                    VStack {
                        HStack {
                            Button(action: { self.image = nil}) {
                                Text("Back")
                                    .foregroundColor(Color.white)
                            }
                            .padding([.top, .leading])
                            Spacer()
                        }
                        Spacer()
                        image?.resizable()
                          .frame(width: 250, height: 200)
                          .clipShape(Circle())
                          .overlay(Circle().stroke(Color.white, lineWidth: 4))
                          .shadow(radius: 10)
                    }
                }
            }
            else {
                ZStack {
                    Color.green.edgesIgnoringSafeArea(.all)
                    VStack {
                        Spacer()
                        Text("Want to know if an item is recyclable?")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.top)
                        
                        Spacer()
                        
                        Text("Just take a picture!")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        
                        Spacer()

                        Button(action: {self.showCaptureImageView.toggle()}) {
                             Text("♲")
                               .font(.system(size: 260))
                                .fontWeight(.black)
                               .foregroundColor(Color.white)
                        }
                        .scaleEffect(show ? 1.3:1)
                        .animation(
                            Animation
                            .easeInOut
                                .speed(0.5)
                                .repeatForever(autoreverses: true)
                        )
                        .onAppear(){
                            self.show.toggle()
                        }

                        image?.resizable()
                          .frame(width: 250, height: 200)
                          .clipShape(Circle())
                          .overlay(Circle().stroke(Color.white, lineWidth: 4))
                          .shadow(radius: 10)
                    }.sheet(isPresented: $showCaptureImageView) {
                        CaptureImageView(isShown: self.$showCaptureImageView, image: self.$image).edgesIgnoringSafeArea(.all)
                    }


                }

            }
        }
    
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
