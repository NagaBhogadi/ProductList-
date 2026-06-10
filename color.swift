//
//  color.swift
//  ProductList
//
//  Created by Naga Rajitha Bhogadi on 6/2/26.
//

import UIKit

struct color: View {
    @State private var backgroundColor = Color.white

    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            Button("Change to Green") {
                backgroundColor = .green
            }
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}
