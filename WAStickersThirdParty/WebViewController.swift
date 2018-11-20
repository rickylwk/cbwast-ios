//
//  WebViewController.swift
//  WAStickersThirdParty
//
//  Created by James Tang on 20/11/2018.
//  Copyright © 2018 Rikki Mobile Ltd. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBInspectable var resourcePath: String!
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        guard let path = Bundle.main.path(forResource: resourcePath, ofType: "") else {
            return
        }
        let url = URL(fileURLWithPath: path)
        webView.loadFileURL(url, allowingReadAccessTo: url)
    }

}
