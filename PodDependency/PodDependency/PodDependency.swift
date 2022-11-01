import UIKit

#if DEBUG
#warning("Config: DEBUG")
public let configuration = "DEBUG"
#else
#warning("Config: RELEASE")
public let configuration = "RELEASE"
#endif
