//
//  GamePlay.swift
//  ZobmbieGame
//
//  Created by Pradeep on 5/12/17.
//  Copyright © 2017 Pradeep. All rights reserved.
//

import UIKit

class GamePlay: UIViewController {
//    @IBOutlet weak var House: UIButton!
//    @IBOutlet weak var Grocery: UIButton!
//    @IBOutlet weak var Prison: UIButton!
//    @IBOutlet weak var LocationButton: UIButton!
//    
//    @IBOutlet weak var ViewOption: UIView!
//    
//    @IBOutlet weak var RandomInteraction: UILabel!
//    
//    @IBOutlet weak var Location: UILabel!
//        @IBOutlet weak var TestLabel: UILabel!
//
//    var str = "Hello, playground"
//    /// Player Variables
//    var playerHealth = 100  //this is the players health
//    var playerAmmocount = 0 //this is the ammount of amnmo player currently has
//    var dayCount = 0 // this is the current day the player is on
//    var zombiesKilled = 0
//    
//    
//    
//    ///Story Variables
//    var currentLocation = "Apartment"
//    let locations = ["Prison", "Grocery store", "House"]
//    let scenarios = ["food", "ammo", "zombie", "nothing"]
//    let foodOptions = [("Hamburger",20), ("Twinkies", 40), ("Granola Bar", 30)]
//    
//    
//    
//    ///Functions
//    //func randomLocation() { //gets a random location
//    //
//    //    let randomNumber = Int(arc4random_uniform(UInt32(locations.count)))
//    //    print(locations[randomNumber])
//    //}
//    //
//    //randomLocation()
//    
//
//    func scenario() { //picks which senario to run
//        let randomNumber = Int(arc4random_uniform(UInt32(scenarios.count)))
//        let scenarioSelected = scenarios[randomNumber]
//        currentLocation = scenarioSelected
//        
//        //runs a function based on what scenario is selected
//        if scenarioSelected == "food"{
//            foodScenario()
//        }
//        else if scenarioSelected == "ammo"{
//            ammoScenario()
//        }
//        else if scenarioSelected == "zombie"{
//            zombieScenario()
//        }
//        else if scenarioSelected == "nothing"{
//            nothingScenario()
//        }
//        
//    }
//    
//    func foodScenario() { // when food is selected this runs
//        let randomNumber = Int(arc4random_uniform(UInt32(foodOptions.count)))
//        let foodSelected = foodOptions[randomNumber] //this selects the food
//        let randomFoodhealth = Int(arc4random_uniform(UInt32(foodOptions[randomNumber].1)))
//        let foodHealth = foodOptions[randomNumber].1 - (randomFoodhealth * 2)
//        let foodName = foodOptions[randomNumber].0
//        
//        //calculate the new players health
//        if playerHealth < 100 {
//            if playerHealth + foodHealth > 100 {
//                playerHealth = 100
//            }
//            else {
//                playerHealth = playerHealth + foodHealth
//            }
//        }
//        if playerHealth + foodHealth <= 0 {
//            gameOver()
//        }
//        
//        
//    }
//    
//    
//    func ammoScenario() { // when ammo is selected this runs
//        let randomNumber = Int(arc4random_uniform(UInt32(5)))
//        playerAmmocount = playerAmmocount + randomNumber
//        
//    }
//    
//    func zombieScenario() { // when zombie is selected this runs
//        
//    }
//    
//    
//    func nothingScenario(){ // this runs when nothing happens
//        
//    }
//    
//    func gameOver() {
//        
//    }
//
//
//    
//    @IBAction func Run(_ sender: Any) {
//    }
//    
//    @IBAction func Take(_ sender: Any) {
//    }
//    @IBOutlet weak var Take: UIButton!
//    
//    @IBAction func LocationOption(_ sender: Any) {
//        if (sender as AnyObject).tag == 1 {
//            Location.text = "Prison"
//                
//            
//        } else if (sender as AnyObject).tag == 2 {
//            Location.text = "Grocery Store"
//        } else{
//            Location.text = "House"
//        }
//        ViewOption.isHidden = false
//        House.isHidden = true
//        Grocery.isHidden = true
//        Prison.isHidden = true
//        scenario()
//        
//    }
//
//   
//    
//    @IBOutlet weak var tableView: UITableView!
//    
    @IBOutlet weak var FoodB: UIButton!
    var health1: Int = 0
    var weapon1: Int = 1
    var days1: Int = 0
    @IBOutlet weak var ButtonResult: UILabel!
    
    @IBOutlet weak var ZombB: UIButton!
    @IBOutlet weak var WeapB: UIButton!
    func Zobmieaction() {
    var rand = arc4random_uniform(50)
    if Int(rand) > 20{
    ButtonResult.text = "You Fought a Zombie and Lost."
    if weapon1 > 1 {
    health1 -= 10
    health.text = "Health \(String(health1))"
    } else {
    health1 -= 50
    health.text = "Health \(String(health1))"
    }
    weapon1 -= 1
    }
    if Int(rand) <= 20 {
    ButtonResult.text = "You Fought a Zombie and Won."
    }
    days1 += 1
    Days.text = "Days \(String(days1))"
    UpdateUI()
    }

    @IBAction func Zombie(_ sender: Any) {
    
        
        
        var rand = arc4random_uniform(50)
        if Int(rand) > 20{
        ButtonResult.text = "You Fought a Zombie and Lost."
            if weapon1 > 1 {
                health1 -= 10
                health.text = "Health \(String(health1))"
            } else {
                health1 -= 50
                health.text = "Health \(String(health1))"
            }
            if weapon1 == 0{
                weapon1 = 0
            }
            else {
                weapon1 -= 1
            }
        }
        if Int(rand) <= 20 {
            ButtonResult.text = "You Fought a Zombie and Won."
        }
        days1 += 1
        Days.text = "Days \(String(days1))"

        UpdateUI()
    }
    
    @IBAction func Weapon(_ sender: Any) {
    
        
        var randweapon = arc4random_uniform(2)
        ButtonResult.text = "You gained \(String(randweapon)) weapons"
        weapon1 += Int(randweapon)
        Weapon.text = "Weapons: \(String(weapon1))"
        days1 += 1
        Days.text = "Days \(String(days1))"
        UpdateUI()
        
    }
    
    @IBAction func Food(_ sender: Any) {
        let randFood = arc4random_uniform(20)
        health1 += Int(randFood)
        health.text = "Health \(String(health1))"
        ButtonResult.text = "You Gained \(String(randFood))"
        days1 += 1
        Days.text = "Days \(String(days1))"
        UpdateUI()
    }

    func UpdateUI(){
        Weapon.text = "Weapons: \(String(weapon1))"
        if health1 <= 0{
            GameOver.isHidden = false
            GameOverL.isHidden = false
            ButtonResult.isHidden = true
            health.isHidden = true
            Days.isHidden = true

            Weapon.isHidden = true
            FoodB.isHidden = true
            ZombB.isHidden = true
            WeapB.isHidden = true
            
        }
    }
    @IBOutlet weak var health: UILabel!
    
    
    @IBOutlet weak var GameOver: UIView!
    @IBOutlet weak var Days: UILabel!
    @IBOutlet weak var Result: UILabel!
    
    @IBOutlet weak var GameOverL: UILabel!

    

    @IBOutlet weak var Weapon: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      health.text = "Health: 100"
        Weapon.text = "Weapons: 1"
        Days.text = "Days: 0"
        health1 = 100
        GameOver.isHidden = true
        GameOverL.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
