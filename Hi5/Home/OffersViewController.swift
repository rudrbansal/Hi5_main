//
//  OffersViewController.swift
//  Hi5
//
//  Created by Rudr Bansal on 07/12/21.
//

import UIKit

class OffersViewController: UIViewController {

    @IBOutlet weak var offersTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        offersTableView.dataSource = self
        offersTableView.delegate = self
        offersTableView.reloadData()
    }
}

extension OffersViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.TableviewCellIdentifiers.offerTableViewCell.rawValue) as! OfferTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = CommonUtilities.shared.instantiateView(storyboard: Constants.Storyboards.offers.rawValue, controller: Constants.ViewControllers.offerDetailsViewController.rawValue)
        navigationController?.pushViewController(vc, animated: true)
    }
}

class OfferTableViewCell: UITableViewCell {
    
    @IBOutlet weak var offersTableView: UIImageView!
}
