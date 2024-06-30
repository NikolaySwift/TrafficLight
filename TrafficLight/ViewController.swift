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
    
    @IBOutlet var switchLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView(redView, withColour: UIColor.systemRed)
        setupView(yellowView, withColour: UIColor.systemYellow)
        setupView(greenView, withColour: UIColor.systemGreen)
        
        switchLightButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func switchLightButtonDidTapped(_ sender: UIButton) {
        
    }
    
    private func setupView(_ view: UIView, withColour colour: UIColor) {
        view.backgroundColor = colour
        view.layer.cornerRadius = view.frame.size.width / 2
        view.alpha = 0.3
    }
}

