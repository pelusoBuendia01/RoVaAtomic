//
//  ShapeRectangle.swift
//  
//
//  Created by Francisco Romero on 16/04/23.
//

import SwiftUI

public struct ShapeRectangle: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move   (to: CGPointMake(rect.minX, rect.minY))
        path.addLine(to: CGPointMake(rect.maxX, rect.minY))
        path.addLine(to: CGPointMake(rect.maxX, rect.maxY))
        path.addLine(to: CGPointMake(rect.minX, rect.maxY))
        return path
    }
}

struct ShapeRectangle_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ShapeRectangle().fill(.orange)
            ShapeRectangle().stroke(.orange,lineWidth: 3)
        }
    }
}
