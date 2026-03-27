class Note {
  String title;
  String content;
  DateTime createdAt;

  // Constructor
  Note(this.title, this.content) : createdAt = DateTime.now();
}

class NotesApp {
  List<Note> notes = [];

  // Add new note
  void addNote(String title, String content) {
    Note newNote = Note(title, content);
    notes.add(newNote);
    print("Note added successfully!");
  }

  // List all notes
  void listNotes() {
    if (notes.isEmpty) {
      print("No notes available.");
      return;
    }

    for (var note in notes) {
      print("Title: ${note.title}");
      print("Content: ${note.content}");
      print("Created At: ${note.createdAt}");
      print("-------------------");
    }
  }

  // Search note by title
  void searchNote(String title) {
    for (var note in notes) {
      if (note.title == title) {
        print("Note found!");
        print("Title: ${note.title}");
        print("Content: ${note.content}");
        print("Created At: ${note.createdAt}");
        return;
      }
    }

    print("Note not found.");
  }
}

void main() {
  NotesApp app = NotesApp();

  app.addNote("Shopping", "Buy milk and eggs");
  app.addNote("Study", "Review OOP concepts");

  print("\nAll Notes:");
  app.listNotes();

  print("\nSearch Result:");
  app.searchNote("Study");
}