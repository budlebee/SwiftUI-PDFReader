//
//  ModelCaptureDetection.swift
//  SwiftUI-PDFReader
//
//  Created by zowan on 2021/03/11.
//
import Foundation
import Combine

class ModelCaptureDetection: ObservableObject {
    @Published var isItCaptured: Bool = false
    @Published var isItOnThePDFViewer: Bool = false
    @Published var captureCount: Int = 0
    @Published var isUserBanned: Bool = false
}

