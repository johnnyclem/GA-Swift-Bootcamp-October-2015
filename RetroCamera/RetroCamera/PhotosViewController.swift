//
//  PhotosViewController.swift
//  RetroCamera
//
//  Created by John Clem on 10/10/15.
//  Copyright © 2015 learnSwift. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var photos = [UIImage]()
    
    //MARK: UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.photos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // dequeue a reusable cell
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        // customize the cell for the given row
        cell.textLabel?.text = "Cell #\(indexPath.row)"
        cell.imageView?.image = self.photos[indexPath.row]
        // return the cell
        return cell
    }
}
