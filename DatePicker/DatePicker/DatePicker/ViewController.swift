//
//  ViewController.swift
//  DatePicker
//
//  Created by 문철현 on 2020/09/05.
//  Copyright © 2020 MCHyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    @IBOutlet var dpDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeDatePicker(dpDatePicker)  //실행되자마자 선택날짜 표시하려구.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
        //lblPickerTime.text = "선택시간: " + formatter.string(from: sender.date)
    }
    
    @objc func updateTime(){
        //lblCurrentTime.text = String(count)
        //count = count + 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = "현재시간: " + formatter.string(from: date as Date)
    }

}

