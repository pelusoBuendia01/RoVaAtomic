//
//  ButtonBorder.swift
//  
//
//  Created by Francisco Romero on 16/04/23.
//

import SwiftUI

struct ButtonBorder: View {
    
    @Environment(\.colorScheme) private var colorScheme
    
    let text : String
    let action : () -> Void
    var style : ButtonFillStyle
    var expand : Bool
    
    private var background: Color {
        get {
            switch colorScheme {
            case .light:
                switch style {
                case .primary:
                    return  RoVaColor.primaryContainer.opacity(RoVaColor.opacityLight)
                case .secondary:
                    return  RoVaColor.secondaryContainer.opacity(RoVaColor.opacityLight)
                case .tertiary:
                    return  RoVaColor.tertiaryContainer.opacity(RoVaColor.opacityLight)
                case .error:
                    return  RoVaColor.errorContainer.opacity(RoVaColor.opacityLight)
                case .neutral:
                    return  RoVaColor.neutralContainer.opacity(RoVaColor.opacityLight)
                }
                
            default:
                switch style {
                case .primary:
                    return  RoVaColor.primaryContainer.opacity(RoVaColor.opacityDark)
                case .secondary:
                    return  RoVaColor.secondaryContainer.opacity(RoVaColor.opacityDark)
                case .tertiary:
                    return  RoVaColor.tertiaryContainer.opacity(RoVaColor.opacityDark)
                case .error:
                    return  RoVaColor.errorContainer.opacity(RoVaColor.opacityDark)
                case .neutral:
                    return  RoVaColor.neutralContainer.opacity(RoVaColor.opacityDark)
                }
            }
        }
    }
    
    private var stroke: Color {
        get {
            switch colorScheme {
            case .light:
                switch style {
                case .primary:
                    return  RoVaColor.primaryContainer
                case .secondary:
                    return  RoVaColor.secondaryContainer
                case .tertiary:
                    return  RoVaColor.tertiaryContainer
                case .error:
                    return  RoVaColor.errorContainer
                case .neutral:
                    return  RoVaColor.neutralContainer
                }
                
            default:
                switch style {
                case .primary:
                    return  RoVaColor.primaryContainer
                case .secondary:
                    return  RoVaColor.secondaryContainer
                case .tertiary:
                    return  RoVaColor.tertiaryContainer
                case .error:
                    return  RoVaColor.errorContainer
                case .neutral:
                    return  RoVaColor.neutralContainer
                }
            }
        }
    }
        
    private var foreground: Color {
        get {
            switch colorScheme {
            case .light:
                switch style {
                case .primary:
                    return  RoVaColor.onPrimaryContainer
                case .secondary:
                    return  RoVaColor.onSecondaryContainer
                case .tertiary:
                    return  RoVaColor.onTertiaryContainer
                case .error:
                    return  RoVaColor.onErrorContainer
                case .neutral:
                    return  RoVaColor.onNeutralContainer
                }
                
            default:
                switch style {
                case .primary:
                    return  RoVaColor.primaryContainer
                case .secondary:
                    return  RoVaColor.secondaryContainer
                case .tertiary:
                    return  RoVaColor.tertiaryContainer
                case .error:
                    return  RoVaColor.errorContainer
                case .neutral:
                    return  RoVaColor.neutralContainer
                }
            }
        }
    }
        
    public var body: some View {
        
        Button(
            action: action
        ) {
            HStack {
                if expand {
                    Spacer()
                }
                HStack {
                    Text(
                        text.uppercased()
                    )
                    .foregroundColor(
                        foreground
                    )
                }
                if expand {
                    Spacer()
                }
            }
        }
        .buttonStyle(.plain)
        .padding(.horizontal,RoVaDimention.paddingButtonH)
        .padding(.vertical,RoVaDimention.paddingButtonV)
        .background(
            ZStack {
                ShapeChamferedRectangle()
                    .stroke(
                        stroke,
                        lineWidth: colorScheme == .light ? RoVaDimention.lineWidthButtonBorder : RoVaDimention.lineWidthButton
                    )
            }
        )
        
    }
    
    public init(
        _ text: String,
        style: ButtonFillStyle = .primary,
        expand: Bool = false,
        action: @escaping () -> Void) {
        self.text = text
        self.style = style
        self.expand = expand
        self.action = action
    }
}

struct ButtonBorder_Preview: PreviewProvider {
    static var previews: some View {
        VStack (spacing: 32){
            VStack (spacing: 16) {
                ButtonBorder("Button", style: .primary) {}
                ButtonBorder("Button", style: .secondary) {}
                ButtonBorder("Button", style: .tertiary) {}
                ButtonBorder("Button", style: .error) {}
                ButtonBorder("Button", style: .neutral) {}
            }
            VStack (spacing: 16) {
                ButtonBorder("Button", style: .primary,expand: true) {}
                ButtonBorder("Button", style: .secondary,expand: true) {}
                ButtonBorder("Button", style: .tertiary,expand: true) {}
                ButtonBorder("Button", style: .error,expand: true) {}
                ButtonBorder("Button", style: .neutral,expand: true) {}
            }
        }
        .padding(.horizontal,16)
        .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
        .previewDisplayName("iPhone 14")
    }
}




