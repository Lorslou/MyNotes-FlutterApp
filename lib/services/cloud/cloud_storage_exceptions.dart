class CloudStorageException implements Exception {
  const CloudStorageException();
}

// CREATE
class CouldNotCreateNoteException extends CloudStorageException {}

// READ
class CouldNoGetAllNotesException extends CloudStorageException {}

// UPDATE
class CouldNotUpdateNoteException extends CloudStorageException {}

// DELETE
class CouldNotDeleteNoteException extends CloudStorageException {}
