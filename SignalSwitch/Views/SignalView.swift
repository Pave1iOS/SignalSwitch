//
//  SignalView.swift
//  SignalSwitch
//
//  Created by Pavel Gribachev on 29.02.2024.
//

import SwiftUI

struct SignalView: View {
    let color: Color

    var body: some View {
        Circle()
            .foregroundStyle(color)
            .frame(width: 150, height: 150)
    }
}

#Preview {
    SignalView(color: .red)
}
