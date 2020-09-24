//
//  ViewController.swift
//  SimpleLight
//
//  Created by yanhaoming on 2020/9/21.
//  Copyright © 2020 NJU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var count = 0
    @IBOutlet weak var darkLight: UIImageView!
    
    @IBOutlet var background: UIView!
    @IBAction func LightButton(_ sender: UIButton) {
        if(count%2==0){
            background.backgroundColor = .white
            sender.setTitle(String("OFF"), for: .normal)
            darkLight.image = #imageLiteral(resourceName: "超级亮灯.png")
        }
        else {
            background.backgroundColor = .black
            sender.setTitle("ON", for: .normal)
            darkLight.image = #imageLiteral(resourceName: "灯.png")
        }
        count+=1
    }
    
}

