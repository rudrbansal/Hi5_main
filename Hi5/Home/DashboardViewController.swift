//
//  DashboardViewController.swift
//  Hi5
//
//  Created by Rudr Bansal on 07/12/21.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var dealsCV: UICollectionView!
    @IBOutlet weak var dealsTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        registerCell()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        userImageView?.layer.cornerRadius = userImageView.frame.width/2
    }

    func registerCell(){
        dealsCV?.backgroundColor = .white
        dealsCV?.registerCell(identifier:DealsCVCell.DealsCVCellIdentifier)
        dealsTV?.register(UINib(nibName: DealsTVCell.DealsTVCellIdentifier, bundle: nil), forCellReuseIdentifier: "\(DealsTVCell.classForCoder())")
    }
    
    @IBAction func btnActionNotification(_ sender: UIButton) {
        let vc = CommonUtilities.shared.instantiateView(storyboard: Constants.Storyboards.main.rawValue, controller: Constants.ViewControllers.notificationsViewController.rawValue)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnActionScan(_ sender: UIButton) {
        let vc = CommonUtilities.shared.instantiateView(storyboard: Constants.Storyboards.redeem.rawValue, controller: Constants.ViewControllers.redeemHistoryViewController.rawValue)
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension DashboardViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(for: indexPath, with: DealsCVCell.self)

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      
        return CGSize(width: UIScreen.main.bounds.width - 50 , height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 25
    }
}

//MARK: Table View Data Source & Delegate Methods
extension DashboardViewController:UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, with: DealsTVCell.self)
        cell.selectionStyle = .none
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "FavouriteVC_ID") as! FavouriteVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
}
