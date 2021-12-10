//
//  RedemptionViewController.swift
//  Hi5
//
//  Created by Rudr Bansal on 10/12/21.
//

import UIKit

class RedemptionViewController: UIViewController {

    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var termsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnActionRedeem(_ sender: Any) {
    }
    
    @IBAction func btnActionBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
