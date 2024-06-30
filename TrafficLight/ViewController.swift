//
//  ViewController.swift
//  TrafficLight
//
//  Created by NikolayD on 30.06.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    enum TrafficLight {
        case switchOff
        case red
        case yellow
        case green
    }

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var switchLightButton: UIButton!
    
    private var currentLight: TrafficLight = .switchOff
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView(redView, withColour: UIColor.systemRed)
        setupView(yellowView, withColour: UIColor.systemYellow)
        setupView(greenView, withColour: UIColor.systemGreen)
        
        switchLightButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func switchLightButtonDidTapped(_ sender: UIButton) {
        switch currentLight {
        case .red:
            currentLight = .yellow
            switchLight(from: redView, to: yellowView)
        case .yellow:
            currentLight = .green
            switchLight(from: yellowView, to: greenView)
        case .green:
            currentLight = .red
            switchLight(from: greenView, to: redView)
        case .switchOff:
            currentLight = .red
            redView.alpha = 1
            sender.setTitle("NEXT", for: .normal)
        }
    }
    
    private func setupView(_ view: UIView, withColour colour: UIColor) {
        view.backgroundColor = colour
        view.layer.cornerRadius = view.frame.size.width / 2
        view.alpha = 0.3
    }
    
    private func switchLight(from currentView: UIView, to nextView: UIView) {
        currentView.alpha = 0.3
        nextView.alpha = 1
    }
}

