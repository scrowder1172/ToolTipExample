//
// File: ContentView.swift
// Project: ToolTipExample
// 
// Created by SCOTT CROWDER on 1/8/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
//
// found at: https://abbasgujjar2525.medium.com/creating-a-custom-tooltip-component-in-swiftui-8d348af407a4


import SwiftUI

struct ContentView: View {
    
    var list: [TooltipModel] = [
        TooltipModel(title: "Hello")
    ]
    
    var body: some View {
        VStack(spacing: 50) {
            HStack(spacing: 24) {
                Tooltip(items: list, type: .bottom)
                Tooltip(items: list, type: .top)
                Tooltip(items: list, type: .left)
                Tooltip(items: list, type: .right)
            }
        }
    }
}

#Preview {
    ContentView()
}
