//
//  ViewController.swift
//  TrafficLight
//
//  Created by NikolayD on 30.06.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.backgroundColor = UIColor.systemRed
        redView.layer.cornerRadius = redView.frame.size.width / 2
        redView.alpha = 0.3
        
        yellowView.backgroundColor = UIColor.systemYellow
        yellowView.layer.cornerRadius = yellowView.frame.size.width / 2
        yellowView.alpha = 0.3
        
        greenView.backgroundColor = UIColor.systemGreen
        greenView.layer.cornerRadius = yellowView.frame.size.width / 2
        greenView.alpha = 0.3
    }

}

