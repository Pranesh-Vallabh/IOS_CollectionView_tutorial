// MARK: - Mocks generated from file: Pods/ApiPod/ApiPod/Controllers/ApiListViewable.swift at 2018-09-10 06:06:20 +0000

//
//  BeerListViewProtocol.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Cuckoo
@testable import SwiftCollectionView

class MockApiListViewable: ApiListViewable, Cuckoo.ProtocolMock {
    typealias MocksType = ApiListViewable
    typealias Stubbing = __StubbingProxy_ApiListViewable
    typealias Verification = __VerificationProxy_ApiListViewable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "getApiData", "returnSignature": "", "fullyQualifiedName": "getApiData()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
    public func getApiData()  {
        
            return cuckoo_manager.call("getApiData()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showErrorMessage", "returnSignature": "", "fullyQualifiedName": "showErrorMessage(errorMessage: String)", "parameterSignature": "errorMessage: String", "parameterSignatureWithoutNames": "errorMessage: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "errorMessage", "call": "errorMessage: errorMessage", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("errorMessage"), name: "errorMessage", type: "String", range: CountableRange(245..<265), nameRange: CountableRange(245..<257))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
    public func showErrorMessage(errorMessage: String)  {
        
            return cuckoo_manager.call("showErrorMessage(errorMessage: String)",
                parameters: (errorMessage),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showApiItemList", "returnSignature": "", "fullyQualifiedName": "showApiItemList(itemList: [Modelable])", "parameterSignature": "itemList: [Modelable]", "parameterSignatureWithoutNames": "itemList: [Modelable]", "inputTypes": "[Modelable]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "itemList", "call": "itemList: itemList", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("itemList"), name: "itemList", type: "[Modelable]", range: CountableRange(292..<313), nameRange: CountableRange(292..<300))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
    public func showApiItemList(itemList: [Modelable])  {
        
            return cuckoo_manager.call("showApiItemList(itemList: [Modelable])",
                parameters: (itemList),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_ApiListViewable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getApiData() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockApiListViewable.self, method: "getApiData()", parameterMatchers: matchers))
	    }
	    
	    func showErrorMessage<M1: Cuckoo.Matchable>(errorMessage: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: errorMessage) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApiListViewable.self, method: "showErrorMessage(errorMessage: String)", parameterMatchers: matchers))
	    }
	    
	    func showApiItemList<M1: Cuckoo.Matchable>(itemList: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([Modelable])> where M1.MatchedType == [Modelable] {
	        let matchers: [Cuckoo.ParameterMatcher<([Modelable])>] = [wrap(matchable: itemList) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApiListViewable.self, method: "showApiItemList(itemList: [Modelable])", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ApiListViewable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getApiData() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getApiData()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showErrorMessage<M1: Cuckoo.Matchable>(errorMessage: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: errorMessage) { $0 }]
	        return cuckoo_manager.verify("showErrorMessage(errorMessage: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showApiItemList<M1: Cuckoo.Matchable>(itemList: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [Modelable] {
	        let matchers: [Cuckoo.ParameterMatcher<([Modelable])>] = [wrap(matchable: itemList) { $0 }]
	        return cuckoo_manager.verify("showApiItemList(itemList: [Modelable])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ApiListViewableStub: ApiListViewable {
    

    

    
    public func getApiData()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
    public func showErrorMessage(errorMessage: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
    public func showApiItemList(itemList: [Modelable])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Pods/ApiPod/ApiPod/Repository/ApiDataGetable.swift at 2018-09-10 06:06:20 +0000

//
//  BeerRepositoryProtocol.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Cuckoo
@testable import SwiftCollectionView

class MockApiDataGetable: ApiDataGetable, Cuckoo.ProtocolMock {
    typealias MocksType = ApiDataGetable
    typealias Stubbing = __StubbingProxy_ApiDataGetable
    typealias Verification = __VerificationProxy_ApiDataGetable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "fetchApiData", "returnSignature": "", "fullyQualifiedName": "fetchApiData(_: @escaping ([T]?, Error?) -> Void)", "parameterSignature": "_ completion: @escaping ([T]?, Error?) -> Void", "parameterSignatureWithoutNames": "completion: @escaping ([T]?, Error?) -> Void", "inputTypes": "([T]?, Error?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "completion", "call": "completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "completion", type: "@escaping ([T]?, Error?) -> Void", range: CountableRange(226..<272), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
    public func fetchApiData(_ completion: @escaping ([T:Modelable]?, Error?) -> Void)  {
        
            return cuckoo_manager.call("fetchApiData(_: @escaping ([T]?, Error?) -> Void)",
                parameters: (completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_ApiDataGetable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchApiData<M1: Cuckoo.Matchable>(_ completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(([T]?, Error?) -> Void)> where M1.MatchedType == ([T]?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([T]?, Error?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApiDataGetable.self, method: "fetchApiData(_: @escaping ([T]?, Error?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ApiDataGetable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchApiData<M1: Cuckoo.Matchable>(_ completion: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == ([T]?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([T]?, Error?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("fetchApiData(_: @escaping ([T]?, Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ApiDataGetableStub: ApiDataGetable {
    

    

    
    public func fetchApiData(_ completion: @escaping ([T]?, Error?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Pods/ApiPod/ApiPod/Services/Networkable.swift at 2018-09-10 06:06:20 +0000

//
//  Networkable.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/26.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Cuckoo
@testable import SwiftCollectionView

import Alamofire
import Foundation

class MockNetworkable: Networkable, Cuckoo.ProtocolMock {
    typealias MocksType = Networkable
    typealias Stubbing = __StubbingProxy_Networkable
    typealias Verification = __VerificationProxy_Networkable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "request", "returnSignature": "", "fullyQualifiedName": "request(_: @escaping (DataResponse<Any>?) -> Void)", "parameterSignature": "_ completion: @escaping (DataResponse<Any>?) -> Void", "parameterSignatureWithoutNames": "completion: @escaping (DataResponse<Any>?) -> Void", "inputTypes": "(DataResponse<Any>?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "completion", "call": "completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "completion", type: "@escaping (DataResponse<Any>?) -> Void", range: CountableRange(229..<281), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
    public func request(_ completion: @escaping (DataResponse<Any>?) -> Void)  {
        
            return cuckoo_manager.call("request(_: @escaping (DataResponse<Any>?) -> Void)",
                parameters: (completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_Networkable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func request<M1: Cuckoo.Matchable>(_ completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((DataResponse<Any>?) -> Void)> where M1.MatchedType == (DataResponse<Any>?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((DataResponse<Any>?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNetworkable.self, method: "request(_: @escaping (DataResponse<Any>?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_Networkable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func request<M1: Cuckoo.Matchable>(_ completion: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == (DataResponse<Any>?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((DataResponse<Any>?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("request(_: @escaping (DataResponse<Any>?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class NetworkableStub: Networkable {
    

    

    
    public func request(_ completion: @escaping (DataResponse<Any>?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Pods/ApiPod/ApiPod/Services/Networking.swift at 2018-09-10 06:06:20 +0000

//
//  Networking.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/24.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Cuckoo
@testable import SwiftCollectionView

import Alamofire
import Foundation

class MockNetworking: Networking, Cuckoo.ClassMock {
    typealias MocksType = Networking
    typealias Stubbing = __StubbingProxy_Networking
    typealias Verification = __VerificationProxy_Networking
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    

    

    
    // ["name": "request", "returnSignature": "", "fullyQualifiedName": "request(_: @escaping (DataResponse<Any>?) -> Void)", "parameterSignature": "_ completion: @escaping (DataResponse<Any>?) -> Void", "parameterSignatureWithoutNames": "completion: @escaping (DataResponse<Any>?) -> Void", "inputTypes": "(DataResponse<Any>?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "public", "parameterNames": "completion", "call": "completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "completion", type: "@escaping (DataResponse<Any>?) -> Void", range: CountableRange(276..<328), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
    public override func request(_ completion: @escaping (DataResponse<Any>?) -> Void)  {
        
            return cuckoo_manager.call("request(_: @escaping (DataResponse<Any>?) -> Void)",
                parameters: (completion),
                superclassCall:
                    
                    super.request(completion)
                    )
        
    }
    

	struct __StubbingProxy_Networking: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func request<M1: Cuckoo.Matchable>(_ completion: M1) -> Cuckoo.ClassStubNoReturnFunction<((DataResponse<Any>?) -> Void)> where M1.MatchedType == (DataResponse<Any>?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((DataResponse<Any>?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNetworking.self, method: "request(_: @escaping (DataResponse<Any>?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_Networking: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func request<M1: Cuckoo.Matchable>(_ completion: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == (DataResponse<Any>?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((DataResponse<Any>?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("request(_: @escaping (DataResponse<Any>?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class NetworkingStub: Networking {
    

    

    
    public override func request(_ completion: @escaping (DataResponse<Any>?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: SwiftCollectionView/ApiPodHeader.swift at 2018-09-10 06:06:20 +0000

//
//  BeerPodHeader.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/09/07.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Cuckoo
@testable import SwiftCollectionView

import ApiPod
