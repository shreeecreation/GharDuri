import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'deletedraft_event.dart';
part 'deletedraft_state.dart';

class DeletedraftBloc extends Bloc<DeletedraftEvent, DeletedraftState> {
  DeletedraftBloc() : super(DeletedraftInitial()) {
    on<DeletedraftEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<DraftDeleteEvent>((event, emit) {
      emit(DraftDeleteState());
    });
  }
}
