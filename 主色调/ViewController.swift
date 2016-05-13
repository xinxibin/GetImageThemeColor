//
//  ViewController.swift
//  主色调
//
//  Created by Xinxibin on 16/5/12.
//  Copyright © 2016年 Xinxibin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coverView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var coverView2: UIView!
    
    
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var coverView3: UIView!
    
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var coverView4: UIView!

    @IBOutlet weak var imageView5: UIImageView!
    @IBOutlet weak var coverView5: UIView!

    @IBOutlet weak var imageView6: UIImageView!
    @IBOutlet weak var coverView6: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let rgb = imageView.image!.getPixelColor(CGPointMake(100, 100))
        coverView.backgroundColor = UIColor(red: rgb.red, green: rgb.green, blue: rgb.blue, alpha: 0.7)
        
        let rgb1 = imageView2.image!.getPixelColor(CGPointMake(100, 100))
        coverView2.backgroundColor = UIColor(red: rgb1.red, green: rgb1.green, blue: rgb1.blue, alpha: 0.7)

        let rgb2 = imageView3.image!.getPixelColor(CGPointMake(100, 100))
        coverView3.backgroundColor = UIColor(red: rgb2.red, green: rgb2.green, blue: rgb2.blue, alpha: 0.7)
        
        let rgb3 = imageView4.image!.getPixelColor(CGPointMake(100, 100))
        coverView4.backgroundColor = UIColor(red: rgb3.red, green: rgb3.green, blue: rgb3.blue, alpha: 0.7)

        let rgb4 = imageView5.image!.getPixelColor(CGPointMake(100, 100))
        coverView5.backgroundColor = UIColor(red: rgb4.red, green: rgb4.green, blue: rgb4.blue, alpha: 0.7)
        
        let rgb5 = imageView6.image!.getPixelColor(CGPointMake(100, 100))
        coverView6.backgroundColor = UIColor(red: rgb5.red, green: rgb5.green, blue: rgb5.blue, alpha: 0.7)

    }
}

extension UIImage{
    /**
     获取图片中的像素颜色值
     - parameter pos: 图片大小
     - returns: 颜色值
     */
    func getPixelColor(pos:CGPoint)->(alpha: CGFloat, red: CGFloat, green: CGFloat,blue:CGFloat){
        let pixelData=CGDataProviderCopyData(CGImageGetDataProvider(self.CGImage))
        let data:UnsafePointer<UInt8> = CFDataGetBytePtr(pixelData)
        let pixelInfo: Int = ((Int(self.size.width) * Int(pos.y)) + Int(pos.x)) * 4
        
        let r = CGFloat(data[pixelInfo]) / CGFloat(255.0)
        let g = CGFloat(data[pixelInfo+1]) / CGFloat(255.0)
        let b = CGFloat(data[pixelInfo+2]) / CGFloat(255.0)
        let a = CGFloat(data[pixelInfo+3]) / CGFloat(255.0)
        
        return (a,r,g,b)
    }
    
}