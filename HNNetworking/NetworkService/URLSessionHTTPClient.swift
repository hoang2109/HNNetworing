
import Foundation

public class URLSessionHTTPClient: HTTPClient {
    
    private let session: URLSession
    
    private struct URLSessionTaskWrapper: Cancellable {
        let wrapped: URLSessionTask
        
        func cancel() {
            wrapped.cancel()
        }
    }
    
    public init(session: URLSession = URLSession.shared) {
        self.session = session
    }
    
    public func request(_ request: URLRequest,
                        completion: @escaping CompletionHandler) -> Cancellable {
        let task = URLSession.shared.dataTask(with: request, completionHandler: completion)
        task.resume()
        return URLSessionTaskWrapper(wrapped: task)
    }
}
