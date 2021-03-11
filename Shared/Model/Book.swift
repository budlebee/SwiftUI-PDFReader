//
//  ModelBook.swift
//  SwiftUI-PDFReader
//
//  Created by zowan on 2021/03/11.
//

import SwiftUI

struct BookSearchResponse: Codable {
    var bookSearchResults: [Book]
}

// 이미지 url 도 있어야됨.
struct Book: Hashable, Codable {
    var titleKR: String?
    var titleEN: String?
    var authors: [String]
    var isbn13: String
    var categories: [String]
    var downloadRequestURL: String
    var description: String
    var coverImageURL: String?
}
