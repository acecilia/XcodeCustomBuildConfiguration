import Foundation
import UIKit

@main
struct Main {
    static func main() {
        let principalClassName = NSStringFromClass(Application.self)
        let delegateClassName = NSClassFromString("XCTestCase") == nil ? NSStringFromClass(AppDelegate.self) : nil

        UIApplicationMain(
            CommandLine.argc,
            CommandLine.unsafeArgv,
            principalClassName,
            delegateClassName
        )
    }
}
