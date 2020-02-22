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
    
    var body: some View {
        ZStack {
            VStack {
                Button(action: {self.showCaptureImageView.toggle()}) {
                    Text("Button")
                }
                image?.resizable()
                  .frame(width: 250, height: 200)
                  .clipShape(Circle())
                  .overlay(Circle().stroke(Color.white, lineWidth: 4))
                  .shadow(radius: 10)
            }.sheet(isPresented: $showCaptureImageView) {
                CaptureImageView(isShown: self.$showCaptureImageView, image: self.$image)
            }
        

        }

    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
