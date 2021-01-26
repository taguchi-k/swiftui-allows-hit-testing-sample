//
//  ContentView.swift
//  AllowsHitTestingSample
//
//  Created by kentaro on 2020/07/21.
//  Copyright © 2020 Kentaro Taguchi. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var allowsDoubleTap = true
    @State private var isDark = false

    var body: some View {
        content
            .contentShape(Rectangle())
            .padding()
            .foregroundColor(
                Color(isDark ? .systemBackground : .label)
            )
            .gesture(
                allowsDoubleTap
                    ? TapGesture(count: 2).onEnded { isDark.toggle() }
                    // Tapを無視したい場合は、onEndedで何もしないTapGestureを返す
                    : TapGesture().onEnded({})
            )
            .background(
                Color(isDark ? .label : .systemBackground)
                    .edgesIgnoringSafeArea(.all)
            )
    }

    private var content: some View {
        VStack {
            Toggle(
                "allowsDoubleTapのON / OFF",
                isOn: $allowsDoubleTap
            )

            Divider()

            Text("allowsDoubleTapがONのときは、ダブルタップで背景色が変化します。")
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
