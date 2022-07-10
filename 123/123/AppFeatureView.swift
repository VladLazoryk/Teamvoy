import SwiftUI
import SearchFeature
import HeadlinesFeature
import SourcesFeature

public struct AppFeatureView: View {

  public init() {}

  public var body: some View {
    TabView {
      HeadlinesView()
        .tabItem {
          Label("Headline", systemImage: "newspaper")
        }
      SearchView()
        .tabItem {
          Label("Search", systemImage: "magnifyingglass")
        }
      SourcesView()
        .tabItem {
          Label("Publishers", systemImage: "person")
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    AppFeatureView()
  }
}
