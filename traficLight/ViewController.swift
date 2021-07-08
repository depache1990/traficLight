//
//  ViewController.swift
//  traficLight
//
//  Created by Anton Duplin on 6/7/21.
//

import UIKit
enum TraficLights {
    case red
    case yellow
    case green
}
class ViewController: UIViewController {
    @IBOutlet weak var redColorLabel: UIView!
    @IBOutlet weak var yellowColorLabel: UIView!
    @IBOutlet weak var greenColorLabel: UIView!
    @IBOutlet weak var startButon: UIButton!
    
    private var traficLights = TraficLights.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorLabel.layer.cornerRadius = 100
        yellowColorLabel.layer.cornerRadius = 100
        greenColorLabel.layer.cornerRadius = 100
    }
    @IBAction func startToNext() {
        startButon.setTitle("Next", for: .normal)
        switch traficLights {
        case .red:
            redColorLabel.alpha = 1
            greenColorLabel.alpha = 0.3
            traficLights = .yellow
        case .yellow:
            redColorLabel.alpha = 0.3
            yellowColorLabel.alpha = 1
            traficLights = .green
        case .green:
            yellowColorLabel.alpha = 0.3
            greenColorLabel.alpha = 1
            traficLights = .red
        }
    }
}

            
       
        

    




