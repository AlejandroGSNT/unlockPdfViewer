//
//  ViewController2.swift
//  Tables
//
//  Created by Alejandro Gutierrez on 11/4/17.
//  Copyright © 2017 Alejandro Gutierrez. All rights reserved.
//

import UIKit
import WebKit

class ViewController2: UIViewController {
    
    @IBOutlet var webView: WKWebView!
    
    var pdfNameObtained:String?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        showPdf()
    }

    
    func showPdf()
    {
        //get pdf path
        let pdfPath = URL(fileURLWithPath:Bundle.main.path(forResource: pdfNameObtained!, ofType: "pdf", inDirectory:"PDF")!)

        let request = URLRequest(url: pdfPath)
        
        //show  data on webkit
        webView.load(request)
        
        
    }

}
