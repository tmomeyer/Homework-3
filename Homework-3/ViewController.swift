//
//  ViewController.swift
//  Homework-3
//
//  Created by Trevor Momeyer on 2/20/20.
//  Copyright © 2020 Trevor Momeyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bunnyImage: UIImageView!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    @IBAction func startstopButton(_ sender: Any) {
        if(bunnyImage.isAnimating)
        {
            bunnyImage.stopAnimating()
        } else
        {
            bunnyImage.startAnimating()
        }
    }
    
    @IBAction func setSpeed(_ sender: Any) {
    bunnyImage.animationDuration=TimeInterval(4.0-speedSlider.value)
        bunnyImage.startAnimating()
    }
    
    
    @IBAction func imageChange(_ sender: Any) {
        backgroundImage.isHidden = true
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let hopAnimation: [UIImage] = [
                   UIImage(named: "frame-1")!,
                   UIImage(named: "frame-2")!,
                   UIImage(named: "frame-3")!,
                   UIImage(named: "frame-4")!,
                   UIImage(named: "frame-5")!,
                   UIImage(named: "frame-6")!,
                   UIImage(named: "frame-7")!,
                   UIImage(named: "frame-15")!,
                   UIImage(named: "frame-16")!,
                   UIImage(named: "frame-17")!,
                   UIImage(named: "frame-18")!,
                   UIImage(named: "frame-19")!,
                   UIImage(named: "frame-20")!,
                   ]
        
        bunnyImage.animationImages=hopAnimation
        bunnyImage.animationDuration=1.0
    }


}

