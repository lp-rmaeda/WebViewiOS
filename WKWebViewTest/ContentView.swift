//
//  ContentView.swift
//  WKWebViewTest
//
//  Created by Ryosuke Maeda on 2021/06/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WebView(url: "https://ts-apac-rmaeda.s3.amazonaws.com/html/dflow_web.html")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
