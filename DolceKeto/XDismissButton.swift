//
//  XDismissButton.swift
//  DolceKeto
//
//  Created by AS on 4/2/24.
//

import Foundation
import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30)
                .foregroundStyle(.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundStyle(Color(.black))
        }
    }
}

#Preview {
    XDismissButton()
}
