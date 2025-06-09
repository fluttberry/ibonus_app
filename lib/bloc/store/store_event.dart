// ignore_for_file: public_member_api_docs, sort_constructors_first
class StoreEvent {}

class StoreGetEvent extends StoreEvent {
  String? search;
  List <String>? type;
  StoreGetEvent({
    this.search,
    this.type,
  });
}
