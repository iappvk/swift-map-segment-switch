//
//  webview.swift
//  uicontrol
//
//  Created by Vijayakumar on 08/09/14.
//  Copyright (c) 2014 Vijayakumar. All rights reserved.
//

import UIKit

class webview: UIViewController, UIWebViewDelegate {
    
    @IBOutlet var forwardBtn : UIButton = nil
    @IBOutlet var backBtn : UIButton = nil
    @IBOutlet var webview : UIWebView = nil
    @IBOutlet var loadingView : UIView = nil
    
    let url="http://mygooi.com/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingView.hidden=true
        let requestURL=NSURL(string: url)
        let request=NSURLRequest(URL: requestURL)
        webview.loadRequest(request)

        
    }
    
    
    func webViewDidStartLoad(webView: UIWebView!){
        
       loadingView.hidden=false
        
    }
    
    func webViewDidFinishLoad(webView: UIWebView!){
        loadingView.hidden=true
    }

    @IBAction func back(sender : AnyObject) {
        webview.goBack()
    }
    
    @IBAction func forward(sender : AnyObject) {
        webview.goForward()
    }
    
}
