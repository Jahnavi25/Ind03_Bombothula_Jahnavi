//
//  ViewController.swift
//  Ind03_Bombothula_Jahnavi
//
//  Created by Jahnavi Bombothula on 4/5/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var state_Map: UIImageView!
    @IBOutlet weak var state_Flag: UIImageView!
    
    @IBOutlet weak var state_Name: UITextField!
    
    @IBOutlet weak var state_Area: UITextField!
    
    
    var map_Image = UIImage()
    var flag_Image = UIImage()
    var name_of_state = ""
    var area_of_state = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //stateMap.image = mapImage
        state_Name.text = name_of_state
        state_Area.text = area_of_state + " Sq. Miles"
        state_Flag.image = flag_Image
        state_Map.image = map_Image
    }

    
}
