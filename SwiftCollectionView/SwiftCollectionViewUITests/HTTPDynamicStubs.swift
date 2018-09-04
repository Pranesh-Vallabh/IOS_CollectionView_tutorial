//
//  HTTPDynamicStubs.swift
//  SwiftCollectionViewUITests
//
//  Created by Pranesh on 2018/09/03.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

import Foundation
import Swifter

struct HTTPStubInfo {
    let url: String
    let jsonFilename: String
    let method: HTTPMethod
}

enum HTTPMethod {
    case POST
    case GET
}

class HTTPDynamicStubs {
    var server = HttpServer()
    
    func tearDown() {
        server.stop()
    }
    
    func startServer() {
        do {
            try server.start()
        } catch let error {
            print("Server Error: \(error.localizedDescription)")
        }
    }
    
    public func setupStub(url: String, filename: String, method: HTTPMethod = .GET) {
        let testBundle = Bundle(for: type(of: self))
        let filePath = testBundle.path(forResource: filename, ofType: "json")
        let fileUrl = URL(fileURLWithPath: filePath!)
        var data: Data
        do{
            data = try Data(contentsOf: fileUrl, options: .uncached)
        } catch let error {
            print("Data Error: \(error.localizedDescription)")
            return
        }
        
        let json = dataToJSON(data: data)
        
        let response: ((HttpRequest) -> HttpResponse) = { _ in
            return HttpResponse.ok(.json(json as AnyObject))
        }
        
        switch method  {
        case .GET : server.GET[url] = response
        case .POST: server.POST[url] = response
        }
    }
    
    func dataToJSON(data: Data) -> Any? {
        do {
            return try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        } catch let myJSONError {
            print(myJSONError)
        }
        return nil
    }
}
