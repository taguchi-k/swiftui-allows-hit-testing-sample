//
//  ContentView.swift
//  AllowsHitTestingSample
//
//  Created by kentaro on 2020/07/21.
//  Copyright © 2020 Kentaro Taguchi. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var allowsHitTesting = true
    @State private var isDark = false

    var body: some View {

        VStack {
            Toggle(
                "allowsHitTestingのON / OFF",
                isOn: $allowsHitTesting
            )

            Divider()

            Text("allowsHitTestingがONのときは、ダブルタップで背景色が変化します。")
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity
                )
        }
        .contentShape(Rectangle())
        .padding()
        .foregroundColor(
            Color(isDark ? .systemBackground : .label)
        )
        .allowsHitTesting(allowsHitTesting)
        .gesture(
            TapGesture(count: 2)
                .onEnded {
                    self.isDark.toggle()
                }
        )
        .background(
            Color(isDark ? .label : .systemBackground)
                .edgesIgnoringSafeArea(.all)
        )
        .disabled(!allowsHitTesting)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
