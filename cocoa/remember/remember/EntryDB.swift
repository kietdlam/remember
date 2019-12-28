//
//  EntryDB.swift
//  remember
//
//  Created by Bogdan Popa on 27/12/2019.
//  Copyright © 2019 CLEARTYPE SRL. All rights reserved.
//

import Foundation

struct Entry: Identifiable & Decodable {
    let id: UInt32
    let title: String
}

enum CommitResult {
    case ok(Entry)
    case error(Error)
}

protocol EntryDB {
    func commit(command: String, withCompletionHandler: @escaping (CommitResult) -> Void)
    func archiveEntry(byId: UInt32, withCompletionHandler: @escaping () -> Void)
}