import Foundation
import os.log

/// Internal debug logger. Enable via `Deeplink.setDebug(true)`.
internal enum DeeplinkLogger {
    static var isEnabled = false
    private static let logger = Logger(subsystem: "com.deeplink.sdk", category: "DeeplinkSDK")

    static func log(_ message: String) {
        guard isEnabled else { return }
        // .info is always visible in Xcode's debug console and Console.app
        // (.debug is suppressed by default and requires explicit OS-level config)
        logger.info("[Deeplink] \(message, privacy: .public)")
        print("[Deeplink] \(message)")
    }

    static func error(_ message: String, _ err: Error? = nil) {
        guard isEnabled else { return }
        let suffix = err.map { " — \($0)" } ?? ""
        logger.error("[Deeplink] ❌ \(message, privacy: .public)\(suffix, privacy: .public)")
        print("[Deeplink] ❌ \(message)\(suffix)")
    }
}
