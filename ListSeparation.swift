//
//  ListSeparation.swift
//  
//
//  Created by Denis on 01.04.2020.
//

class Node {
    let value: Int
    var next: Node?

    init(_ value: Int) {
        self.value = value
    }
}

func separate(list: Node?) -> [Node?] {
    var odds: Node?
    var evens: Node?

    var next = list
    while next != nil {
        if let value = next?.value {
            let node = Node(value)

            if value % 2 == 0 {
                node.next = evens
                evens = node
            } else {
                node.next = odds
                odds = node
            }
        }

        next = next?.next
    }

    return [odds, evens]
}
