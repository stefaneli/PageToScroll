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

    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWith: CGFloat = 0.0
        
        let scrolWidth = scrolView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            print("Scrollvie with: \(scrolView.frame.size.width)")
            
            newX = scrolWidth / 2 + scrolWidth * CGFloat(x)
            
            contentWith += newX
            
            scrolView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrolView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        scrolView.clipsToBounds = false
        scrolView.contentSize = CGSize(width: contentWith, height: view.frame.size.height)
    }


}

