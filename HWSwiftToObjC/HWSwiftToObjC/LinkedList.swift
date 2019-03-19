//
//  LinkedList.swift
//  HWSwiftToObjC
//
//  Created by Цырендылыкова Эржена on 19/03/2019.
//  Copyright © 2019 Erzhena Tsyrendylykova. All rights reserved.
//

import Foundation
import UIKit

protocol Container {
    associatedtype Item
    var count: Int { get }
    mutating func append(_ item: Item)
    subscript(i: Int) -> Item? { get }
}

class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode<T>?
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T>: Container {
    typealias Item = T
    typealias Node = LinkedListNode<T>
    
    
    private var head: Node? = nil
    
    public init() {}
    
    public var first: Node? {
        return head
    }
    public var last: Node? {
        guard var node = head else {
            return nil
        }
        while let next = node.next {
            node = next
        }
        return node
    }
    
    public func append(_ item: T) {
        let newNode = LinkedListNode(value: item)
        if let lastNode = last {
            lastNode.next = newNode
            newNode.next = nil
        } else {
            head = newNode
        }
    }
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var count: Int {
        guard var node = head else {
            return 0
        }
        var count = 1
        while let next = node.next {
            count += 1
            node = next
        }
        return count
    }
    
    public func node(_ i: Int) -> Node? {
        if i == 0 {
            return head!
        } else {
            var node = head!.next
            for _ in 1..<i {
                node = node?.next
                if node == nil { //(*1)
                    break
                }
            }
            return node!
        }
    }
    
    public subscript(i: Int) -> Item? {
        return node(i)!.value
    }
    
    public func removeAll() {
        head = nil
    }
    
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        var str = "["
        var node = head
        while node != nil {
            str += "\(node!.value)"
            node = node?.next
            if node != nil {
                str += ", "
            }
        }
        str += "]"
        return str
    }
}
