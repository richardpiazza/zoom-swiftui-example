codesign --remove-signature ZoomVideoSDK/aomhost.app
codesign --remove-signature ZoomVideoSDK/capHost.app
codesign --remove-signature ZoomVideoSDK/CptHost.app
codesign --preserve-metadata=entitlements --sign "Apple Development: Richard Piazza (K8Q86LGQ7V)" ZoomVideoSDK/aomhost.app
codesign --preserve-metadata=entitlements --sign "Apple Development: Richard Piazza (K8Q86LGQ7V)" ZoomVideoSDK/capHost.app
codesign --preserve-metadata=entitlements --sign "Apple Development: Richard Piazza (K8Q86LGQ7V)" ZoomVideoSDK/CptHost.app
