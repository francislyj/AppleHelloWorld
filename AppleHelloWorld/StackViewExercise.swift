//
//  StackViewExercise.swift
//  AppleHelloWorld
//
//  Created by user on 2022/12/20.
//

import SwiftUI

struct StackViewExercise: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        VStack {
            Text("Instance Developer")
                .fontWeight(.medium)
                .font(.system(size: 40))
                .foregroundColor(.white)
            Text("Get help from experts in 15 minutes")
                .foregroundColor(.white)
            
            HStack(alignment: .bottom, spacing:10) {
                Image("student")
                    .resizable()
                    .scaledToFit()
                
                Image("tutor")
                    .resizable()
                    .scaledToFit()
            }
            .padding(.horizontal, 60)
            
            Text("Need help with coding problem? Register!")
                .foregroundColor(.white)
            
            Spacer()
            
            if verticalSizeClass == .compact {
                HSignUpButtonGroup1()
            }else{
                VSignUpButtonGroup1()
            }
        }
        .background(
            Image("background")
                .resizable()
                .ignoresSafeArea()
        )
        
    }
}

struct StackViewExercise_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StackViewExercise()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
                .previewDisplayName("iPhone 12 Pro")
            
            StackViewExercise()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
                .previewDisplayName("iPhone 12 Pro")
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

struct VSignUpButtonGroup1: View {
    
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("Sign up")
            }
            .padding()
            .frame(width: 200)
            .foregroundColor(.white)
            .background(.indigo)
            .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Log In")
            }
            .padding()
            .frame(width: 200)
            .foregroundColor(.white)
            .background(.gray)
            .cornerRadius(10)
        }
    }
}

struct HSignUpButtonGroup1: View {
    
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Text("Sign up")
            }
            .padding()
            .frame(width: 200)
            .foregroundColor(.white)
            .background(.indigo)
            .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Log In")
            }
            .padding()
            .frame(width: 200)
            .foregroundColor(.white)
            .background(.gray)
            .cornerRadius(10)
        }
    }
}
