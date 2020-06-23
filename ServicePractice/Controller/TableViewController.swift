//
//  TableViewController.swift
//  ServicePractice
//
//  Created by Shawn Li on 5/28/20.
//  Copyright © 2020 ShawnLi. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    private var profileViewModel = ProfileViewModel()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        profileViewModel.updateHandler = self.tableView.reloadData
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        print(profileViewModel.photos.count)
        return profileViewModel.photos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        profileViewModel.getPhotos(url: profileViewModel.photos[indexPath.row].avatar) { (image) in cell.pictureImage.image = image }
        
        return cell
    }
}
