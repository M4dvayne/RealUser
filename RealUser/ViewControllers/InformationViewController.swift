//
//  InformationViewController.swift
//  RealUser
//
//  Created by Вячеслав Кремнев on 1/24/22.
//

import UIKit

class InformationViewController: UIViewController {

    var user: User!
    
    @IBOutlet weak var titleText: UINavigationItem!
    
    @IBOutlet weak var segmentText: UISegmentedControl!
    
    @IBOutlet weak var userInfoText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userInfoText.text = user.person.personsInfo.first
        titleText.title = segmentText.titleForSegment(at: 0)
    }

    @IBAction func showUserInfo(_ sender: UISegmentedControl) {
        
        let userInfo: [String] = user.person.personsInfo
        
        if sender.selectedSegmentIndex == 0 {
            userInfoText.text = userInfo[0]
            titleText.title = segmentText.titleForSegment(at: 0)
        } else if sender.selectedSegmentIndex == 1 {
            userInfoText.text = userInfo[1]
            titleText.title = segmentText.titleForSegment(at: 1)
        } else if sender.selectedSegmentIndex == 2 {
            userInfoText.text = userInfo[2]
            titleText.title = segmentText.titleForSegment(at: 2)
        }
    }
}
