//
//  ContentView.swift
//  Milos Shop
//
//  Created by Gabriel Rojas on 15/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var opacity = 0.0
    @State private var scale: CGFloat = 0.5

    var body: some View {
        ZStack {
            VStack {
                Spacer()

                // Logo con animación
                Image("milos1024")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .opacity(opacity)
                    .scaleEffect(scale)
                    .onAppear {
                        // Animación de aparición y escalado para el logo
                        withAnimation(.easeInOut(duration: 1.0)) {
                            opacity = 1.0
                            scale = 1.2 // Aumenta ligeramente el tamaño primero
                        }
                        withAnimation(.easeInOut(duration: 0.6).delay(1.0)) {
                            scale = 1.0 // Luego vuelve a su tamaño original
                        }
                    }

                // Texto con la misma animación que el logo
                Text("¡Bienvenidos a Milos Shop!")
                    .foregroundColor(.white)
                    .font(.system(size: 28, weight: .bold))
                    .opacity(opacity)
                    .scaleEffect(scale)
                    .onAppear {
                        // Animación del texto
                        withAnimation(.easeInOut(duration: 1.0)) {
                            opacity = 1.0
                            scale = 1.2 // Aumenta ligeramente el tamaño primero
                        }
                        withAnimation(.easeInOut(duration: 0.6).delay(1.0)) {
                            scale = 1.0 // Luego vuelve a su tamaño original
                        }
                    }

                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("AccentColor"))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    ContentView()
}
