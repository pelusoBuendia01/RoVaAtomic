//
//  ShapeRectangleCorner.swift
//  
//
//  Created by Francisco Romero on 16/04/23.
//

import SwiftUI

struct ShapeRectangleCorner: Shape {
    
    let size : CGFloat = 20
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move   (to: CGPointMake(rect.minX, rect.minY+size))
        path.addLine(to: CGPointMake(rect.minX, rect.minY))
        path.addLine(to: CGPointMake(rect.minX+size, rect.minY))
        
        path.move   (to: CGPointMake(rect.maxX-size, rect.minY))
        path.addLine(to: CGPointMake(rect.maxX, rect.minY))
        path.addLine(to: CGPointMake(rect.maxX, rect.minY+size))
        
        
        path.move   (to: CGPointMake(rect.maxX-size, rect.maxY))
        path.addLine(to: CGPointMake(rect.maxX, rect.maxY))
        path.addLine(to: CGPointMake(rect.maxX, rect.maxY-size))
        
        path.move   (to: CGPointMake(rect.minX+size, rect.maxY))
        path.addLine(to: CGPointMake(rect.minX, rect.maxY))
        path.addLine(to: CGPointMake(rect.minX, rect.maxY-size))
        return path
    }
}

struct ShapeRectangleCorner_Previews: PreviewProvider {
    static var previews: some View {
        ShapeRectangleCorner()
            .stroke(
                lineWidth: 4
            )
    }
}
