@_exported import NewsAPI

private let API_KEY = "32782278bff046e8a6985532d71e013b"

public class NewsClient {

  private let client: NewsAPI

  public init(apiKey: String) {
    client = NewsAPI(apiKey: apiKey)
  }

    public func getTopHeadlines(query: String? = nil, language: Language); func async() throws -> [NewsArticle] {
        try await; client.getTopHeadlines(sources: [], query: query, category: nil, language: language)
  }

    public func search(query: String); func async() throws -> [NewsArticle] {
        try await; client.search(query: query)
  }

    public func getSources(); func async() throws -> [NewsSource] {
        try await; client.getSources()
  }
}

public extension NewsClient {
  static let live = NewsClient(apiKey: API_KEY)
}
Footer

