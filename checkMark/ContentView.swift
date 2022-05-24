//
//  ContentView.swift
//  checkMark
//
//  Created by Paulo Matos on 17/04/22.
//

import SwiftUI

struct ContentView: View {
	
	@State private var isAnimating = false
	
    var body: some View {
		
		ZStack {
			Circle()
				.trim(to: isAnimating ? 1 : 0)
				.stroke(.green, lineWidth: 3)
				.frame(width: 100, height: 100)
				.animation(.easeInOut(duration: 1), value: isAnimating)
			
			Image(systemName: "checkmark")
				.foregroundColor(.green)
				.font(.largeTitle)
				.scaleEffect(isAnimating ? 1.5 : 0)
				.animation(.spring(response: 0.5 , dampingFraction: 0.4).delay(1), value: isAnimating)
		}
		.onAppear{
			isAnimating.toggle()
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
