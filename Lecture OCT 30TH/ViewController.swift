//
//  ViewController.swift
//  Lecture OCT 30TH
//
//  Created by Kenneth Uyabeme on 10/30/18.
//  Copyright © 2018 Kenneth Uyabeme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: outlets
    @IBOutlet weak var beeAngryslider: UISlider!
    
    //MARK: variables
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //print("what's in defaults \n\(defaults.dictionaryRepresentation())")
        defaults.set("Kenneth", forKey: "name")
        print("what was in userDefaults was a \(defaults.string(forKey: "name")!)")
    }
    /*When using local storage like defaults there are 2 two you can do
     
     put things in User deafaults and get something from it*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

