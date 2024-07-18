# zoom-swiftui-example
A SwiftUI Example Project for setting up the Zoom Video SDK on macOS.

## Setup Steps

Here's the process used to integrate the SDK into the **Example.xcodeproj**

1. Zoom Video SDK

* Download the latest version of the Zoom SDK and copy the `ZoomVideoSDK` folder to the root of your project directory.
* Enable execute permissions on the `resign-zoom.sh` script
  ```sh
  $ chmod +x resign-zoom.sh
  ```
* Replace the identity of your developer certificate on `resign-zoom.sh`
* Run the resign script to replace the signing identity of the bundle zoom `.app` files
  ```sh
  $ ./resign-zoom.sh
  ```
