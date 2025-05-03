//
//  CapsuleButtonStyle.swift
//  FireBaseAuthanticationSwiftUI
//
//  Created by ToqSoft on 03/05/25.
//

import SwiftUI

struct CapsuleButtonStyle : ButtonStyle {
    
    var bgColor : Color = .teal
    var textColor : Color = . white
    var hasBorder : Bool = false
    func makeBody(configuration: Configuration) -> some View{
        configuration.label
            .foregroundColor(textColor)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Capsule().fill(bgColor))
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .overlay {
                hasBorder ? Capsule().stroke(.gray,lineWidth: 1) : nil
            }
    }
}
