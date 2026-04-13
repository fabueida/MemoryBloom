//
//  AppleSignInManager.swift
//  MemoryBloom
//
//  Created by Firas Abueida on 4/7/26.
//

import Foundation
import AuthenticationServices
import Combine

final class AppleSignInManager: ObservableObject {
    @Published var errorMessage: String?

    func handleCompletion(
        _ result: Result<ASAuthorization, Error>,
        onSuccess: @escaping (_ userIdentifier: String, _ email: String?, _ fullName: PersonNameComponents?) -> Void
    ) {
        switch result {
        case .success(let authorization):
            guard let credential = authorization.credential as? ASAuthorizationAppleIDCredential else {
                errorMessage = "Unable to read Apple ID credentials."
                return
            }

            let userIdentifier = credential.user
            let email = credential.email
            let fullName = credential.fullName

            onSuccess(userIdentifier, email, fullName)

        case .failure(let error):
            errorMessage = error.localizedDescription
        }
    }
}
