//
//  PathView.swift
//  AwardsCollectionApp
//
//  Created by Lera Savchenko on 12.10.22.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width,height)
            let middle = size / 2
            let nearline = size * 0.1
            let farLine = size - nearline
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearline, y: nearline))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearline, y: farLine))
                path.addLine(to: CGPoint(x: middle - nearline, y: nearline))
                
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearline))
                path.addLine(to: CGPoint(x: middle, y: farLine))
            }
            .stroke(
                Color.white,
                style: StrokeStyle(
                    lineWidth: 3,
                    dash: [size / nearline]
                )
            )
            
            Image(systemName: "car.fill")
                .resizable()
                .foregroundColor(.white)
                .scaleEffect(nearline / 100)
                .offset(x: -size / 7.25)
            
        }
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
            .frame(width: 200, height: 200)
    }
}
