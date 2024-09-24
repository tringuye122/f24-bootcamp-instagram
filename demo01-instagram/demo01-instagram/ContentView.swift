//
//  ContentView.swift
//  demo01-instagram
//
//  Created by Tri Nguyen on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text("Top Left")
                Spacer()
                Text("Top Right")
            }
            
            Color.blue.aspectRatio(1, contentMode: .fit)
            
            HStack {
                Text("Left")
                Text("Right")
                Spacer()
            }
            Text("Hello, I'm Tri")
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
