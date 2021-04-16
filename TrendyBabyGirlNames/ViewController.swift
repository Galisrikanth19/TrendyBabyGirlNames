//
//  ViewController.swift
//  TrendyBabyGirlNames
//
//  Created by Srikanth Gali on 25/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var babyImgV: UIImageView!
    @IBOutlet var countDownLabel: UILabel!
    
    @IBOutlet weak var alphabetView: UIView!
    @IBOutlet weak var alphabetImgV: UIImageView!
    
    @IBOutlet weak var viewBubble1: UIView!
    @IBOutlet weak var viewBubble2: UIView!
    @IBOutlet weak var viewBubble3: UIView!
    @IBOutlet weak var viewBubble4: UIView!
    @IBOutlet weak var viewBubble5: UIView!
    
    @IBOutlet weak var viewBubble6: UIView!
    @IBOutlet weak var viewBubble7: UIView!
    @IBOutlet weak var viewBubble8: UIView!
    @IBOutlet weak var viewBubble9: UIView!
    
    @IBOutlet weak var viewBubble10: UIView!
    @IBOutlet weak var viewBubble11: UIView!
    @IBOutlet weak var viewBubble12: UIView!
    @IBOutlet weak var viewBubble13: UIView!
    @IBOutlet weak var viewBubble14: UIView!
    
    let initialRect =  CGRect(x: 75, y: 460, width: 100, height: 100)
    let xPos = 95
    let btnSpace = 38
    let xPos1 = 165
    var count = 15
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeBubbleHideAndUnhide(withState: true)
        babyImgV.layer.cornerRadius = babyImgV.frame.height / 2
        babyImgV.clipsToBounds = true
        
        alphabetImgV.alpha = 0
        UIView.transition(with: self.alphabetImgV!,
                             duration: 1.5,
                             options: [],
                             animations: {
                                self.alphabetImgV.alpha = 1
                             },
                             completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            UIView.transition(with: self.alphabetImgV!,
                                 duration: 1.5,
                                 options: [],
                                 animations: {
                                    self.alphabetImgV.alpha = 0
                                 },
                                 completion: { state in
                                    self.alphabetView.isHidden = true
                                 })
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
            self.initialSetup()
        }
    }
    
    func initialSetup() {
        self.setTimer()
        
        prepareBubble1(WithTimer: 0)
        prepareBubble2(WithTimer: 0.5)
        prepareBubble3(WithTimer: 1.0)
        prepareBubble4(WithTimer: 1.5)
        prepareBubble5(WithTimer: 2.0)
        prepareBubble6(WithTimer: 2.5)
        prepareBubble7(WithTimer: 3.0)
        prepareBubble8(WithTimer: 3.5)
        prepareBubble9(WithTimer: 4.0)
        prepareBubble10(WithTimer: 4.5)
        prepareBubble11(WithTimer: 5.0)
        prepareBubble12(WithTimer: 5.5)
        prepareBubble13(WithTimer: 6.0)
        prepareBubble14(WithTimer: 6.5)
    }
    
    func makeBubbleHideAndUnhide(withState state: Bool) {
            self.viewBubble1.isHidden = state
            self.viewBubble2.isHidden = state
            self.viewBubble3.isHidden = state
            self.viewBubble4.isHidden = state
            self.viewBubble5.isHidden = state
            
            self.viewBubble6.isHidden = state
            self.viewBubble7.isHidden = state
            self.viewBubble8.isHidden = state
            self.viewBubble9.isHidden = state
            
            self.viewBubble10.isHidden = state
            self.viewBubble11.isHidden = state
            self.viewBubble12.isHidden = state
            self.viewBubble13.isHidden = state
            self.viewBubble14.isHidden = state
    }
    
    func prepareBubble1(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble1.frame = self.initialRect
            self.viewBubble1.isHidden = false
            UIView.transition(with: self.viewBubble1!,
                                 duration: 3.0,
                                 options: [],
                                 animations: {
                                    self.viewBubble1.frame = CGRect(x: self.xPos, y: 65, width: 100, height: 100)
                                 },
                                 completion: nil)
        }
    }
    
    func prepareBubble2(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble2.frame = self.initialRect
            self.viewBubble2.isHidden = false
            UIView.transition(with: self.viewBubble2!,
                                 duration: 3.0,
                                 options: [],
                                 animations: {
                                    self.viewBubble2.frame = CGRect(x: (self.xPos+100*1)+self.btnSpace*1, y: 65, width: 100, height: 100)
                                 },
                                 completion: nil)
        }
    }
    
    func prepareBubble3(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble3.frame = self.initialRect
            self.viewBubble3.isHidden = false
            UIView.transition(with: self.viewBubble3!,
                                     duration: 3.0,
                                     options: [],
                                     animations: {
                                        self.viewBubble3.frame = CGRect(x: (self.xPos+100*2)+self.btnSpace*2, y: 65, width: 100, height: 100)
                                     },
                                     completion: nil)
        }
    }
    
    func prepareBubble4(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble4.frame = self.initialRect
            self.viewBubble4.isHidden = false
            UIView.transition(with: self.viewBubble4!,
                                     duration: 3.0,
                                     options: [],
                                     animations: {
                                        self.viewBubble4.frame = CGRect(x: (self.xPos+100*3)+self.btnSpace*3, y: 65, width: 100, height: 100)
                                     },
                                     completion: nil)
        }
    }
    
    func prepareBubble5(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble5.frame = self.initialRect
            self.viewBubble5.isHidden = false
            UIView.transition(with: self.viewBubble5!,
                                     duration: 3.0,
                                     options: [],
                                     animations: {
                                        self.viewBubble5.frame = CGRect(x: (self.xPos+100*4)+self.btnSpace*4, y: 65, width: 100, height: 100)
                                     },
                                     completion: nil)
        }
    }
    
    func prepareBubble6(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble6.frame = self.initialRect
            self.viewBubble6.isHidden = false
            UIView.transition(with: self.viewBubble6!,
                                     duration: 3.0,
                                     options: [],
                                     animations: {
                                        self.viewBubble6.frame = CGRect(x: self.xPos1, y: 182, width: 100, height: 100)
                                     },
                                     completion: nil)
        }
    }
    
    func prepareBubble7(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble7.frame = self.initialRect
            self.viewBubble7.isHidden = false
            UIView.transition(with: self.viewBubble7!,
                                     duration: 3.0,
                                     options: [],
                                     animations: {
                                        self.viewBubble7.frame = CGRect(x: (self.xPos1+100*1)+self.btnSpace*1, y: 182, width: 100, height: 100)
                                     },
                                     completion: nil)
        }
    }
    
    func prepareBubble8(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble8.frame = self.initialRect
            self.viewBubble8.isHidden = false
            UIView.transition(with: self.viewBubble8!,
                                     duration: 3.0,
                                     options: [],
                                     animations: {
                                        self.viewBubble8.frame = CGRect(x: (self.xPos1+100*2)+self.btnSpace*2, y: 182, width: 100, height: 100)
                                     },
                                     completion: nil)
        }
    }
    
    func prepareBubble9(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble9.frame = self.initialRect
            self.viewBubble9.isHidden = false
            UIView.transition(with: self.viewBubble9!,
                                     duration: 3.0,
                                     options: [],
                                     animations: {
                                        self.viewBubble9.frame = CGRect(x: (self.xPos1+100*3)+self.btnSpace*3, y: 182, width: 100, height: 100)
                                     },
                                     completion: nil)
        }
    }
    
    func prepareBubble10(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble10.frame = self.initialRect
            self.viewBubble10.isHidden = false
            UIView.transition(with: self.viewBubble10!,
                                     duration: 3.0,
                                     options: [],
                                     animations: {
                                        self.viewBubble10.frame = CGRect(x: self.xPos, y: 300, width: 100, height: 100)
                                     },
                                     completion: nil)
        }
    }
    
    func prepareBubble11(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble11.frame = self.initialRect
            self.viewBubble11.isHidden = false
            UIView.transition(with: self.viewBubble11!,
                                     duration: 3.0,
                                     options: [],
                                     animations: {
                                        self.viewBubble11.frame = CGRect(x: (self.xPos+100*1)+self.btnSpace*1, y: 300, width: 100, height: 100)
                                     },
                                     completion: nil)
        }
    }
    
    func prepareBubble12(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble12.frame = self.initialRect
            self.viewBubble12.isHidden = false
            UIView.transition(with: self.viewBubble12!,
                                     duration: 3.0,
                                     options: [],
                                     animations: {
                                        self.viewBubble12.frame = CGRect(x: (self.xPos+100*2)+self.btnSpace*2, y: 300, width: 100, height: 100)
                                     },
                                     completion: nil)
        }
    }
    
    func prepareBubble13(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble13.frame = self.initialRect
            self.viewBubble13.isHidden = false
            UIView.transition(with: self.viewBubble13!,
                                     duration: 3.0,
                                     options: [],
                                     animations: {
                                        self.viewBubble13.frame = CGRect(x: (self.xPos+100*3)+self.btnSpace*3, y: 300, width: 100, height: 100)
                                     },
                                     completion: nil)
        }
    }
    
    func prepareBubble14(WithTimer timer: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            self.viewBubble14.frame = self.initialRect
            self.viewBubble14.isHidden = false
            UIView.transition(with: self.viewBubble14!,
                                     duration: 3.0,
                                     options: [],
                                     animations: {
                                        self.viewBubble14.frame = CGRect(x: (self.xPos+100*4)+self.btnSpace*4, y: 300, width: 100, height: 100)
                                     },
                                     completion: nil)
        }
    }
    
    func setTimer() {
        _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.updateTimerValue), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimerValue() {
        if(count > 0) {
            count -= 1
            if count < 10 {
                countDownLabel.text = "0" + String(count)
            }
            else {
                countDownLabel.text = String(count)
            }
        }
        
        if count == 0 {
            makeBubbleHideAndUnhide(withState: true)
        }
    }
}

