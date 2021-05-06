//
//  FileHandler.swift
//  NewsAppDemo
//
//  Created by Yoonha Kim on 4/22/21.
//

import UIKit

class FileHandler {
    
    static let manager = FileHandler()
    
    let useFileHandler = FileManager.default
    
    private init() {}
    
    func getPath() -> URL {
        guard let url = useFileHandler.urls(for: .documentDirectory, in: .userDomainMask).first else { fatalError("Failed Message") }
        let newFolderUrl = url.appendingPathComponent("Test Folder")
        return newFolderUrl
    }
    
    func createLogsFile() {
        let fileURLProject = Bundle.main.path(forResource: "logs", ofType: "txt")
        let fileUrl = getPath().appendingPathComponent("logs.txt")
        do { try useFileHandler.copyItem(atPath: fileURLProject ?? "", toPath: fileUrl.path)
        } catch {
            print(error)
        }
    }
        
    func writeFile(fileName: String, fileType: String, text: String) {
        let fileNameWithPath: String = "\(fileName).\(fileType)"
        let fileUrl = getPath().appendingPathComponent(fileNameWithPath)
        if useFileHandler.fileExists(atPath: fileUrl.path) {
            do {
                guard let fileContents = useFileHandler.contents(atPath: fileUrl.path) else { return }
                let fileContentsAsString = String(bytes: fileContents, encoding: .utf8)
                let fullText = "\(String(describing: fileContentsAsString) ):\(text)"
                guard let data = fullText.data(using: .utf8) else { return }
                try data.write(to: fileUrl)
            } catch {
                print(error)
            }
        } else {
            print("File is not existed")
        }
    }
    
    func removeFile(fileName: String, fileType: String) {
        let fileNameWithPath: String = "\(fileName).\(fileType)"
        let fileUrl = getPath().appendingPathComponent(fileNameWithPath)
        if useFileHandler.fileExists(atPath: fileUrl.path) {
            do {
                try useFileHandler.removeItem(at: fileUrl)
            } catch {
                print(error)
            }
        } else {
            print("File is not existed")
        }
    }
    
    func readFile(filename: String, type: String) -> String {
        let fileURLProject = Bundle.main.path(forResource: filename, ofType: type)
        guard let fileContents = useFileHandler.contents(atPath: fileURLProject ?? "") else { return "" }
        let fileContentsAsString = String(bytes: fileContents, encoding: .utf8)
        return fileContentsAsString ?? ""
    }
}
