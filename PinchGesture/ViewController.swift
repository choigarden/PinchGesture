//
//  ViewController.swift
//  PinchGesture
//
//  Created by 최정원 on 2022/09/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgPinch: UIImageView!
    
    var initialFontSize : CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))
        self.view.addGestureRecognizer(pinch)
        
        
        
    }

    @objc func doPinch(_ pinch : UIPinchGestureRecognizer) {
        if (pinch.state == UIGestureRecognizer.State.began) {
            initialFontSize = txtPinch.font.pointSize
        } else {
            txtPinch.font = txtPinch.font.withSize(initialFontSize * pinch.scale)
        }
    }
    
    
    
    

}

