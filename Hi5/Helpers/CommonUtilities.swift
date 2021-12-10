//
//  CommonUtilities.swift
//  Hi5
//
//  Created by Rudr Bansal on 09/12/21.
//

import Foundation
import UIKit

class CommonUtilities {
    static let shared = CommonUtilities()
    
    func instantiateView(storyboard: String, controller: String) -> UIViewController {
        let storyBoard : UIStoryboard = UIStoryboard(name: storyboard, bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: controller)
        return vc
    }
}
