//
//  NOCListTableViewController.swift
//  NOCList
//
//  Created by Ben Gohlke on 5/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class NOCListTableViewController: UITableViewController
{
    
    //MARK: - Properties
    var agents = [Agent]()
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadNOCList()
    }
    
    //MARK: - Private methods
    
    func loadNOCList() {
        agents = [
        Agent(coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true),
        Agent(coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false),
        Agent(coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false),
        Agent(coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true),
        Agent(coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false),
        Agent(coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false),
        Agent(coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true),
        Agent(coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false),
        Agent(coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true),
        Agent(coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true),
        Agent(coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)
        ]
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    // MARK: - Private
}
