//
//  WebView.swift
//  H4XOR News demo
//
//  Created by karlis.stekels on 31/03/2021.
//

import Foundation
import WebKit
import SwiftUI

// Uikit view -> Swift Ui
struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
