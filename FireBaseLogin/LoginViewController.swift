//
//  LoginViewController.swift
//  FireBaseLogin
//
//  Created by woojin Choi on 2023/05/11.
//

import UIKit
import GoogleSignIn
import AuthenticationServices
import FirebaseAuth
import CryptoKit
import FirebaseCore


class LoginViewController: UIViewController {
    @IBOutlet weak var emailLoginButton: UIButton!
    @IBOutlet weak var googleLoginButton: GIDSignInButton!
    @IBOutlet weak var appleLoginButton: UIButton!
    
    fileprivate var currentNonce: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //이메일/비밀번호로 계속하기 버튼 UI
        self.emailLoginButton.layer.cornerRadius = 30
        self.emailLoginButton.layer.borderWidth = 1
        self.emailLoginButton.layer.borderColor = UIColor.white.cgColor
        
        //Google로 계속하기 버튼 UI
        self.googleLoginButton.layer.cornerRadius = 30
        self.googleLoginButton.layer.borderWidth = 1
        self.googleLoginButton.layer.borderColor = UIColor.white.cgColor
        
        //Apple로 계속하기 버튼 UI
        self.appleLoginButton.layer.cornerRadius = 30
        self.appleLoginButton.layer.borderWidth = 1
        self.appleLoginButton.layer.borderColor = UIColor.white.cgColor
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //Navigation Bar 가리기
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func googleLoginButtonAction(_ sender: UIButton){
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config

        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { [unowned self] result, error in
            guard error == nil else { return }

          guard let user = result?.user,
            let idToken = user.idToken?.tokenString
          else { return }

          let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                         accessToken: user.accessToken.tokenString)
            Auth.auth().signIn(with: credential) { result, error in

              // At this point, our user is signed in
            }
            self.showMainViewController()
        }
    }
    
    private func showMainViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let mainViewController = storyboard.instantiateViewController(identifier: "MainViewController")
        mainViewController.modalPresentationStyle = .fullScreen
        navigationController?.show(mainViewController, sender: nil)
    }
    
    @IBAction func appleLoginButtonAction(_ sender: UIButton) {
        //
    }
}

extension LoginViewController: ASAuthorizationControllerDelegate {
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential {
            guard let nonce = currentNonce else {
                fatalError("Invalid state: A login callback was received, but no login request was sent.")
            }
            guard let appleIDToken = appleIDCredential.identityToken else {
                print("Unable to fetch identity token")
                return
            }
            guard let idTokenString = String(data: appleIDToken, encoding: .utf8) else {
                print("Unable to serialize token string from data: \(appleIDToken.debugDescription)")
                return
            }
            
            let credential = OAuthProvider.credential(withProviderID: "apple.com", idToken: idTokenString, rawNonce: nonce)
            
            Auth.auth().signIn(with: credential) { authResult, error in
                if let error = error {
                    print ("Error Apple sign in: %@", error)
                    return
                }
                // User is signed in to Firebase with Apple.
                // ...
                ///Main 화면으로 보내기
                let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
                let mainViewController = storyboard.instantiateViewController(identifier: "MainViewController")
                mainViewController.modalPresentationStyle = .fullScreen
                self.navigationController?.show(mainViewController, sender: nil)
            }
        }
    }
}
