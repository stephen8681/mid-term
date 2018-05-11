//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by eva on 13/4/2018.
//  Copyright © 2018年 Stephen. All rights reserved.
//

import UIKit


class RestaurantTableViewController: UITableViewController {
    var restaurantNames = [""]
    var restaurantimages = [""]
    var restaurantImageName1 = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if ( restaurantImageName1=="九芎"){
            restaurantNames = ["九芎_花_正面", "九芎_花", "九芎_花序", "九芎_葉序", "九芎_樹幹"]
            restaurantimages = ["九芎_花_正面", "九芎_花", "九芎_花序", "九芎_葉序", "九芎_樹幹"]
        }
        else if ( restaurantImageName1=="茄苳"){
            restaurantNames = ["茄苳_果", "茄苳_葉", "茄苳_雌花", "茄苳_樹皮", "茄苳_樹幹"]
            restaurantimages = ["茄苳_果", "茄苳_葉", "茄苳_雌花", "茄苳_樹皮", "茄苳_樹幹"]
        }
        else if ( restaurantImageName1=="奧氏虎皮楠"){
            restaurantNames = ["奧氏虎皮楠_子", "奧氏虎皮楠_花序", "奧氏虎皮楠_葉", "奧氏虎皮楠_葉背", "奧氏虎皮楠_葉面"]
            restaurantimages = ["奧氏虎皮楠_子", "奧氏虎皮楠_花序", "奧氏虎皮楠_葉", "奧氏虎皮楠_葉背", "奧氏虎皮楠_葉面"]
        }
        navigationController?.navigationBar.prefersLargeTitles = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView,
                numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantTableViewCell

        // Configure the cell...
        cell.nameLabel?.text = restaurantNames[indexPath.row]
        cell.thumbnailImgaeView?.image = UIImage(named: restaurantimages[indexPath.row])
    
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "showRestaurantDetail"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! RestaurantDetailViewController
                destinationController.restaurantimageName = restaurantimages[indexPath.row]
            }
        }
    }

}
