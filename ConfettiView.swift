//
//  ConfettiView
//  Milos Shop
//
//  Created by Gabriel Rojas on 15/9/24.
//

import SwiftUI

struct ConfettiView: View {
    @State private var confettiYPosition =
0.0
    
    var body: some View {
        ZStack {
            
            
            ForEach(0..<20, id: \.self)
            { _ in
                Rectangle()
                
                    .fill(Color.random())
                    .frame(width: 5, height:20)
                
                    .rotationEffect(.degrees(Double.random(in: 0...360)))
                
                    .position(x:CGFloat(confettiYPosition))
            }
        }
        .onAppear {
            
withAnimation( .linear(duration:
10) .repeatForever(autoreverses: false)) {
                confettiYPosition =
UIScreen.main.bounds.height
            }
                
        }
    }
            
}
    extension Color {
        static func random() -> Color {
                return Color (red:
    Double.random(in: 0...1),
                              green:
    Double.random(in: 0...1),
                              blue:
    Double.random(in: 0...1))
            }
        }

#Preview {
    ConfettiView()
}
