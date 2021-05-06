//
//  AppError.swift
//  CollectionViewDemo
//
//  Created by Yoonha Kim on 4/7/21.
//

import Foundation

enum AppError: Error {
    case badUrl
    case serverError
    case badResponse
    case noData
    case parsingFail
    case dequeueCellFailed
    case dataSourceMissing
    case dataUnwrappedFailed
}
