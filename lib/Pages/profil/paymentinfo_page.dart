import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:dongengku/data.dart';
import 'package:dongengku/template.dart';

class PaymentInfoPage extends StatefulWidget {
  @override
  _PaymentInfoPageState createState() => _PaymentInfoPageState();
}

class _PaymentInfoPageState extends State<PaymentInfoPage> with SingleTickerProviderStateMixin{

  TabController pengendali;

  @override
  void initState(){
    pengendali = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose(){
    pengendali.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xfffbfef3),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff50c9c0),
        title: Text(
          'Pembayaran',
          style: TextStyle(
              color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          TabBar(
            controller: pengendali,
            indicatorColor: Color(0xff50c9c0),
            unselectedLabelColor: Color(0xffcbcbcb),
            labelColor: Color(0xff50c9c0),
            tabs: [
              Tab(
                  child: Text(
                    'Pembelian',
                    style: TextStyle(
                      fontSize: defaultHeight / 41,
                    ),
                  )
              ),
              Tab(
                  child: Text(
                    'Penerimaan',
                    style: TextStyle(
                        fontSize: defaultHeight / 41
                    ),
                  )
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(defaultHeight / 50),
              child: TabBarView(
                controller: pengendali,
                children: <Widget>[
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Hari ini',
                            style: TextStyle(
                              color: Color(0xff50c9c0),
                              fontSize: defaultHeight / 41
                            ),
                        ),
                        Divider(thickness: 2.0, color: Color(0xff50c9c0), height: defaultHeight / 30),
                        CardDubbingPurchase(bukti: buktiPembelianDubbing1),
                        CardDubbingPurchase(bukti: buktiPembelianDubbing2),
                        CardStoryPurchase(bukti: buktiPembelianCerita1),
                        CardStoryPurchase(bukti: buktiPembelianCerita2),
                        Text(
                          'Kemarin',
                          style: TextStyle(
                              color: Color(0xff50c9c0),
                              fontSize: defaultHeight / 41
                          ),
                        ),
                        Divider(thickness: 2.0, color: Color(0xff50c9c0), height: defaultHeight / 30),
                        CardDubbingPurchase(bukti: buktiPembelianDubbing3),
                        CardStoryPurchase(bukti: buktiPembelianCerita3),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hari ini',
                          style: TextStyle(
                              color: Color(0xff50c9c0),
                              fontSize: defaultHeight / 41
                          ),
                        ),
                        Divider(thickness: 2.0, color: Color(0xff50c9c0), height: defaultHeight / 30),
                        CardReceipt(bukti: buktiTerimaDubbing1),
                        Text(
                          'Kemarin',
                          style: TextStyle(
                              color: Color(0xff50c9c0),
                              fontSize: defaultHeight / 41
                          ),
                        ),
                        Divider(thickness: 2.0, color: Color(0xff50c9c0), height: defaultHeight / 30),
                        CardReceipt(bukti: buktiTerimaDubbing2),
                        CardReceipt(bukti: buktiTerimaDubbing3),
                        Text(
                          '19 Desember 2020',
                          style: TextStyle(
                              color: Color(0xff50c9c0),
                              fontSize: defaultHeight / 41
                          ),
                        ),
                        Divider(thickness: 2.0, color: Color(0xff50c9c0), height: defaultHeight / 30),
                        CardReceipt(bukti: buktiTerimaDubbing4),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
