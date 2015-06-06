//
//  ViewController.swift
//  PhotoFilters
//
//  Created by Chaos John on 6/5/15.
//  Copyright (c) 2015 Chaos John. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    let context = CIContext(options: nil)
    
    @IBAction func applyFilter(sender: AnyObject) {
        let inputImage = CIImage(image: photoImageView.image)
        
        let randomColor = [kCIInputAngleKey: (Double(arc4random_uniform(314) / 100))]
        
//        let filteredImage = inputImage.imageByApplyingFilter("CIHueAdjust", withInputParameters: )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

