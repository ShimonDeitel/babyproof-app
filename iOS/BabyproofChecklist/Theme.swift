import SwiftUI

/// Unique palette for Babyproof Checklist: safe reassuring forest green.
enum Theme {
    static let accent = Color(hex: "#5CAA6B")
    static let accentDeep = Color(hex: "#1A3A22")
    static let background = Color(hex: "#0C1710")
    static let cardBackground = Color(hex: "#0C1710").opacity(0.6)
    static let textPrimary = Color.white
    static let textSecondary = Color.white.opacity(0.6)

    static let titleFont = Font.system(.title2, design: .rounded).weight(.bold)
    static let bodyFont = Font.system(.body, design: .rounded)
    static let captionFont = Font.system(.caption, design: .rounded)
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r = Double((int >> 16) & 0xFF) / 255.0
        let g = Double((int >> 8) & 0xFF) / 255.0
        let b = Double(int & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
