//
//  LinkedListObjC.swift
//  HWSwiftToObjC
//
//  Created by Цырендылыкова Эржена on 19/03/2019.
//  Copyright © 2019 Erzhena Tsyrendylykova. All rights reserved.
//

import Foundation


@objc class LinkedListObjC: NSObject {
    private var array: LinkedList<Any?>
    
    override init() {
        array = LinkedList<Any?>()
        super.init()
    }
    
    @objc public var count: Int {
        return array.count
    }
    
    @objc public var isEmpty: Bool {
        return array.isEmpty
    }
    
    @objc public func append(_ item: Any?) {
        array.append(item)
    }
    
}
