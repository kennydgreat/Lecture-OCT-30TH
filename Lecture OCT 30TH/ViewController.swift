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
    @IBOutlet weak var angryBeeLabel: UILabel!
    
    //MARK: variables
    let defaults = UserDefaults.standard
    var angryBeeValue:Float = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //print("what's in defaults \n\(defaults.dictionaryRepresentation())")
        angryBeeValue = defaults.float(forKey: "angryBeeSliderValue")
        print("what was in userDefaults was a \(defaults.string(forKey: "name")!)")
        beeAngryslider.setValue(angryBeeValue, animated: true)
    }
    /*When using local storage like defaults there are 2 two you can do
     
     put things in User deafaults and get something from it*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderValueChanged(_ sender: Any) {
        angryBeeValue = beeAngryslider.value
        defaults.set(angryBeeValue, forKey: "angryBeeSliderValue")
        
        if(angryBeeValue < 30){
            angryBeeLabel.text = "She's nice today"
        }
        
        if(angryBeeValue > 50){
            angryBeeLabel.text = "She's mad. Wouldn't come near her"
        }
    }
    
}

