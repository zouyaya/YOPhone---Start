//
//  ViewController.swift
//  YOPhone - Start
//
//  Created by yangou on 2018/10/20.
//  Copyright © 2018年 hello. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var avplayer : AVAudioPlayer!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initIalizeView()
    }

    
    
    func initIalizeView() {
        
        let button1 = UIButton(frame: CGRect(x: 10, y: 40, width: self.view.frame.size.width - 20, height: 50))
        button1.backgroundColor = UIColor.red
        button1.tag = 1
        button1 .addTarget(self, action: #selector(pressToSound), for: .touchUpInside)
        self.view .addSubview(button1)
        
      
        let button2 = UIButton(frame: CGRect(x: 10, y: 100, width: self.view.frame.size.width - 20, height: 50))
        button2.backgroundColor = UIColor.green
        button2.tag = 2
        button2 .addTarget(self, action: #selector(pressToSound), for: .touchUpInside)
        self.view .addSubview(button2)
        
        
        let button3 = UIButton(frame: CGRect(x: 10, y: 160, width: self.view.frame.size.width - 20, height: 50))
        button3.backgroundColor = UIColor.gray
        button3.tag = 3
        button3 .addTarget(self, action: #selector(pressToSound), for: .touchUpInside)
        self.view .addSubview(button3)
        
        
        
        let button4 = UIButton(frame: CGRect(x: 10, y: 220, width: self.view.frame.size.width - 20, height: 50))
        button4.backgroundColor = UIColor.cyan
        button4.tag = 4
        button4 .addTarget(self, action: #selector(pressToSound), for: .touchUpInside)
        self.view .addSubview(button4)
        
        
        let button5 = UIButton(frame: CGRect(x: 10, y: 280, width: self.view.frame.size.width - 20, height: 50))
        button5.backgroundColor = UIColor.black
        button5.tag = 5
        button5 .addTarget(self, action: #selector(pressToSound), for: .touchUpInside)
        self.view .addSubview(button5)
        
        
        let button6 = UIButton(frame: CGRect(x: 10, y: 340, width: self.view.frame.size.width - 20, height: 50))
        button6.backgroundColor = UIColor.blue
        button6.tag = 6
        button6 .addTarget(self, action: #selector(pressToSound), for: .touchUpInside)
        self.view .addSubview(button6)
        
        
        let button7 = UIButton(frame: CGRect(x: 10, y: 400, width: self.view.frame.size.width - 20, height: 50))
        button7.backgroundColor = UIColor.brown
        button7.tag = 7
        button7 .addTarget(self, action: #selector(pressToSound), for: .touchUpInside)
        self.view .addSubview(button7)
        
        
      
        
        
        
    }
    
    
   @objc func pressToSound(button:UIButton){
   
    let soundURL = Bundle.main.url(forResource: "note\(button.tag)", withExtension: "wav")

    try! avplayer = AVAudioPlayer(contentsOf: soundURL!)
    
//    do{
//        
//        avplayer = try AVAudioPlayer(contentsOf: soundURL!)
//        
//    }catch{
//        
//        print(error);
//        
//    }
   
    avplayer.play()
    
}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

