//
//  NewsSearchUrl.swift
//  CollectionViewDemo
//
//  Created by Yoonha Kim on 4/15/21.
//

import Foundation

struct NewsSearchUrl {
    
    static var defaultKeyword: String = "Taylor Swift"
    
    var keyword: String
    var publishAt: String
    var toPublishDate: String
    var numbersOfItems: Int
    var pageNumber: Int
    
    init(searchModel: SearchModel ) {
        self.keyword = searchModel.keyword
        self.publishAt = searchModel.publishedFrom
        self.toPublishDate = searchModel.publishedTo
        self.numbersOfItems = searchModel.numbersOfItems
        self.pageNumber = Int.random(in: 1..<5)
    }
    
    static var defaultUrl: String = "https://contextualwebsearch-websearch-v1.p.rapidapi.com/api/search/NewsSearchAPI?q=taylor%20swift&pageNumber=1&pageSize=10&autoCorrect=true&withThumbnails=true&fromPublishedDate=null&toPublishedDate=null"
    
    func getUrl() -> String {
        "https://contextualwebsearch-websearch-v1.p.rapidapi.com/api/search/NewsSearchAPI?q=\(keyword)&pageNumber=\(pageNumber)&pageSize=\(numbersOfItems)&autoCorrect=true&withThumbnails=true&fromPublishedDate=\(publishAt)&toPublishedDate=\(toPublishDate)"
    }
}
