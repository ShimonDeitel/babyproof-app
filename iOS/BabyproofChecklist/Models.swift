import Foundation

struct BabyproofChecklistEntry: Identifiable, Codable, Equatable {
    var id: UUID = UUID()
    var createdAt: Date = Date()
    var isDone: Bool
    var room: String
    var notes: String

    init(id: UUID = UUID(), createdAt: Date = Date(), isDone: Bool = false, room: String = "", notes: String = "") {
        self.id = id
        self.createdAt = createdAt
        self.isDone = isDone
        self.room = room
        self.notes = notes
    }
}
