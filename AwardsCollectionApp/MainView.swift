//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Lera Savchenko on 12.10.22.
//

import SwiftUI

struct MainView: View {
    
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: { awardIsShowing.toggle() }) {
                HStack {
                    Text(awardIsShowing ? "Hide Award" : "Show award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(awardIsShowing ? 2 : 1)
                        .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                        .animation(.default, value: awardIsShowing)
                }
            }
            
            Spacer()
            GradientRectangles()
                .frame(width: 250, height: 250)
            Spacer()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
