//
//  ContentView.swift
//

import SwiftUI
import shared       // sharedのimportを追加

struct ContentView: View {
    
    @State private var count: Int = 1   // カウントの初期値を1に修正
    
    var body: some View {
        VStack {
            // 現在のカウントを表示
            Text("\(count)")
                .font(.title)
                .padding()

            // カウントをインクリメントするボタン
            Button(action: {
                // Calculatorの呼び出しを追加(Int32, Intのキャストが必要)
                count = Int(Calculator().double(number: Int32(count)))
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
