//
//  TableViewCollectionCell.swift
//  UXDynamicallySizingTableViewCells
//
//  Created by Michael Nino Evensen on 27/10/2016.
//  Copyright © 2016 Michael Nino Evensen. All rights reserved.
//

import UIKit

class TableViewCollectionCell: UITableViewCell, UICollectionViewDataSource {

    @IBOutlet weak var contentLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // CollectionView DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        
        return cell
    }
}

