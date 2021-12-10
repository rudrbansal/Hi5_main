//
//  RedeemHistoryViewController.swift
//  Hi5
//
//  Created by Rudr Bansal on 10/12/21.
//

import UIKit

class RedeemHistoryViewController: UIViewController {

    @IBOutlet weak var redeemHistoryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redeemHistoryTableView?.register(UINib(nibName: RedeemPointTVCell.RedeemPointTVCellIdentifier, bundle: nil), forCellReuseIdentifier: "\(RedeemPointTVCell.classForCoder())")
        redeemHistoryTableView.dataSource = self
        redeemHistoryTableView.delegate = self
        redeemHistoryTableView.reloadData()        
    }
    
    @IBAction func btnActionBack(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}

//MARK: Table View Data Source & Delegate Methods
extension RedeemHistoryViewController: UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, with: RedeemPointTVCell.self)
        cell.selectionStyle = .none
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
}
