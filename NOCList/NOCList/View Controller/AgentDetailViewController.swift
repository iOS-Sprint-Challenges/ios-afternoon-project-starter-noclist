//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Ben Gohlke on 8/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
    
    // MARK: - Properties
    var agent: Agent?
    
    //MARK: - Outlets
    
    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var accessLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadViews()
    }
    
    private func loadViews(){
        if let agent = agent{
            coverNameLabel.text = agent.coverName
            realNameLabel.text = agent.realName
            accessLevelLabel.text = String(agent.accessLevel)
            if agent.compromised{
                view.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
            }
        }
    }
    
    
}
