# Xcode Custom Build Configuration

This repository showcases how custom build configurations behave when doing builds with xcodebuild

## Results

The value of the `DefaultConfig` configuration inside the xcode projects is sometimes taken into account:

| Xcode project                | Taken into account |
|------------------------------|--------------------|
| Parent xcode project         | No                 |
| Child xcode project          | Yes                |
| Pods xcode project           | No                 |
| Pods children xcode projects | No                 |

Based on that, the configurations used to build the dependencies are:

|                           | Dependency                                   | PodDependency |
|---------------------------|----------------------------------------------|---------------|
| Debug                     | Debug                                        | Debug         |
| Release                   | Release                                      | Release       |
| CustomDebug               | { Dependency xcode project - defaultConfig } | Release       |
| CustomRelease             | { Dependency xcode project - defaultConfig } | Release       |
| CustomDebugWithPodSetup   | { Dependency xcode project - defaultConfig } | Debug         |
| CustomReleaseWithPodSetup | { Dependency xcode project - defaultConfig } | Release       |

## Observations

* When integrating using xcode:
    * If the children xcode project has a configuration that matches the one selected when building, such configuration will be used
    * If the parent project has a configuration that does not exist in the children, xcode defaults to using the `defaultConfig` of the child xcode project when building dependencies
* When integrating using cocoapods:
    * Cocoapods creates the children xcode projects with the same configurations as the parent xcode project
    * It is possible to specify in the `Podfile` wether the created configurations with type `Debug` or `Release`. If not specified, cocoapods defaults to creating the configurations in the children xcode projects with type `Release`
    * Because children xcode projects have the same configurations as the parent xcode project, the value of `defaultConfig` is never taken into account