import 'package:flutter/foundation.dart';
import 'package:mynotes/service/cloud/cloud_storage_constans.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@immutable
class CloudNote {
  final String documentId;
  final String ownerUserId;
  final String text;

  CloudNote({
    required this.documentId,
    required this.ownerUserId,
    required this.text,
  });

  CloudNote.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
    : documentId = snapshot.id,
      ownerUserId = snapshot.data()[ownerUserIdFieldName]?.toString() ?? '',
      text = snapshot.data()[textFieldName]?.toString() ?? '';
}
