//
//  ContentView.swift
//  MiCard
//
//  Created by Alex Johnson on 1/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.60, blue: 0.86)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("alexprofile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 250)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
                Text("Alexander Johnson")
                    .font(Font.custom("MarckScript-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top, -15.0)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(Font.custom("Poppins-Regular", size: 20))
                Divider()
                InfoView(text: "321-890-7230", imageName: "phone.fill")
                InfoView(text: "ajohnson2389@gmail.com", imageName: "envelope.fill")
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

