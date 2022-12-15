//
//  ContentView.swift
//  HelloWorld
//
//  Created by yijun.liu on 2022/12/15.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        Button {
            let utterance = AVSpeechUtterance(string: "hello world");
            utterance.voice = AVSpeechSynthesisVoice(language: "en-GB");
            
            let synthesizer = AVSpeechSynthesizer();
            synthesizer.speak(utterance);
            
            
        } label: {
            Text("Hello, world!")
                .fontWeight(.bold)
                .font(.system(.title, design: .rounded))
        }
        .padding()
        .background(.purple)
        .foregroundColor(.white)
        .cornerRadius(20)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
