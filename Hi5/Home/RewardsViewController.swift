//
//  RewardsViewController.swift
//  Hi5
//
//  Created by Rudr Bansal on 07/12/21.
//

import UIKit

class RewardsViewController: UIViewController {
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var pointView: UIView!
    @IBOutlet weak var pointEarnView: UIView!
    @IBOutlet var pointBtn:[UIButton]!
    @IBOutlet weak var rewardTV: UITableView!
    
    var selectedTab = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        selectPointBtn(tag: 0)
        registerCell()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        userImageView?.layer.cornerRadius = userImageView.frame.width/2
        pointView?.layer.cornerRadius = 20
        pointEarnView?.layer.borderColor = UIColor.rgb(red: 255, green: 85, blue: 142, alpha: 1).cgColor
        pointEarnView?.layer.borderWidth = 1
        pointEarnView?.layer.cornerRadius = 24
    }
    
    func registerCell(){
        rewardTV?.register(UINib(nibName: RewardsTVCell.RewardsTVCellIdentifier, bundle: nil), forCellReuseIdentifier: "\(RewardsTVCell.classForCoder())")
        rewardTV?.register(UINib(nibName: RedeemPointTVCell.RedeemPointTVCellIdentifier, bundle: nil), forCellReuseIdentifier: "\(RedeemPointTVCell.classForCoder())")
    }
    
    
    func selectPointBtn(tag:Int){
        pointBtn?.forEach { btn in
            if btn.tag == tag {
                btn.backgroundColor = UIColor.rgb(red: 255, green: 85, blue: 142, alpha: 1)
                btn.setTitleColor(UIColor.white, for: .normal)
                btn.layer.cornerRadius = 24
            }else{
                btn.backgroundColor = .clear
                btn.setTitleColor(UIColor.rgb(red: 255, green: 85, blue: 142, alpha: 1), for: .normal)
                btn.layer.cornerRadius = 0
            }
        }
    }
    
    
    
    @IBAction func earnPointClicked(_ sender: UIButton) {
        selectPointBtn(tag: sender.tag)
        selectedTab = sender.tag
        rewardTV.reloadData()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//MARK: Table View Data Source & Delegate Methods
extension RewardsViewController:UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if selectedTab == 0 {
        let cell = tableView.dequeueReusableCell(for: indexPath, with: RewardsTVCell.self)
        cell.selectionStyle = .none
        return cell
        }
        let cell = tableView.dequeueReusableCell(for: indexPath, with: RedeemPointTVCell.self)
        cell.selectionStyle = .none
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ReedemPointVC_ID") as! ReedemPointVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
}
