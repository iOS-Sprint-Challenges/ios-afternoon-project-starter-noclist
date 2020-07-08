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
    
    func reloadViews() {
        tableView.reloadData()
    }
    
    func compromisedCount() -> Int{
        var count = 0
        for agent in agents{
            if agent.compromised{
                count += 1
            }
        }
        
        return count
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return agents.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AgentCell", for: indexPath)
        
        let data = agents[indexPath.row]
        
        cell.textLabel?.text = data.coverName
        cell.detailTextLabel?.text = data.realName
        
        if data.compromised {
            cell.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "\(compromisedCount()) agents compromised"
    }
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let index = tableView.indexPathForSelectedRow else {return}
        let selectedAgent = agents[index.row]
        
        if segue.identifier == "AgentDetailSegue"{
            if let agentDetailVC = segue.destination as? AgentDetailViewController{
                agentDetailVC.agent = selectedAgent
            }
        }
    }
    
    // MARK: - Private
}
