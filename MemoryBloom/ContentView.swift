//
//  ContentView.swift
//  MemoryBloom
//
//  Created by Firas Abueida on 4/7/26.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("appleUserID") private var appleUserID: String = ""
    @AppStorage("userEmail") private var userEmail: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.crop.circle.badge.checkmark")
                .imageScale(.large)
                .font(.system(size: 48))

            Text("You’re signed in.")
                .font(.title2)

            if !userEmail.isEmpty {
                Text(userEmail)
                    .foregroundColor(.secondary)
            }

            Button("Sign Out") {
                appleUserID = ""
                userEmail = ""
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
