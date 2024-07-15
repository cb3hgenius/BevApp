//
//  MainView.swift
//  UserAuthBottles
//
//  Created by Charles B on 7/11/24.
//
import SwiftUI

struct ContentVieww: View {
    @StateObject private var viewModel = TestimonialViewModel()
    let testimonialsPerPage = 5

    var body: some View {
        NavigationView {
            VStack {
                TestimonialInputView(viewModel: viewModel)

                if viewModel.testimonials.count > testimonialsPerPage {
                    NavigationLink(destination: TestimonialListView(viewModel: viewModel)) {
                        Text("View More Testimonials")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                } else {
                    TestimonialListView(viewModel: viewModel)
                }
            }
            .navigationTitle("Testimonials")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
