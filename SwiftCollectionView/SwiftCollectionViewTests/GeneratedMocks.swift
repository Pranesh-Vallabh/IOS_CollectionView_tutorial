// MARK: - Mocks generated from file: Pods/ApiPod/ApiPod/Services/Networkable.swift at 2018-09-10 10:27:04 +0000

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


// MARK: - Mocks generated from file: Pods/ApiPod/ApiPod/Services/Networking.swift at 2018-09-10 10:27:04 +0000

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


// MARK: - Mocks generated from file: SwiftCollectionView/ApiPodHeader.swift at 2018-09-10 10:27:04 +0000

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
