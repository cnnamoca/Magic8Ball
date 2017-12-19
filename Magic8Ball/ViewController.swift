//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Carlo Namoca on 2017-12-11.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.intimidateUser()

    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            self.generateAnswers()
        }
    }
    
    func intimidateUser() {
        
        UIView.animate(withDuration: 2,
                       delay: 0,
                       options: .curveLinear,
                       animations: {
                        
                        self.textLabel.alpha = 1
        },
                       completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseOut,
                           animations: {
                            
                            self.textLabel.alpha = 0
                            self.textLabel.text = "Go ahead... Don't be afraid"
                            self.textLabel.alpha = 1
            },
                           completion: nil)
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 10) {
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseOut,
                           animations: {
                            
                            self.textLabel.alpha = 0
                            self.textLabel.text = "Shake your device when you're ready..."
                            self.textLabel.alpha = 1
            },
                           completion: nil)
        }
    }
    
    func generateAnswers() {
        let answer = arc4random_uniform(7)
        
        UIView.animate(withDuration: 7,
                       delay: 0,
                       options: .curveLinear,
                       animations: {
                        
                        self.textLabel.alpha = 1
                        switch answer {
                        case 0:
                            self.textLabel.text = "Most Certainly"
                            break
                        case 1:
                            self.textLabel.text = "Not too keen on that one"
                            break
                        case 2:
                            self.textLabel.text = "It's possible, but tread with care..."
                            break
                        case 3:
                            self.textLabel.text = "Don't do it"
                            break
                        case 4:
                            self.textLabel.text = "Absolutely not..."
                            break
                        case 5:
                            self.textLabel.text = "HAHAHA... Yes..."
                            break
                        case 6:
                            self.textLabel.text = "For now... No..."
                            break
                        default:
                            break
                        }
                        
                        self.textLabel.alpha = 0
        },
                       completion: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

