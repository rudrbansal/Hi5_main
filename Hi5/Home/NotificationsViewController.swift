//
//  NotificationsViewController.swift
//  Hi5
//
//  Created by Rudr Bansal on 09/12/21.
//

import UIKit

class NotificationsViewController: UIViewController {

    @IBOutlet weak var notificationsTableView: UITableView!
    
    let notifications = ["Please collect your product from address will be shown here", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notificationsTableView.dataSource = self
        notificationsTableView.delegate = self
        notificationsTableView.reloadData()
    }
    
    @IBAction func btnActionBack(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
extension NotificationsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.TableviewCellIdentifiers.notificationTableViewCell.rawValue) as! NotificationTableViewCell
        cell.notificationsLabel.text = notifications[indexPath.row]
        return cell
    }
}

class NotificationTableViewCell: UITableViewCell {
    @IBOutlet weak var notificationsLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var notificationsImageView: UIImageView!
}
