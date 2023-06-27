import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  var data = 'Hello World';

  List<int> dataToSend = utf8.encode(data);
  int port = 3000;

  //Server
  RawDatagramSocket.bind(InternetAddress.loopbackIPv4, port)
      .then((RawDatagramSocket udpSocket) {
    udpSocket.listen((RawSocketEvent event) {
      if (event == RawSocketEvent.read) {
        Datagram dg = udpSocket.receive() as Datagram;
        print(utf8.decode(dg.data));
      }
    });

    //client
    udpSocket.send(dataToSend, InternetAddress.loopbackIPv4, port);
    print('Sent!');
  });
}
