//
//  ViewController.swift
//  WKWebViewNSURL
//
//  Created by David Kraus on 11/07/16.
//  Copyright © 2016 davidkraus. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    let webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.view = webView

        let mainBundle = NSBundle.mainBundle()

        let folder = mainBundle.resourceURL

        var theURL = NSURL(fileURLWithPath: "www/index.html", relativeToURL: folder)

        // using this line the WKWebView loads the resource !?
//        theURL = NSURL(string: theURL.absoluteString)!

        webView.loadFileURL(theURL, allowingReadAccessToURL: theURL)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

