//
//  ViewController.swift
//  AlarmClock
//
//  Created by 문철현 on 2020/09/06.
//  Copyright © 2020 MCHyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //타이머가 구동되면 실행될 함수
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    let count = 0
    
    var alarmTime :String = ""
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
        
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime(){
        let date = NSDate()   //현재시간을 가져옴
        let formatter = DateFormatter()  //DateFormatter 라는 클래스의 상수 formatter 선언
        
        
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblCurrentTime.text = "현재시간: " + formatter.string(from: date as Date)
        
        formatter.dateFormat = "hh:mm aaa"
        let currentTime = formatter.string(from: date as Date)
        
        if (alarmTime == currentTime){
            view.backgroundColor = UIColor.red
        }
        else{
            view.backgroundColor = UIColor.white
        }
        
        
    }
    
}

