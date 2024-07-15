//
//  TestimonialInputView.swift
//  UserAuthBottles
//
//  Created by Charles B on 7/11/24.
//

import SwiftUI

struct TestimonialInputView: View {
    @ObservedObject var viewModel: TestimonialViewModel

    var body: some View {
        VStack {
            TextField("Name", text: $viewModel.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("Review", text: $viewModel.review)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                viewModel.addTestimonial()
            }) {
                Text("Submit Review")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}
