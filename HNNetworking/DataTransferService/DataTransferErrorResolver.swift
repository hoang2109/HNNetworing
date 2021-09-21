
import Foundation

public protocol DataTransferErrorResolver {
    func resolve(error: NetworkError) -> Error
}
