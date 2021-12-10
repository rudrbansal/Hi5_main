//
//  OnboardingLastViewController.swift
//  Hi5
//
//  Created by Rudr Bansal on 09/12/21.
//

import UIKit

class OnboardingLastViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnActionLogin(_ sender: UIButton) {
        
    }
    
    @IBAction func btnActionSignUp(_ sender: UIButton) {
        let vc = CommonUtilities.shared.instantiateView(storyboard: Constants.Storyboards.signIn.rawValue, controller: Constants.ViewControllers.signUpViewController.rawValue)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnActionSkip(_ sender: UIButton) {
        let vc = CommonUtilities.shared.instantiateView(storyboard: Constants.Storyboards.main.rawValue, controller: Constants.ViewControllers.homeTabViewController.rawValue)
        navigationController?.pushViewController(vc, animated: true)
    }
}
