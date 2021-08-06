import 'dart:async';

enum CounterActio{ Increament,Decreament,REset}



class CounterBloc{


   final _stateStreamContoller= StreamController<int>();

   StreamSink<int> get CounterSink => _stateStreamContoller.sink;
   Stream<int> get CounterStream => _stateStreamContoller.stream;


   ///event listenerer
//
   final _EventStreamContoller= StreamController<CounterActio>();

   StreamSink<CounterActio> get EventSink => _EventStreamContoller.sink;
   Stream<CounterActio> get EventStream => _EventStreamContoller.stream;

   CounterBloc(){
      int counter = 0;

      EventStream.listen((event) {



         if (event == CounterActio.Increament)



            counter++;
         else if (event == CounterActio.Decreament)
            counter--;
         else if (event == CounterActio.REset)



                  //CounterSink.add(6);
         print(counter);
         CounterSink.add(counter);
      }

      );


   }
}