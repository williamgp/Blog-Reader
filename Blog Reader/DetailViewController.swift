//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by William Peregoy on 2015/9/10.
//  Copyright © 2015年 William Peregoy. All rights reserved.
//

//GET https://www.googleapis.com/blogger/v3/blogs/10861780?key=AIzaSyC288im-osOgcTNj25QkHdoxRMGBu5pE4o


import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var webview: UIWebView!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let wv = self.webview {
                
                wv.loadHTMLString(detail.valueForKey("content")!.description, baseURL: nil)
            
            }
    
        }
    
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

