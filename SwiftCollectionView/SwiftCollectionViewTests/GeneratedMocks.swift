// MARK: - Mocks generated from file: Pods/BeerPod/BeerPod/Controllers/BeerListViewable.swift at 2018-09-07 06:29:33 +0000

//
//  BeerListViewProtocol.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Cuckoo
@testable import SwiftCollectionView

class MockBeerListViewable: BeerListViewable, Cuckoo.ProtocolMock {
    typealias MocksType = BeerListViewable
    typealias Stubbing = __StubbingProxy_BeerListViewable
    typealias Verification = __VerificationProxy_BeerListViewable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "getBeerData", "returnSignature": "", "fullyQualifiedName": "getBeerData()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
    public func getBeerData()  {
        
            return cuckoo_manager.call("getBeerData()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showErrorMessage", "returnSignature": "", "fullyQualifiedName": "showErrorMessage(errorMessage: String)", "parameterSignature": "errorMessage: String", "parameterSignatureWithoutNames": "errorMessage: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "errorMessage", "call": "errorMessage: errorMessage", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("errorMessage"), name: "errorMessage", type: "String", range: CountableRange(247..<267), nameRange: CountableRange(247..<259))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
    public func showErrorMessage(errorMessage: String)  {
        
            return cuckoo_manager.call("showErrorMessage(errorMessage: String)",
                parameters: (errorMessage),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showBeerList", "returnSignature": "", "fullyQualifiedName": "showBeerList(beers: [Beer])", "parameterSignature": "beers: [Beer]", "parameterSignatureWithoutNames": "beers: [Beer]", "inputTypes": "[Beer]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "beers", "call": "beers: beers", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("beers"), name: "beers", type: "[Beer]", range: CountableRange(291..<304), nameRange: CountableRange(291..<296))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
    public func showBeerList(beers: [Beer])  {
        
            return cuckoo_manager.call("showBeerList(beers: [Beer])",
                parameters: (beers),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_BeerListViewable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getBeerData() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockBeerListViewable.self, method: "getBeerData()", parameterMatchers: matchers))
	    }
	    
	    func showErrorMessage<M1: Cuckoo.Matchable>(errorMessage: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: errorMessage) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockBeerListViewable.self, method: "showErrorMessage(errorMessage: String)", parameterMatchers: matchers))
	    }
	    
	    func showBeerList<M1: Cuckoo.Matchable>(beers: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([Beer])> where M1.MatchedType == [Beer] {
	        let matchers: [Cuckoo.ParameterMatcher<([Beer])>] = [wrap(matchable: beers) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockBeerListViewable.self, method: "showBeerList(beers: [Beer])", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_BeerListViewable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getBeerData() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getBeerData()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showErrorMessage<M1: Cuckoo.Matchable>(errorMessage: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: errorMessage) { $0 }]
	        return cuckoo_manager.verify("showErrorMessage(errorMessage: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showBeerList<M1: Cuckoo.Matchable>(beers: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [Beer] {
	        let matchers: [Cuckoo.ParameterMatcher<([Beer])>] = [wrap(matchable: beers) { $0 }]
	        return cuckoo_manager.verify("showBeerList(beers: [Beer])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class BeerListViewableStub: BeerListViewable {
    

    

    
    public func getBeerData()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
    public func showErrorMessage(errorMessage: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
    public func showBeerList(beers: [Beer])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Pods/BeerPod/BeerPod/Repository/BeerDataGetable.swift at 2018-09-07 06:29:33 +0000

//
//  BeerRepositoryProtocol.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Cuckoo
@testable import SwiftCollectionView

class MockBeerDataGetable: BeerDataGetable, Cuckoo.ProtocolMock {
    typealias MocksType = BeerDataGetable
    typealias Stubbing = __StubbingProxy_BeerDataGetable
    typealias Verification = __VerificationProxy_BeerDataGetable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "fetchBeerData", "returnSignature": "", "fullyQualifiedName": "fetchBeerData(_: @escaping ([Beer]?, Error?) -> Void)", "parameterSignature": "_ completion: @escaping ([Beer]?, Error?) -> Void", "parameterSignatureWithoutNames": "completion: @escaping ([Beer]?, Error?) -> Void", "inputTypes": "([Beer]?, Error?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "completion", "call": "completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "completion", type: "@escaping ([Beer]?, Error?) -> Void", range: CountableRange(213..<262), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
    public func fetchBeerData(_ completion: @escaping ([Beer]?, Error?) -> Void)  {
        
            return cuckoo_manager.call("fetchBeerData(_: @escaping ([Beer]?, Error?) -> Void)",
                parameters: (completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_BeerDataGetable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchBeerData<M1: Cuckoo.Matchable>(_ completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(([Beer]?, Error?) -> Void)> where M1.MatchedType == ([Beer]?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([Beer]?, Error?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockBeerDataGetable.self, method: "fetchBeerData(_: @escaping ([Beer]?, Error?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_BeerDataGetable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchBeerData<M1: Cuckoo.Matchable>(_ completion: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == ([Beer]?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([Beer]?, Error?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("fetchBeerData(_: @escaping ([Beer]?, Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class BeerDataGetableStub: BeerDataGetable {
    

    

    
    public func fetchBeerData(_ completion: @escaping ([Beer]?, Error?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Pods/BeerPod/BeerPod/Services/Networkable.swift at 2018-09-07 06:29:33 +0000

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


// MARK: - Mocks generated from file: Pods/BeerPod/BeerPod/Services/Networking.swift at 2018-09-07 06:29:33 +0000

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

    

    

    
    // ["name": "request", "returnSignature": "", "fullyQualifiedName": "request(_: @escaping (DataResponse<Any>?) -> Void)", "parameterSignature": "_ completion: @escaping (DataResponse<Any>?) -> Void", "parameterSignatureWithoutNames": "completion: @escaping (DataResponse<Any>?) -> Void", "inputTypes": "(DataResponse<Any>?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "public", "parameterNames": "completion", "call": "completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "completion", type: "@escaping (DataResponse<Any>?) -> Void", range: CountableRange(285..<337), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
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


// MARK: - Mocks generated from file: SwiftCollectionView/BeerPodHeader.swift at 2018-09-07 06:29:33 +0000

//
//  BeerPodHeader.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/09/07.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Cuckoo
@testable import SwiftCollectionView

import BeerPod
