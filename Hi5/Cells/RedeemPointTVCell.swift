//
//  RedeemPointTVCell.swift
//  Hi5
//
//  Created by Nitin Mittal on 08/12/21.
//

import UIKit

class RedeemPointTVCell: UITableViewCell {
    static var RedeemPointTVCellIdentifier = "RedeemPointTVCell"

    @IBOutlet weak var redeemBtn: UIButton!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var redeemImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        redeemBtn.layer.cornerRadius = 15
        redeemImageView.layer.cornerRadius = 10
        mainView.layer.cornerRadius = 10
        mainView.layer.borderColor = UIColor.rgb(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        mainView.layer.borderWidth = 0.4
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension RedeemPointTVCell:Reusable{}
