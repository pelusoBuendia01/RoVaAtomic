//
//  ShapechamferedRectangle.swift
//  
//
//  Created by Francisco Romero on 16/04/23.
//

import SwiftUI

public struct ShapeChamferedRectangle: Shape {
    
    var topLeft : CGFloat = 4
    var topRight : CGFloat = 4
    var bottonRight : CGFloat = 4
    var bottonLeft : CGFloat = 4
    
    var topLeftSize : CGFloat = 4
    var topRightSize : CGFloat = 4
    var bottonRightSize : CGFloat = 4
    var bottonLeftSize : CGFloat = 4
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move   (to: CGPointMake(rect.minX, rect.minY+topLeft))
        path.addLine(to: CGPointMake(rect.minX+topLeft, rect.minY))
        path.addLine(to: CGPointMake(rect.maxX-topRight, rect.minY))
        path.addLine(to: CGPointMake(rect.maxX, rect.minY+topRight))
        path.addLine(to: CGPointMake(rect.maxX, rect.maxY-bottonRight))
        path.addLine(to: CGPointMake(rect.maxX-bottonRight, rect.maxY))
        path.addLine(to: CGPointMake(rect.minX+bottonLeft, rect.maxY))
        path.addLine(to: CGPointMake(rect.minX, rect.maxY-bottonLeft))
        path.addLine(to: CGPointMake(rect.minX, rect.minY+topLeft))
        return path
    }
}


struct ShapechamferedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ShapeChamferedRectangle().fill(RoVaColor.primaryContainer)
            ShapeChamferedRectangle().stroke(RoVaColor.primary,lineWidth: 4)
        }
        .background(.black)
    }
}
