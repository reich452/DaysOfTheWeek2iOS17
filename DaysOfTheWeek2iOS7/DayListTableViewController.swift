//
//  DayListTableViewController.swift
//  DaysOfTheWeek2iOS7
//
//  Created by Nick Reichard on 1/23/18.
//  Copyright © 2018 Nick Reichard. All rights reserved.
//

import UIKit

class DayListTableViewController: UITableViewController {
    
    var daysOfTheWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Satuday"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // MARK: - Table view data source

 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return daysOfTheWeek.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)

        let day = daysOfTheWeek[indexPath.row]
        
        let index = indexPath.row
        
        cell.textLabel?.text = day
        cell.detailTextLabel?.text = "\(index)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 1) Check the segue ID
        if segue.identifier == "toDayDetail" {
            // 2) get the destination
            
            guard let destinationVC = segue.destination as? DayDetailViewController else { print("Somehting is nil"); return }
            
            // 3)
            if let selectedDay = tableView.indexPathForSelectedRow {
                
                let day = daysOfTheWeek[selectedDay.row]
                
                destinationVC.day = day
                
            }
    
        }
    }
}
