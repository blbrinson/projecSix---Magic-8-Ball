//
//  ViewController.swift
//  6 - Magic Eight Ball
//
//  Created by Brice on 5/5/20.
//  Copyright © 2020 blbrinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBall: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        magicBall.image = #imageLiteral(resourceName: "8 ball image")
        
    }
  
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        //Reduces the sender's (The button that got pressed) opacity to half.
        sender.alpha = 0.5
        
        //code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
            }
        
    
        //Fade in the next response
        UIView.transition(with: self.magicBall,
                          duration:1.2,
        options: .transitionCrossDissolve,
        animations: { self.magicBall.image = self.magicBall.image },
        completion: nil)
        
               
            let ballResponse = [
        #imageLiteral(resourceName: "As I see it Yes.png"), #imageLiteral(resourceName: "Ask Again Later.png"),
        #imageLiteral(resourceName: "Better Not Tell You Now.png"), #imageLiteral(resourceName: "Cannot Predict Now.png"),
        #imageLiteral(resourceName: "Concentrate and Ask Again.png"), #imageLiteral(resourceName: "Definitely Yes.png"),
        #imageLiteral(resourceName: "Dont Count on it.png"), #imageLiteral(resourceName: "It Is Certain.png"),
        #imageLiteral(resourceName: "It is decidedly So.png"), #imageLiteral(resourceName: "Most Likely .png"),
        #imageLiteral(resourceName: "My Reply is No .png"), #imageLiteral(resourceName: "My Sources Say No .png"),
        #imageLiteral(resourceName: "Outlook Good.png"), #imageLiteral(resourceName: "Outlook not so good.png"),
        #imageLiteral(resourceName: "Reply Hazy Try Again.png"), #imageLiteral(resourceName: "Signs Point to Yes.png"),
        #imageLiteral(resourceName: "Sure.png"), #imageLiteral(resourceName: "Very Doubtful..png"),
        #imageLiteral(resourceName: "Without a Doubt.png"), #imageLiteral(resourceName: "You may Rely On it.png"),
    ]
         
         // IBObject . element type = array . random element in array
        
     magicBall.image = ballResponse.randomElement()
    
    
    }
    
}


