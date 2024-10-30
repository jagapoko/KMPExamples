//
//  ContentView.swift
//

import SwiftUI

struct ContentView: View {
    
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            // 現在のカウントを表示
            Text("\(count)")
                .font(.title)
                .padding()

            // カウントをインクリメントするボタン
            Button(action: {
                count += 1
            }) {
                Text("+")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground))
    }
}

#Preview {
    ContentView()
}
