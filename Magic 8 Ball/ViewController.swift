//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Nicholas Feanny on 9/15/18.
//  Copyright © 2018 Nicholas Feanny. All rights reserved.
//
//Still getting used to the syntax; notes are written to myself to remember

import UIKit

class ViewController: UIViewController {
    //declare variables
    var randomIndex: Int = 0 //holds the value of the random index
    
    //array holding the images of the eightBall responses
    let imageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    //IBOutlet changes appearance of the element
    @IBOutlet weak var askButton: UIButton! //UIButton is an object
    @IBOutlet weak var eightBallImage: UIImageView! //UIImageView is an Object
    
//Lines 23- 33 are default code generated with the app that enable the app to run and generate properly.
//...do not mess with this yet
/*________________________________________________________________*/
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
/*________________________________________________________________*/
 
    //IBAction notifies the code when the element is interacted with
    //Like an event listener in javascript
    @IBAction func askButtonPressed(_ sender: UIButton) {
        eightBall()
    }
    
    func eightBall() {
        //1)store the random index
        //2) verify random index is working
        //3) grab an image and store into a UIImage object via random index
        randomIndex = Int(arc4random_uniform(5))
       // print(randomIndex)
        eightBallImage.image = UIImage(named: imageArray[randomIndex])
    }
    
    //create a function which randomly generates a reponse after a shake
    //using the documentation located this function which waits for motion to end
    //then responds with the following code.
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?){
        eightBall()
    }

}

