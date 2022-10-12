//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by Lera Savchenko on 12.10.22.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    GradientRectangles()
                        .frame(width: 200, height: 200)
                    PathView()
                        .frame(width: 200, height: 200)
                    CurvesView()
                        .frame(width: 200, height: 200)
                }
            }
        }
        .navigationTitle("Awards")
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
