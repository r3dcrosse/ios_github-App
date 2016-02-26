//
//  SettingsViewController.swift
//  GithubDemo
//
//  Created by David Wayman on 2/25/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}

class SettingsViewController: UIViewController {

    @IBOutlet weak var numStarsLabel: UILabel!
    
    weak var delegate: SettingsPresentingViewControllerDelegate?
    
    var settings = GithubRepoSearchSettings()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSaveClicked(sender: AnyObject) {
        self.delegate?.didSaveSettings(settings)
    }
    
    @IBAction func onCancelClicked(sender: AnyObject) {
        
        self.delegate?.didCancelSettings()

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
