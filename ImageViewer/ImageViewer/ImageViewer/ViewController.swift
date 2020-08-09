//
//  ViewController.swift
//  ImageViewer
//
//  Created by 문철현 on 2020/08/09.
//  Copyright © 2020 MCHyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgViewer: UIImageView!
    
    let maxImgNum = 7  //이미지 샘플은 총 7개로 고정해놓았다.
    var imgIndex = 1  //이미지 파일 번호
    var imgTemp :UIImage?  //이미지 파일 넣어놓을 변수. 옵셔널 : ?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgTemp = UIImage(named: "FalseMan"+String(imgIndex)+".jpg")
        
        imgViewer.image = imgTemp
    }

    @IBAction func btnBefore(_ sender: UIButton) {
        if imgIndex > 1 {
            imgIndex = imgIndex - 1
            imgTemp = UIImage(named: "FalseMan"+String(imgIndex)+".jpg")
            imgViewer.image = imgTemp
        }
        else {
            imgIndex = 1
        }
    }
    
    @IBAction func btnAfter(_ sender: UIButton) {
        if imgIndex < maxImgNum {    //maxImgNum = 7
            imgIndex = imgIndex + 1
            imgTemp = UIImage(named: "FalseMan"+String(imgIndex)+".jpg")
            imgViewer.image = imgTemp
        }
        else {
            imgIndex = maxImgNum
        }
    }
}

