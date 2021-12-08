//
//  FavouriteVC.swift
//  Hi5
//
//  Created by Nitin Mittal on 08/12/21.
//

import UIKit

class FavouriteVC: UIViewController {
    @IBOutlet weak var favouriteTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
    }
    
    func registerCell(){
        favouriteTV?.register(UINib(nibName: DealsTVCell.DealsTVCellIdentifier, bundle: nil), forCellReuseIdentifier: "\(DealsTVCell.classForCoder())")
    }
    
    
    @IBAction func backClicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

}

//MARK: Table View Data Source & Delegate Methods
extension FavouriteVC:UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, with: DealsTVCell.self)
        cell.heartImageView.image = UIImage(named: "ColorHeart")
        cell.selectionStyle = .none
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
 
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
}
