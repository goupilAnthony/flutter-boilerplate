// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GlobalStore on _GlobalStore, Store {
  final _$countNumberAtom = Atom(name: '_GlobalStore.countNumber');

  @override
  int get countNumber {
    _$countNumberAtom.reportRead();
    return super.countNumber;
  }

  @override
  set countNumber(int value) {
    _$countNumberAtom.reportWrite(value, super.countNumber, () {
      super.countNumber = value;
    });
  }

  final _$_GlobalStoreActionController = ActionController(name: '_GlobalStore');

  @override
  void increment() {
    final _$actionInfo = _$_GlobalStoreActionController.startAction(
        name: '_GlobalStore.increment');
    try {
      return super.increment();
    } finally {
      _$_GlobalStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
countNumber: ${countNumber}
    ''';
  }
}
