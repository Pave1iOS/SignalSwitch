//
//  ContentView.swift
//  SignalSwitch
//
//  Created by Pavel Gribachev on 29.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: @State properties
    @State private var redLight = SignalLight.isOFF
    @State private var yellowLight = SignalLight.isOFF
    @State private var greenLight = SignalLight.isOFF
    
    @State private var currentLight = CurrentLight.red

    @State private var buttonText = ButtonText.start
        
    // MARK: Body
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                SignalView(color: .red)
                    .opacity(redLight.rawValue)
                    .overlay(Circle()
                        .stroke(lineWidth: 5)
                        .fill(.white))
                
                SignalView(color: .yellow)
                    .opacity(yellowLight.rawValue)
                    .overlay(Circle()
                        .stroke(lineWidth: 5)
                        .fill(.white))
                    .padding([.bottom, .top], 10)
                
                SignalView(color: .green)
                    .opacity(greenLight.rawValue)
                    .overlay(Circle()
                        .stroke(lineWidth: 5)
                        .fill(.white))
                
                Spacer()
                
                    Button(action: changeSignalColor) {
                        ButtonView(text: buttonText.rawValue)
                    }
                    .padding(.bottom, 30)
            }
        }
    }
}

// MARK: Functions
extension ContentView {
    private func changeSignalColor() {
        changeButtonText()
        
        switch currentLight {
        case .red:
            greenLight = .isOFF
            redLight = .isON
            
            currentLight = .yellow
        case .yellow:
            redLight = .isOFF
            yellowLight = .isON
            
            currentLight = .green
        case .green:
            yellowLight = .isOFF
            greenLight = .isON
            
            currentLight = .red
        }
    }
    
    private func changeButtonText() {
        if buttonText == .start {
            buttonText = .next
        }
    }
}

// MARK: Enums
extension ContentView {
    
    enum ButtonText: String {
        case start = "START"
        case next = "NEXT"
    }
    
    enum SignalLight: Double {
        case isON = 1
        case isOFF = 0.3
    }
    
    enum CurrentLight {
        case red, yellow, green
    }
}

#Preview {
    ContentView()
}
