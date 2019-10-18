//
//  ViewController.swift
//  Example
//
//  Created by Станислав Шияновский on 10/18/19.
//  Copyright © 2019 Станислав Шияновский. All rights reserved.
//

import Colorist
import UIKit

class ViewController: UIViewController {

    private var colorTimer: Timer!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        colorTimer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(colorTimerAction), userInfo: nil, repeats: true)
        colorTimer.fire()
    }
    
    @objc private func colorTimerAction() {
        let color = Colorist.Worker().makeColor()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [weak self] in
            guard let `self` = self else { return }
            self.view.backgroundColor = color
        }
    }


}

