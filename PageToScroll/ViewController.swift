//
//  ViewController.swift
//  PageToScroll
//
//  Created by Milos Stefanovic on 11/8/18.
//  Copyright © 2018 Stefaneli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrolView: UIScrollView!
    var images = [UIImageView]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var contentWith: CGFloat = 0.0
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = view.frame.midX + view.frame.size.width * CGFloat(x)
            
            contentWith += newX
            
            scrolView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 40, y: (view.frame.size.height / 2) - 40, width: 80, height: 80)
        }
        
        scrolView.contentSize = CGSize(width: contentWith, height: view.frame.size.height)
        
    }


}

