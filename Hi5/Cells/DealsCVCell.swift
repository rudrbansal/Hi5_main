//
//  DealsCVCell.swift
//  Hi5
//
//  Created by Nitin Mittal on 07/12/21.
//

import UIKit

class DealsCVCell: UICollectionViewCell {
    
    static let DealsCVCellIdentifier             =      "DealsCVCell"
    
    @IBOutlet weak var mainView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mainView.layer.cornerRadius = 10
    }

}

extension DealsCVCell: Reusable {}
