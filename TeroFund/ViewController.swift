//
//  ViewController.swift
//  TeroFund
//
//  Created by Вячеслав Тихончук on 8/15/18.
//  Copyright © 2018 TeroFund. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    
    var webViewContainer: UIView!
    var webView: WKWebView!
    
    var hidesBarsOnTap = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let url = URL(string: "https://profitbz.github.io/Terofund-Mobile/dist/")!
        webView.load(URLRequest(url: url))
    }
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

