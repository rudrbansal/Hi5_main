//
//  WalletTVCell.swift
//  Hi5
//
//  Created by Nitin Mittal on 08/12/21.
//

import UIKit

class WalletTVCell: UITableViewCell {

    static var walletTVCellIdentifier = "WalletTVCell"

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var wallImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        wallImageView.layer.cornerRadius = 10
        mainView.layer.cornerRadius = 10
        mainView.layer.borderColor = UIColor.rgb(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        mainView.layer.borderWidth = 0.4
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension WalletTVCell:Reusable{}
