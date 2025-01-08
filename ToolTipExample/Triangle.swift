//
// File: Triangle.swift
// Project: ToolTipExample
// 
// Created by SCOTT CROWDER on 1/8/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import SwiftUI

struct Triangle: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let topMiddle = CGPoint(x: rect.midX, y: rect.minY)
        let bottomLeft = CGPoint(x: rect.minX, y: rect.maxY)
        let bottomRight = CGPoint(x: rect.maxX, y: rect.maxY)
        
        path.move(to: bottomLeft)
        path.addLine(to: bottomRight)
        
        path.addArc(
            center: CGPoint(x: topMiddle.x, y: topMiddle.y),
            radius: 0,
            startAngle: .degrees(0),
            endAngle: .degrees(180),
            clockwise: true
        )
        
        path.addLine(to: bottomLeft)
        
        return path
    }
}
