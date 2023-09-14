//
//  MovieResponseModel.swift
//  ReelQuest
//
//  Created by Goldianus Solangius on 13/09/23.
//

import Foundation


// MARK: - Result
struct Result: Codable {
  let adult: Bool
  let backdropPath: String
  let genreids: [Int]
  let id: Int
  let originalLanguage: OriginalLanguage?
  let originalTitle: String
  let overview: String
  let popularity: Double
  let posterPath: String
  let releaseDate: String
  let title: String
  let video: Bool
  let voteAverage: Double
  let voteCount: Int
  
  enum CodingKeys: String, CodingKey {
    case adult = "adult"
    case backdropPath = "backdrop_path"
    case genreids = "genre_ids"
    case id = "id"
    case originalLanguage = "original_language"
    case originalTitle = "original_title"
    case overview = "overview"
    case popularity = "popularity"
    case posterPath = "poster_path"
    case releaseDate = "release_date"
    case title = "title"
    case video = "video"
    case voteAverage = "vote_average"
    case voteCount = "vote_count"
  }
  
  init(adult: Bool, backdropPath: String, genreids: [Int], id: Int, originalLanguage: OriginalLanguage?, originalTitle: String, overview: String, popularity: Double, posterPath: String, releaseDate: String, title: String, video: Bool, voteAverage: Double, voteCount: Int) {
    self.adult = adult
    self.backdropPath = backdropPath
    self.genreids = genreids
    self.id = id
    self.originalLanguage = originalLanguage
    self.originalTitle = originalTitle
    self.overview = overview
    self.popularity = popularity
    self.posterPath = posterPath
    self.releaseDate = releaseDate
    self.title = title
    self.video = video
    self.voteAverage = voteAverage
    self.voteCount = voteCount
  }
}

enum OriginalLanguage: String, Codable {
  case en = "en"
  case hi = "hi"
}
