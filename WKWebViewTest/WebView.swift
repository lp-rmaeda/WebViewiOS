//
//  WebView.swift
//  WKWebViewTest
//
//  Created by Ryosuke Maeda on 2021/06/07.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    let url: String
    private let observable = WebViewURLObservable()

    var observer: NSKeyValueObservation? {
        observable.instance
    }

    // MARK: - UIViewRepresentable
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }

    // MARK: - UIViewRepresentable
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: url)!))
    }
}

// MARK: - ObservableObject
private class WebViewURLObservable: ObservableObject {
    @Published var instance: NSKeyValueObservation?
}
