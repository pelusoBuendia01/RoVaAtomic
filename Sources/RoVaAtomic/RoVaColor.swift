//
//  RoVaColor.swift
//  
//
//  Created by Francisco Romero on 16/04/23.
//

import SwiftUI

struct RoVaColor {
    
    static let opacityLight : CGFloat   = 0.7
    static let opacityDark  : CGFloat   = 0.5
    
    static let background               = Color(hex: "#202023FF")!
    
    static let primary                  = Color(hex: "#3BDAD7FF")!
    static let primaryContainer         = Color(hex: "#3BDAD7FF")!
    static let secondary                = Color(hex: "#B9A2DAFF")!
    static let secondaryContainer       = Color(hex: "#B9A2DAFF")!
    static let tertiary                 = Color(hex: "#EDC9A9FF")!
    static let tertiaryContainer        = Color(hex: "#EDC9A9FF")!
    static let error                    = Color(hex: "#DA6C6DFF")!
    static let errorContainer           = Color(hex: "#DA6C6DFF")!
    static let neutral                  = Color(hex: "#333333FF")!
    static let neutralContainer         = Color(hex: "#777777FF")!
    
    static let onPrimary                = Color(hex: "#000000FF")!
    static let onPrimaryContainer       = Color(hex: "#000000FF")!
    static let onSecondary              = Color(hex: "#000000FF")!
    static let onSecondaryContainer     = Color(hex: "#000000FF")!
    static let onTertiary               = Color(hex: "#000000FF")!
    static let onTertiaryContainer      = Color(hex: "#000000FF")!
    static let onError                  = Color(hex: "#000000FF")!
    static let onErrorContainer         = Color(hex: "#000000FF")!
    static let onNeutral                = Color(hex: "#666666FF")!
    static let onNeutralContainer       = Color(hex: "#333333FF")!
}

// MARK: Color extension
fileprivate extension Color {
    init?(hex: String) {
        let r, g, b: CGFloat
        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])
            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    self.init(red: r, green: g, blue: b)
                    return
                }
            }
        }
        return nil
    }
}

struct RoVaColor_Preview: PreviewProvider {
    static var previews: some View {
        VStack {
            HStack {
                
                ZStack {
                    Rectangle()
                        .fill(RoVaColor.primary)
                        .frame(width: 20,height: 20)
                    Text("01").foregroundColor(RoVaColor.onPrimary)
                }
                
                ZStack {
                    Rectangle()
                        .fill(RoVaColor.secondary)
                        .frame(width: 20,height: 20)
                    Text("01").foregroundColor(RoVaColor.onSecondary)
                }
                
                ZStack {
                    Rectangle()
                        .fill(RoVaColor.tertiary)
                        .frame(width: 20,height: 20)
                    Text("01").foregroundColor(RoVaColor.onTertiary)
                }
                
                ZStack {
                    Rectangle()
                        .fill(RoVaColor.error)
                        .frame(width: 20,height: 20)
                    Text("01").foregroundColor(RoVaColor.onError)
                }
                
                ZStack {
                    Rectangle()
                        .fill(RoVaColor.neutral)
                        .frame(width: 20,height: 20)
                    Text("01").foregroundColor(RoVaColor.onNeutral)
                }
            }
            HStack {
                
                ZStack {
                    Rectangle()
                        .fill(RoVaColor.primaryContainer)
                        .frame(width: 20,height: 20)
                    Text("01").foregroundColor(RoVaColor.onPrimaryContainer)
                }
                
                ZStack {
                    Rectangle()
                        .fill(RoVaColor.secondaryContainer)
                        .frame(width: 20,height: 20)
                    Text("01").foregroundColor(RoVaColor.onSecondaryContainer)
                }
                
                ZStack {
                    Rectangle()
                        .fill(RoVaColor.tertiaryContainer)
                        .frame(width: 20,height: 20)
                    Text("01").foregroundColor(RoVaColor.onTertiaryContainer)
                }
                
                ZStack {
                    Rectangle()
                        .fill(RoVaColor.errorContainer)
                        .frame(width: 20,height: 20)
                    Text("01").foregroundColor(RoVaColor.onErrorContainer)
                }
                
                ZStack {
                    Rectangle()
                        .fill(RoVaColor.neutralContainer)
                        .frame(width: 20,height: 20)
                    Text("01").foregroundColor(RoVaColor.onNeutralContainer)
                }
            }
        }
        .background(RoVaColor.background)
    }
}
