import UIKit
import PodDependency

class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)

        // Customize here with your own UIViewController
        let rootViewController = UIViewController()
        rootViewController.title = "First screen is green"
        rootViewController.view.backgroundColor = UIColor.green
        window.rootViewController = UINavigationController(rootViewController: rootViewController)

        window.makeKeyAndVisible()

        self.window = window

        print(PodDependency.configuration)

        return true
    }
}
