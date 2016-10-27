//
//  TableViewController.swift
//  UXDynamicallySizingTableViewCells
//
//  Created by Michael Nino Evensen on 27/10/2016.
//  Copyright © 2016 Michael Nino Evensen. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let data = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet odio consequat, mollis dui quis, pulvinar enim. Mauris mollis metus sit amet porta dapibus.",
        "Aliquam aliquam rhoncus suscipit. Donec scelerisque aliquam dolor, a auctor velit lacinia non. Pellentesque eget sapien quam. Ut efficitur ligula eget erat cursus, sit amet dapibus turpis eleifend. Duis neque eros, convallis vitae velit ut, tempor suscipit lacus. Aliquam pharetra cursus tellus.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum urna ut pulvinar tristique. Proin sapien nisl, scelerisque vel eros sed, finibus sagittis mi. Curabitur rutrum turpis sit amet eleifend interdum. Phasellus nec leo eu nisl tempus luctus. Sed ultrices porta erat nec lacinia. Etiam diam est, venenatis vel sodales vel, aliquam sed metus. Donec sit amet finibus turpis. Aenean vel porttitor ante. Curabitur venenatis vulputate leo, varius placerat augue congue eget. Cras quis dui nunc. Praesent pharetra rhoncus urna, eget feugiat augue congue a.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 140
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        // Set content
        cell.contentLabel.text = self.data[indexPath.row]
        
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellCollectionView") as! TableViewCollectionCell
            
            cell.contentLabel.text = self.data[indexPath.row]
            
            return cell
        }
        
        return cell
    }

}
