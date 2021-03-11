//
//  StoredPDFBookModel.swift
//  200927-mockup
//
//  Created by 조완 on 2020/09/28.
//  Copyright © 2020 budlebee. All rights reserved.
//

import SwiftUI
import PDFKit

class ModelStoredPDFBook: ObservableObject {
    
    static var sharedStoredPDFBook = ModelStoredPDFBook()
    @Published var storedBookList: [PDFDocument]
    
    init(){
        let fileManager = FileManager.default
        let documentDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
        print(documentDirectory)
        
        // MARK: 일단 try! 로 해두긴 했지만, try 로 바꾸고 do-catch 로 에러핸들링 해줘야함.
        let contents = try! fileManager.contentsOfDirectory(at: documentDirectory, includingPropertiesForKeys: nil, options: .skipsHiddenFiles)
        self.storedBookList = contents.compactMap { PDFDocument(url: $0) }
    }

    func refreshList() {
        let fileManager = FileManager.default
        let documentDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
        print(documentDirectory)
        
        // MARK: 일단 try! 로 해두긴 했지만, try 로 바꾸고 do-catch 로 에러핸들링 해줘야함.
        let contents = try! fileManager.contentsOfDirectory(at: documentDirectory, includingPropertiesForKeys: nil, options: .skipsHiddenFiles)
        self.storedBookList = contents.compactMap { PDFDocument(url: $0) }
        print("list is refreshed")
    }
}

