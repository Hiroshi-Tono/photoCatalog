//
//  DetailViewController.swift
//  photoCatalog
//
//  Created by 遠野ひろし on 2019/01/08.
//  Copyright © 2019 遠野工房. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    
    


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let imageView = self.photoImageView {
                imageView.image = UIImage(named: detail)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
        self.title = "Borderless一覧"
    }

    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

