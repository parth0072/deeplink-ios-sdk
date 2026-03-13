import Foundation
import os.log

/// Internal debug logger. Enable via `Deeplink.setDebug(true)`.
internal enum DeeplinkLogger {
    static var isEnabled = false
    private static let logger = Logger(subsystem: "com.deeplink.sdk", category: "DeeplinkSDK")

    static func log(_ message: String) {
        guard isEnabled else { return }
        logger.debug("[Deeplink] \(message, privacy: .public)")
        // Also print to console for Xcode debug area
        print("[Deeplink] \(message)")
    }

    static func error(_ message: String) {
        guard isEnabled else { return }
        logger.error("[Deeplink] ❌ \(message, privacy: .public)")
        print("[Deeplink] ❌ \(message)")
    }
}
