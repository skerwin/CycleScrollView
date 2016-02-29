//
//  ViewController.swift
//  CycleScrollView
//
//  Created by berchina on 16/2/26.
//  Copyright © 2016年 ZYJ. All rights reserved.
//

import UIKit
//屏幕大小尺寸
let screen_width = UIScreen.mainScreen().bounds.size.width
let screen_height = UIScreen.mainScreen().bounds.size.height

let imagUrl = "http://images.cnblogs.com/cnblogs_com/kenshincui/613474/o_4.jpg"
class ViewController: UIViewController {
    
    var imageArr: [UIImage] = [UIImage]()
    var imageUrlArr:[String] = ["http://images.cnblogs.com/cnblogs_com/kenshincui/613474/o_1.jpg","http://images.cnblogs.com/cnblogs_com/kenshincui/613474/o_2.jpg","http://images.cnblogs.com/cnblogs_com/kenshincui/613474/o_3.jpg","http://images.cnblogs.com/cnblogs_com/kenshincui/613474/o_4.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        for index in 0...3{
          let imagePath = NSBundle.mainBundle().pathForResource(String(index), ofType: "jpg")
          let dataImage = NSData(contentsOfFile: imagePath!)
          let tempImage = UIImage(data: dataImage!)
          imageArr.append(tempImage!)
        }

       //从本地资源加载
       //let advertView = CircleScrollView(frame: CGRectMake(0, 0, screen_width, screen_height), imageArray: imageArr)
        
       //从网络加载
       let advertView = CircleScrollView(frame: CGRectMake(0, 0, screen_width, screen_height), imageUrlArray: imageUrlArr)
        
        self.view.addSubview(advertView)
        advertView.backgroundColor = UIColor.orangeColor()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

