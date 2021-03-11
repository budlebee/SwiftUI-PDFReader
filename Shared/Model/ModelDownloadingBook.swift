//
//  ModelDownloadingBook.swift
//  SwiftUI-PDFReader
//
//  Created by zowan on 2021/03/11.
//

import Foundation
import Combine

class ModelDownloadingBook: ObservableObject {
    @Published var downloadingBookList: [Download] = []
}
