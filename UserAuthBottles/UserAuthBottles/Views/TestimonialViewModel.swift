//
//  SwiftUViewModel.swift
//  UserAuthBottles
//
//  Created by Charles B on 7/11/24.
//

import SwiftUI
import Combine

class TestimonialViewModel: ObservableObject {
    @Published var testimonials: [Testimonial] = []
    @Published var name: String = ""
    @Published var review: String = ""

    func addTestimonial() {
        let newTestimonial = Testimonial(name: name, review: review)
        testimonials.append(newTestimonial)
        name = ""
        review = ""
    }
}
