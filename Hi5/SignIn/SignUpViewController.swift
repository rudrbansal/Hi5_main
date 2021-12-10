//
//  SignUpViewController.swift
//  Hi5
//
//  Created by Rudr Bansal on 09/12/21.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnActionSignUp(_ sender: Any) {
        let vc = CommonUtilities.shared.instantiateView(storyboard: Constants.Storyboards.otp.rawValue, controller: Constants.ViewControllers.otpViewController.rawValue)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnActionTnC(_ sender: Any) {
    }
    
}
