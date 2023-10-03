//
//  ContentView.swift
//  swiftui-marathon-2-multiline-text
//
//  Created by Vladislav Shakhray on 03/10/2023.
//

import SwiftUI

struct Box: View {
    var width: CGFloat

    var message: AttributedString {
        let style = NSMutableParagraphStyle()
        style.lineBreakStrategy = .pushOut
        style.lineBreakMode = .byCharWrapping
        var result = AttributedString("Марафон по SwiftUI", attributes: .init([.paragraphStyle : style]))
        result.foregroundColor = .white
        result.backgroundColor = .blue

        return result
    }

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\u{200B}\u{200B}Марафон\u{200B}\u{200B} \u{200B}\u{200B}\u{200B}\u{200B}**по\u{200B}\u{200B}\u{200B}\u{200B}\u{200B} \u{200B}\u{200B}\u{200B}\u{200B}SwiftUI**\u{200B}\u{200B}\u{200B}")
                + Text("Отцовский пинок")
                    .font(.title)
                    .foregroundStyle(.blue)
            }
            Spacer()
        }
        .frame(height: 200.0)
        .frame(maxWidth: width)
        .overlay(Rectangle().stroke(.red))
    }
}
struct ContentView: View {
    @State private var width: Float = 300

    var body: some View {
        VStack {
            Box(width: CGFloat(width))
            Slider(value: $width, in: 100...300, step: 1)
        }
    }
}

#Preview {
    ContentView()
}
