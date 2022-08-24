import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CompanyInfoEvent {
  abstract int eventType;
}

class CompanyInfoLoading extends CompanyInfoEvent {
  @override
  int eventType = 0;
}

class CompanyInfoResponse extends CompanyInfoEvent {
  @override
  int eventType = 1;
}

class CompanyInfoBloc extends Bloc {
  CompanyInfoBloc(super.initialState);

  @override
  CompanyInfoEvent get initialState => CompanyInfoLoading();

  @override
  Stream mapEventToState(CompanyInfoEvent event) async* {
    switch (event.eventType) {
      case 0:
        yield state - 1;
        break;
      case 1:
        yield state + 1;
        break;
    }
  }
}
