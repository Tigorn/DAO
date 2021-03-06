//
//  RLMTypes.swift
//  DAO
//
//  Created by Ivan Vavilov on 5/17/17.
//  Copyright © 2017 RedMadRobot LLC. All rights reserved.
//

import UIKit
import RealmSwift
import Realm


/// Protocol for implement wrappers for standard types that Realm can't save now.
/// Use it if you want to save collection of standard type in Realm.
public protocol RLMPrimitiveType: class {
    
    associatedtype A

    var value: A { get set }
    
    init(val: A)
}


/// String wrapper
open class RLMString: Object, RLMPrimitiveType {

    public required init(val: String) {
        value = val
        super.init()
    }

    public required init(value: Any, schema: RLMSchema) {
        fatalError("init(value:schema:) has not been implemented")
    }
    
    public required init(realm: RLMRealm, schema: RLMObjectSchema) {
        super.init(realm: realm, schema: schema)
    }
    
    required public init() {
        super.init()
    }
    
    public typealias A = String
    
    @objc public dynamic var value: String = ""

}


/// Integer wrapper
open class RLMInteger: Object, RLMPrimitiveType {
    
    public required init(val: Int) {
        value = val
        super.init()
    }
    
    public required init(value: Any, schema: RLMSchema) {
        fatalError("init(value:schema:) has not been implemented")
    }
    
    public required init(realm: RLMRealm, schema: RLMObjectSchema) {
        super.init(realm: realm, schema: schema)
    }
    
    required public init() {
        super.init()
    }

    public typealias A = Int
    
    @objc public dynamic var value: Int = 0

}


/// Double wrapper
open class RLMDouble: Object, RLMPrimitiveType {
    
    public required init(val: Double) {
        value = val
        super.init()
    }
    
    public required init(value: Any, schema: RLMSchema) {
        fatalError("init(value:schema:) has not been implemented")
    }
    
    public required init(realm: RLMRealm, schema: RLMObjectSchema) {
        super.init(realm: realm, schema: schema)
    }
    
    required public init() {
        super.init()
    }
    
    public typealias A = Double
    
    @objc public dynamic var value: Double = 0.0
    
}


/// Float wrapper
open class RLMFloat: Object, RLMPrimitiveType {
    
    public required init(val: Float) {
        value = val
        super.init()
    }
    
    public required init(value: Any, schema: RLMSchema) {
        fatalError("init(value:schema:) has not been implemented")
    }
    
    public required init(realm: RLMRealm, schema: RLMObjectSchema) {
        super.init(realm: realm, schema: schema)
    }
    
    required public init() {
        super.init()
    }
    
    public typealias A = Float
    
    @objc public dynamic var value: Float = 0.0
    
}


/// Bool wrapper
open class RLMBool: Object, RLMPrimitiveType {
    
    public required init(val: Bool) {
        value = val
        super.init()
    }
    
    public required init(value: Any, schema: RLMSchema) {
        fatalError("init(value:schema:) has not been implemented")
    }
    
    public required init(realm: RLMRealm, schema: RLMObjectSchema) {
        super.init(realm: realm, schema: schema)
    }
    
    required public init() {
        super.init()
    }
    
    public typealias A = Bool
    
    @objc public dynamic var value: Bool = false
    
}


/// Date wrapper
open class RLMDate: Object, RLMPrimitiveType {
    
    public required init(val: Date) {
        super.init()
    }
    
    public required init(value: Any, schema: RLMSchema) {
        fatalError("init(value:schema:) has not been implemented")
    }
    
    public required init(realm: RLMRealm, schema: RLMObjectSchema) {
        super.init(realm: realm, schema: schema)
    }
    
    required public init() {
        super.init()
    }
    
    public typealias A = Date
    
    @objc public dynamic var value: Date = Date()
    
}


/// Data wrapper
open class RLMData: Object, RLMPrimitiveType {
    
    public required init(val: Data) {
        value = val
        super.init()
    }
    
    public required init(value: Any, schema: RLMSchema) {
        fatalError("init(value:schema:) has not been implemented")
    }
    
    public required init(realm: RLMRealm, schema: RLMObjectSchema) {
        super.init(realm: realm, schema: schema)
    }
    
    required public init() {
        super.init()
    }
    
    public typealias A = Data
    
    @objc public dynamic var value: Data = Data()

}
