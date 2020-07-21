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

        VStack(spacing: .zero) {

            Toggle(
                "allowsHitTestingのON / OFF",
                isOn: $allowsHitTesting
            )
            .padding()

            Divider()

            Text("allowsHitTestingがONのときは、タップで背景色が変化します。")
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity
                )
                .contentShape(Rectangle())
                .foregroundColor(Color(isDark ? .systemBackground : .label))
                .allowsHitTesting(allowsHitTesting)
                .onTapGesture {
                    self.isDark.toggle()
                }
                .background(
                    Color(isDark ? .label : .systemBackground)
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
