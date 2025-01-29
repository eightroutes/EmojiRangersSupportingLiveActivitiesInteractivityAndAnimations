/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The widget bundle.
*/

import WidgetKit
import SwiftUI

@main
struct EmojiRangersWidgetBundle: WidgetBundle {
    var body: some Widget {
        EmojiRangerWidget()
#if os(iOS) || os(macOS) || targetEnvironment(macCatalyst)
        EmojiRangerControl()
        LeaderboardWidget()
#endif
#if canImport(ActivityKit)
        AdventureActivityConfiguration()
#endif
    }
}

