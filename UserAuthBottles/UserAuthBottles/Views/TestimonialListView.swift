//
//  TestimonialListView.swift
//  UserAuthBottles
//
//  Created by Charles B on 7/11/24.
//

import SwiftUI

struct TestimonialListView: View {
    @ObservedObject var viewModel: TestimonialViewModel

    var body: some View {
        List(viewModel.testimonials) { testimonial in
            VStack(alignment: .leading) {
                Text(testimonial.name)
                    .font(.headline)
                Text(testimonial.review)
                    .font(.body)
            }
            .padding()
        }
    }
}
