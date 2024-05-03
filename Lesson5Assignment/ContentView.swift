//
//  ContentView.swift
//  Lesson5Assignment
//
//  Created by Sandra Gomez on 5/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.edgesIgnoringSafeArea(.all)
                VStack (spacing: 25) {
                    Text ("This is the first / initial View")
                        .foregroundColor(.black)
                    NavigationLink {
                        SecondView()
                    } label: {
                        Text("Tap here to navigate to second view")
                            .foregroundColor(.black)
                    }
                }
                .navigationTitle("First View")
            }
        }
    }
}
    struct SecondView: View {
        var body: some View {
            ZStack {
                Color.red.edgesIgnoringSafeArea(.all)
                VStack (spacing: 25) {
                    Text ("This is the second View")
                    NavigationLink {
                        ThirdView()
                    } label: {
                        Text("Tap here to navigate to third view")
                            .foregroundColor(.black)
                    }.navigationTitle("Second View")
                }
            }
        }
    }
    struct ThirdView: View {
        var body: some View {
            ZStack {
                Color.yellow.edgesIgnoringSafeArea(.all)
                VStack (spacing: 25) {
                    Text("This is the third View")
                    NavigationLink {
                        LastView()
                    } label: {
                        Text("Tap here to navigate to last view")
                            .foregroundColor(.black)
                    }.navigationTitle("Third view")
                }
            }
        }
    }
    struct LastView: View {
        var body: some View {
            ZStack {
                    Color.green.edgesIgnoringSafeArea(.all)
                VStack {
                    Text("This is the last view")
                        .foregroundColor(.black)
                }.navigationTitle("Last View")
            }
        }
    }

#Preview {
    ContentView()
}
