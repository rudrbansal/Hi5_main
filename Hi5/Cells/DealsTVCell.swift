//
//  DealsTVCell.swift
//  Hi5
//
//  Created by Nitin Mittal on 07/12/21.
//

import UIKit

class DealsTVCell: UITableViewCell {

    static let DealsTVCellIdentifier             =      "DealsTVCell"
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var dealImageView: UIImageView!
    @IBOutlet weak var heartImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        dealImageView.layer.cornerRadius = 10
        mainView.layer.cornerRadius = 10
        mainView.layer.borderColor = UIColor.rgb(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        mainView.layer.borderWidth = 0.4
       // mainView.applyShadowWithCornerRadius(color: UIColor.rgb(red: 0, green: 0, blue: 0, alpha: 0.25), opacity: 1, radius: 3, edge: .All, shadowSpace: 3, cornerRadius: 10)
//        mainView.dropShadow(color: .white, opacity: 1, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

extension DealsTVCell : Reusable{}
