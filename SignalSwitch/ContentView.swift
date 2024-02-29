//
//  ContentView.swift
//  SignalSwitch
//
//  Created by Pavel Gribachev on 29.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var signalRed = SignalView(color: .red)
    @State private var signalYellow = SignalView(color: .yellow)
    @State private var signalGreen = SignalView(color: .green)
    
    @State private var currentLight = CurrentLight.red
        
    private let lightIsON: Double = 1
    private let lightIsOFF = 0.3
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                signalRed
                    .opacity(lightIsOFF)
                    .overlay(Circle()
                        .stroke(lineWidth: 5)
                        .fill(.white))
                
                signalYellow
                    .opacity(lightIsOFF)
                    .overlay(Circle()
                        .stroke(lineWidth: 5)
                        .fill(.white))
                    .padding([.bottom, .top], 10)
                
                signalGreen.opacity(lightIsOFF)
                    .opacity(lightIsOFF)
                    .overlay(Circle()
                        .stroke(lineWidth: 5)
                        .fill(.white))
                
                Spacer()
                
                    Button(action: changeColor) {
                        ButtonView(btnText: "START")
                    }
            }
        }
    }
    
    private func changeColor() {
        
        switch currentLight {
        case .red:
            print("red")
            currentLight = .yellow
        case .yellow:
            print("yellow")
            currentLight = .green
        case .green:
            print("green")
            currentLight = .red
        }
    }
    
    private func changeBTNName() {
    }
    
    
}

#Preview {
    ContentView()
}
