//
// File: Tooltip.swift
// Project: ToolTipExample
// 
// Created by SCOTT CROWDER on 1/8/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import SwiftUI

enum TooltipDirection {
    case top
    case bottom
    case left
    case right
}

struct Tooltip: View {
    
    var items: [TooltipModel]
    var type: TooltipDirection
    
    var body: some View {
        ZStack(alignment: alignment()) {
            HStack(spacing: 8) {
                ForEach(items, id: \.id) { item in
                    ActivityItem(item: item)
                }
            }
            .padding(8)
            .background(Color.red.opacity(0.5))
            .cornerRadius(8)
            
            switch type {
            case .top:
                triangle()
                    .offset(y: -10)
            case .bottom:
                triangle()
                    .rotationEffect(.degrees(180))
                    .offset(y: 10)
            case .left:
                triangle()
                    .rotationEffect(.degrees(-90))
                    .offset(x: -15)
            case .right:
                triangle()
                    .rotationEffect(.degrees(90))
                    .offset(x: 15)
            }
        }
    }
    
    private func ActivityItem(item: TooltipModel) -> some View {
        HStack(spacing: 2) {
            if let icon = item.icon {
                Image(icon)
                    .resizable()
                    .frame(width: 16, height: 16)
            }
            
            Text(item.title)
                .font(.system(size: 14, weight: .semibold))
                .lineLimit(1)
                .foregroundStyle(.white)
        }
    }
    
    private func triangle() -> some View {
        Triangle()
            .fill(Color.red.opacity(0.5))
            .frame(width: 20, height: 10)
    }
    
    private func alignment() -> Alignment {
        switch type {
        case .top:
            return .top
        case .bottom:
            return .bottom
        case .left:
            return .leading
        case .right:
            return .trailing
        }
    }
}

#Preview {
    Tooltip(items: [.init(title: "Hello World")], type: .right)
}
