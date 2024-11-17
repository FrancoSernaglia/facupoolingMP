import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "productoname" field.
  String? _productoname;
  String get productoname => _productoname ?? '';
  bool hasProductoname() => _productoname != null;

  // "referencia" field.
  DocumentReference? _referencia;
  DocumentReference? get referencia => _referencia;
  bool hasReferencia() => _referencia != null;

  // "peso" field.
  int? _peso;
  int get peso => _peso ?? 0;
  bool hasPeso() => _peso != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  void _initializeFields() {
    _productoname = snapshotData['productoname'] as String?;
    _referencia = snapshotData['referencia'] as DocumentReference?;
    _peso = castToType<int>(snapshotData['peso']);
    _color = snapshotData['color'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? productoname,
  DocumentReference? referencia,
  int? peso,
  String? color,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productoname': productoname,
      'referencia': referencia,
      'peso': peso,
      'color': color,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.productoname == e2?.productoname &&
        e1?.referencia == e2?.referencia &&
        e1?.peso == e2?.peso &&
        e1?.color == e2?.color;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality()
      .hash([e?.productoname, e?.referencia, e?.peso, e?.color]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
