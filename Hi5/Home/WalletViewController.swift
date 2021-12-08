//
//  WalletViewController.swift
//  Hi5
//
//  Created by Rudr Bansal on 07/12/21.
//

import UIKit

class WalletViewController: UIViewController {

    @IBOutlet weak var walletView: UIView!
    @IBOutlet weak var approveView: UIView!
    @IBOutlet weak var walletTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        walletView.layer.cornerRadius = 40
        approveView.layer.cornerRadius = 10
        approveView.layer.borderWidth = 1.0
        approveView.layer.borderColor = UIColor.rgb(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        registerCell()
    }
    
    func registerCell(){
        walletTableView?.register(UINib(nibName: WalletTVCell.walletTVCellIdentifier, bundle: nil), forCellReuseIdentifier: "\(WalletTVCell.classForCoder())")
    }
    
}

//MARK: Table View Data Source & Delegate Methods
extension WalletViewController:UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, with: WalletTVCell.self)
        cell.selectionStyle = .none
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
 
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
}
