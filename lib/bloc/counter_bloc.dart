import 'package:rxdart/rxdart.dart';

class CounterBloc {

  int initialCount = 0;
  BehaviorSubject<int> _subjectCounter;

  Observable<int> get observableCounter => _subjectCounter.stream;

  CounterBloc({this.initialCount}) {
    _subjectCounter = new BehaviorSubject<int>.seeded(this.initialCount);
  }

  void incrementCounter()
  {
    initialCount ++;
    _subjectCounter.sink.add(initialCount);
  }

  void decrementCounter()
  {
    initialCount --;
    _subjectCounter.sink.add(initialCount);
  }

  void dispose()
  {
    _subjectCounter.close();
  }
}