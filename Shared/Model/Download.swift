//
//  Download.swift
//  SwiftUI-PDFReader
//
//  Created by zowan on 2021/03/11.
//

import Foundation


var activeDownloads: [URL: Download] = [:]



class Download {
    
    var book: Book
    init(book: Book) {
        self.book = book
    }
    
    // Download service sets these values:
    var task: URLSessionDownloadTask?
    var isDownloading = false
    var resumeData: Data?
    
    // Download delegate sets this value:
    var progress: Float = 0
    
}

extension Download : Hashable {
    static func == (lhs: Download, rhs: Download) -> Bool {
        return lhs.book == rhs.book && lhs.task == rhs.task && lhs.isDownloading == rhs.isDownloading && lhs.resumeData == rhs.resumeData && lhs.progress == rhs.progress
    }
    
    //* 여기
    func hash(into hasher: inout Hasher) {
        hasher.combine(book)
        hasher.combine(task)
        hasher.combine(isDownloading)
        hasher.combine(resumeData)
        hasher.combine(progress)
    }
}

