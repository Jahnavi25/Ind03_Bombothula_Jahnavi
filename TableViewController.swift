//
//  TableViewController.swift
//  Ind03_Bombothula_Jahnavi
//
//  Created by Jahnavi Bombothula on 4/5/24.
//

import UIKit

class TableViewController: UITableViewController {
    
    let StatesDataSource: [[(String, String, String)]] = [[
                                               (name: "Alabama", nickname: "\tYellowhammer State", area: "50,744"),
                                               (name: "Alaska", nickname: "\tThe Last Frontier", area: "571,951"),
                                               (name: "Arizona", nickname: "\tThe Grand Canyon State", area: "113,635"),
                                               (name: "Arkansas", nickname: "\tThe Natural State", area: "52,068"),
                                               (name: "California", nickname: "\tThe Golden State", area: "155,959"),
                                               (name: "Colorado", nickname: "\tThe Contennial State", area: "103,718"),
                                               (name: "Connecticut", nickname: "\tThe Constitution State", area: "4,845"),
                                               (name: "Delaware", nickname: "\tThe First State", area: "1,954"),
                                               (name: "Florida", nickname: "\tThe Sunshine State", area: "53,927"),
                                               (name: "Georgia", nickname: "\tThe Peach State", area: "57,906"),
                                               (name: "Hawaii", nickname: "\tThe Aloha State", area: "6,423"),
                                               (name: "Idaho", nickname: "\tThe Gem State", area: "82,747"),
                                               (name: "Illinois", nickname: "\tPrairie State", area: "55,584"),
                                               (name: "Indiana", nickname: "\tThe Hoosier State", area: "35,867"),
                                               (name: "Iowa", nickname: "\tThe Hawkeye State", area: "55,869"),
                                               (name: "Kansas", nickname: "\tThe Sunflower State", area: "81,815"),
                                               (name: "Kentucky", nickname: "\tThe Bluegrass State", area: "39,728"),
                                               (name: "Louisiana", nickname: "\tThe Pelican State", area: "43,562"),
                                               (name: "Maine", nickname: "\tThe Pine Tree State", area: "30,862"),
                                               (name: "Maryland", nickname: "\tThe Old Line State", area: "9,774"),
                                               (name: "Massachusetts", nickname: "\tThe Bay State", area: "7,840"),
                                               (name: "Michigan", nickname: "\tThe Great Lakes State", area: "56,804"),
                                               (name: "Minnesota", nickname: "\tThe North Star State", area: "79,610"),
                                               (name: "Mississippi", nickname: "\tThe Magnolia State", area: "46,907"),
                                               (name: "Missouri", nickname: "\tThe Show Me State", area: "68,886"),
                                               (name: "Montana", nickname: "\tThe Treasure State", area: "145,552"),
                                               (name: "Nebraska", nickname: "\tThe Cornhusker State", area: "76,872"),
                                               (name: "Nevada", nickname: "\tThe Silver State", area: "109,826"),
                                               (name: "New Hampshire", nickname: "\tThe Granite State", area: "8,968"),
                                               (name: "New Jersey", nickname: "\tThe Garden State", area: "7,417"),
                                               (name: "New Mexico", nickname: "\tThe Land of Enchantment", area: "121,356"),
                                               (name: "New York", nickname: "\tThe Empire State", area: "47,214"),
                                               (name: "North Carolina", nickname: "\tThe Tar Heel State", area: "48,711"),
                                               (name: "North Dakota", nickname: "\tThe Peace Garden State", area: "68,976"),
                                               (name: "Ohio", nickname: "\tThe Buckeye State", area: "40,948"),
                                               (name: "Oklahoma", nickname: "\tThe Sooner State", area: "68,667"),
                                               (name: "Oregon", nickname: "\tThe Beaver State", area: "95,997"),
                                               (name: "Pennsylvania", nickname: "\tThe Keystone State", area: "44,817"),
                                               (name: "Rhode Island", nickname: "\tThe Ocean State", area: "1,045"),
                                               (name: "South Carolina", nickname: "\tThe Palmetto State", area: "30,109"),
                                               (name: "South Dakota", nickname: "\tMount Rushmore State", area: "75,885"),
                                               (name: "Tennessee", nickname: "\tThe Volunteer State", area: "41,217"),
                                               (name: "Texas", nickname: "\tThe Lone Star State", area: "261,797"),
                                               (name: "Utah", nickname: "\tThe Beehive State", area: "82,144"),
                                               (name: "Vermont", nickname: "\tThe Green Mountain State", area: "9,250"),
                                               (name: "Virginia", nickname: "\tThe Old Dominion State", area: "39,594"),
                                               (name: "Washington", nickname: "\tThe Evergreen State", area: "66,544"),
                                               (name: "West Virginia", nickname: "\tThe Mountain State", area: "24,078"),
                                               (name: "Wisconsin", nickname: "\tThe Badger State", area: "54,310"),
                                               (name: "Wyoming", nickname: "\tThe Equality or Cowboy State", area: "97,100")]]
    
    let sectionHeader = ["United States of America"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return StatesDataSource.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return StatesDataSource[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "My Table Cell", for: indexPath)
        
        // Get the data for this cell from the array.
        let cellData: (name: String, nickname: String, area: String) =
            StatesDataSource[indexPath[0]][indexPath[1]]
        

        // Configure the cell...
        cell.textLabel?.text = cellData.name
        cell.detailTextLabel?.text = cellData.nickname

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionHeader[section]
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let indexPath = tableView.indexPathForSelectedRow!
        let details = segue.destination as! ViewController
        details.name_of_state = StatesDataSource[indexPath[0]][indexPath[1]].0
        details.area_of_state = StatesDataSource[indexPath[0]][indexPath[1]].2
        details.flag_Image = UIImage(named: details.name_of_state + "_flag.png")!
        details.map_Image = UIImage(named: details.name_of_state + ".png")!
    }
    

}
