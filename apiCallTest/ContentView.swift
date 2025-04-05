import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .task {
          // Define the endpoint url with parameters
          
          let urlString = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLyo6W3g1j4QZ2qB1uRi-x3A0xCcc1w-C1&key={YOUR_API_KEY}"
          
          // Create URL instance
          let url = URL(string: urlString)
          
          if let url = url {
            // Create URLRequest instance
            let request = URLRequest(url: url)
            
            do {
              // Send the request with URLSession
              let (data, response) = try await URLSession.shared.data(for: request)
              
              // Print out the response
              print(data)
              print(response)
            }
            catch {
              // Handle errors
              print(error)
            }

          }
          
        }
    }
}

#Preview {
    ContentView()
}
