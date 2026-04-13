//
//  OnboardingView.swift
//  MemoryBloom
//
//  Created by Firas Abueida on 4/7/26.
//

import SwiftUI
import AuthenticationServices

struct OnboardingView: View {
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding: Bool = false
    @AppStorage("appleUserID") private var appleUserID: String = ""
    @AppStorage("userEmail") private var userEmail: String = ""

    @StateObject private var signInManager = AppleSignInManager()

    var body: some View {
        VStack {
            Spacer()

            Text("Welcome to Memory Bloom!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            Text("A gentle space for those going through perimenopause to remember what matters.")
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding(.horizontal)

            Spacer()

            SignInWithAppleButton(
                .signIn,
                onRequest: { request in
                    request.requestedScopes = [.fullName, .email]
                },
                onCompletion: { result in
                    signInManager.handleCompletion(result) { userIdentifier, email, fullName in
                        appleUserID = userIdentifier

                        if let email {
                            userEmail = email
                        }

                        withAnimation {
                            hasSeenOnboarding = true
                        }
                    }
                }
            )
            .signInWithAppleButtonStyle(.black)
            .frame(height: 50)
            .cornerRadius(12)
            .padding(.horizontal)

            if let errorMessage = signInManager.errorMessage {
                Text(errorMessage)
                    .font(.footnote)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                    .padding(.top, 12)
                    .padding(.horizontal)
            }
        }
        .padding()
    }
}

#Preview {
    OnboardingView()
}
