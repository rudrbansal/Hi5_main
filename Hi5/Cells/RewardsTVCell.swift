//
//  RewardsTVCell.swift
//  Hi5
//
//  Created by Nitin Mittal on 08/12/21.
//

import UIKit

class RewardsTVCell: UITableViewCell {

    static var RewardsTVCellIdentifier = "RewardsTVCell"
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var rewardImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mainView.layer.cornerRadius = 35
        rewardImageView.layer.cornerRadius = rewardImageView.frame.width/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension RewardsTVCell:Reusable{}
