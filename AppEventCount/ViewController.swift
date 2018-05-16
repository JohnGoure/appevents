//
//  ViewController.swift
//  AppEventCount
//
//  Created by john goure on 5/15/18.
//  Copyright © 2018 john goure. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var willResignActive: UILabel!
    @IBOutlet weak var willTerminateLabel: UILabel!
    
    var launchCount = 0
    var activeCount = 0
    var backgroundCount = 0
    var foregroundCount = 0
    var resignCount = 0
    var terminateCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateView()
    }
    
    func updateView() {
        didFinishLaunchingLabel.text = "The app has launched \(launchCount) time(s)"
        didBecomeActiveLabel.text = "The app has become active \(activeCount) time(s)"
        didEnterBackgroundLabel.text = "The app has entered the background \(backgroundCount) time(s)"
        willEnterForegroundLabel.text = "The app has entered the foreground \(foregroundCount) time(s)"
        willResignActive.text = "The app has reisgn active \(resignCount) time(s)"
        willTerminateLabel.text = "The app has terminated \(terminateCount) time(s)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

