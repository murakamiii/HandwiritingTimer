//
//  TimerModel.swift
//  HandwritingTimer
//
//  Created by MURAKAMI on 2018/01/28.
//  Copyright © 2018年 MURAKAMI. All rights reserved.
//

import Foundation
import RxSwift
import AudioToolbox

class TimerModel {
    private let targetTime: Date
    var remainTime : Variable<Int>
    
    var countDownTimer: Timer?
    var goalTimer: Timer?
    // まだ実装しない
//    init(targetDate: Date) {
//        targetTime = targetDate
//    }
    
    init(remainTime: Int) {
        self.targetTime = Date().addingTimeInterval(TimeInterval(remainTime))
        self.remainTime = Variable(remainTime)
        setAlertTime()
    }
    
    func setAlertTime() {
        goalTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(remainTime.value), repeats: false) {[weak self] _ in
            self?.countDownTimer?.invalidate()
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
        }
        countDownTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {[weak self] _ in
            self?.remainTime.value -= 1
        }
    }
    
    func stop() {
        goalTimer?.invalidate()
        countDownTimer?.invalidate()
    }
}
