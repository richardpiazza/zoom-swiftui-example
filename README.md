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

2. Frameworks, Libraries, and Embedded Content

* Under the 'General' settings of the 'example' target…
* Click the add ('+') button under 'Frameworks, Libraries, and Embedded Content' and select 'Add Other…', 'Add Files'.
* Select **all** of the files in the `ZoomVideoSDK` folder.
* All of the files will now show in the 'Frameworks' folder in the project navigator.
* Notice though, that nothing shows in the 'Framework, Libraries, and Embedded Content' section.

3. Link Binary With Libraries

* Under the 'Build Phases' settings of the 'example' target…
* Click the add button under 'Link Binary With Libraries' and select 'Add Other…'
* Add the following:
  * libcares.dylib
  * libcrypto.dylib
  * libjson.dylib
  * libminizip.dylib
  * libsll.dylib
  * libzoombase_crypto_shared.dylib
  * ZMDB.framework
  * ZMVideoSDK.framework

