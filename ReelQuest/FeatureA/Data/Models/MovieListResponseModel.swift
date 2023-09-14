//
//  MovieListResponseModel.swift
//  ReelQuest
//
//  Created by Goldianus Solangius on 13/09/23.
//

import Foundation

// MARK: - BaseData
struct MovieListResponseModel: Codable {
  let page: Int
  let results: [Result]
  let totalPages: Int
  let totalResults: Int
  
  enum CodingKeys: String, CodingKey {
    case page = "page"
    case results = "results"
    case totalPages = "total_pages"
    case totalResults = "total_results"
  }
  
  init(page: Int, results: [Result], totalPages: Int, totalResults: Int) {
    self.page = page
    self.results = results
    self.totalPages = totalPages
    self.totalResults = totalResults
  }
}
