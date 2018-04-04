//
//  ViewController.swift
//  Aliean Image Anymation
//
//  Created by D7703_15 on 2018. 4. 4..
//  Copyright © 2018년 D7703_15. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myimageview: UIImageView!
    @IBOutlet weak var counter: UILabel!
    var index = 1
    var back = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 첫번째 이미지 보이기
        myimageview.image = UIImage(named: "frame1.png")
        counter.text = "1"
    }
    
    @IBAction func update(_ sender: Any) {
        //myimageview.image = UIImage(named: "frame2.png")
        //index = index + 1
        //counter.text = String(index)
        
        if index == 5 {
            back = 0
        } else if index == 1{
            back = 1
        }
        if back == 1 {
            index += 1
        } else if back == 0{
            index = index - 1
        }
        myimageview.image = UIImage(named: "frame\(index).png")
        counter.text = String(index)
    }
    
}

