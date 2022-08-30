//
//  ViewController.swift
//  itudaregame
//
//  Created by 中井日向子 on 2022/08/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var ituLabel:UILabel!
    @IBOutlet var dokodeLabel:UILabel!
    @IBOutlet var daregaLabel:UILabel!
    @IBOutlet var dousitaLabel:UILabel!
    
    let ituArray:[String] = ["一年前","一週間前","昨日","今日"]
    let dokodeArray:[String] = ["学校で","家で","庭で","地下で"]
    let daregaArray:[String] = ["私が","俺が","犬が","姉が"]
    let dousitaArray:[String] = ["寝た","あそんだ","転んだ","あくびした"]
    var index = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func change(){
        ituLabel.text = ituArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        dousitaLabel.text = dousitaArray[index]
        
        
        
        if index == 3{
            index = 0
        } else {
            index = index + 1
        }
        
    }
    @IBAction func reset(){
        ituLabel.text = "___"
        dokodeLabel.text = "___"
        daregaLabel.text = "___"
        dousitaLabel.text = "___"
        index = 0
        
    }
    @IBAction func random(){
        let itsuIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let dousitaIndex = Int.random(in: 0...3)
        ituLabel.text = ituArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        dousitaLabel.text = dousitaArray[dousitaIndex]
        
        
    }
}

