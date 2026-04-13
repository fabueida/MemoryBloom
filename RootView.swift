//
//  RootView.swift
//  MemoryBloom
//
//  Created by Firas Abueida on 4/7/26.
//

import SwiftUI

struct RootView: View {
    @AppStorage("appleUserID") private var appleUserID: String = ""

    var body: some View {
        if appleUserID.isEmpty {
            OnboardingView()
        } else {
            ContentView()
        }
    }
}

#Preview {
    RootView()
}
