//
//  ViewController.swift
//  HandwritingTimer
//
//  Created by MURAKAMI on 2018/01/15.
//  Copyright © 2018年 MURAKAMI. All rights reserved.
//

import UIKit
import RxSwift
import ACEDrawingView
import PopupDialog
import AudioToolbox

class ViewController: UIViewController {
    
    @IBOutlet weak var minutes10digitsView: ACEDrawingView!
    @IBOutlet weak var minutes1digitsView: ACEDrawingView!
    @IBOutlet weak var seconds10digitsView: ACEDrawingView!
    @IBOutlet weak var seconds1digitsView: ACEDrawingView!
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        minutes10digitsView.backgroundColor = .white
        minutes1digitsView.backgroundColor = .white
        seconds10digitsView.backgroundColor = .white
        seconds1digitsView.backgroundColor = .white

//        view.backgroundColor = UIColor(patternImage: UIImage(named: "bg.jpg")!).withAlphaComponent(0.1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: ACEDrawingViewDelegate {
    func drawingView(_ view: ACEDrawingView!, willBeginDrawUsing tool: ACEDrawingTool!) {
        
    }
    
    func drawingView(_ view: ACEDrawingView!, didEndDrawUsing tool: ACEDrawingTool!) {
        
    }
}

