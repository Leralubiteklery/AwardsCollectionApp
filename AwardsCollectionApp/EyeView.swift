//
//  HeartView.swift
//  AwardsCollectionApp
//
//  Created by Lera Savchenko on 16.10.22.
//

import SwiftUI

struct EyeView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size - nearLine
            let doubleNearLine = nearLine * 2
            let boarderLine = farLine + nearLine * 2
            let middlePlusLine = middle + nearLine
            let middleMinusLine = middle - nearLine
            
            Path { path in
                path.move(to: CGPoint(x: nearLine, y: middle))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: middle),
                    control: CGPoint(x: middle, y: farLine)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: middle),
                    control: CGPoint(x: middle, y: nearLine)
                )
            }
            .stroke(lineWidth: 2)
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: middle, y: middle),
                    radius: doubleNearLine,
                    startAngle: .degrees(0),
                    endAngle: .degrees(360),
                    clockwise: false
                )
            }
            .fill(
                RadialGradient(
                    colors: [.blue, .green,],
                    center: .center,
                    startRadius: size * 0.09,
                    endRadius: size * 0.3
                )
            )
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: middle, y: middle),
                    radius: nearLine,
                    startAngle: .degrees(0),
                    endAngle: .degrees(360),
                    clockwise: false
                )
            }
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: farLine))
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: boarderLine),
                    control: CGPoint(x: middleMinusLine, y: boarderLine)
                    )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: farLine),
                    control: CGPoint(x: middlePlusLine, y: boarderLine)
                )
            }
            
        }
        
    }
}

struct HeartView_Previews: PreviewProvider {
    static var previews: some View {
        EyeView()
            .frame(width: 200, height: 200)
    }
}
