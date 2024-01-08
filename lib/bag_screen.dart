import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class of MyListTile is to adjust the lşst of items
class MyListTile extends StatefulWidget {
  const MyListTile(this._image, this._numberOfItems, this._price, this._title,
      {super.key});
  final String? _price;
  final String? _title;
  final String? _image;
  final String? _numberOfItems;

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  late int _numberOfItemsValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _numberOfItemsValue = int.parse(widget._numberOfItems!);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Color.fromARGB(100, 159, 157, 157),
          ),
        ),
        color: const Color.fromARGB(255, 234, 232, 232),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  image: AssetImage(widget._image!),
                  width: 80,
                  height: 85,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 155,
                    child: Text(
                      widget._title!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Text(
                    widget._price!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 215, 141, 29),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, top: 4),
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    height: 36,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 227, 126, 119),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.delete_forever_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, top: 10),
                  child: Row(
                    children: [
                      IconButton(
                        splashRadius: 20,
                        onPressed: () {
                          setState(() {
                            if (_numberOfItemsValue > 0) {
                              _numberOfItemsValue--;
                            }
                          });
                        },
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.remove),
                      ),
                      Text(
                        _numberOfItemsValue.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _numberOfItemsValue++;
                          });
                        },
                        splashRadius: 20,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BagScreen extends StatefulWidget {
  const BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 232, 232),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 234, 232, 232),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          'Bag Screen',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyListTile(
              'assets/images/bb.png',
              '1',
              '\$300.0',
              'Sheets Brand new Watch, it\'s Beautiful',
            ),
            const MyListTile(
              'assets/images/ba.png',
              '1',
              '\$100.0',
              'MakeUp, Brand new Watch, it\'s Beautiful',
            ),
            const MyListTile(
              'assets/images/bc.png',
              '1',
              '\$340.0',
              'Car',
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Item (3)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 104, 103, 103)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Shipping',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 104, 103, 103)),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        '\$ 740.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '\$ 10.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Text(
              '------------------------------------------------------------',
              style: TextStyle(fontSize: 23),
            ),
            const Padding(
              padding: EdgeInsets.all(13.0),
              child: Row(
                children: [
                  Text(
                    'Total Amount',
                    style: TextStyle(
                      color: Color.fromARGB(255, 215, 141, 29),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$ 750.00',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  label: const Text('Enter Voucher Code'),
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 117, 116, 116),
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                        onTap: () {},
                        child: const Text(
                          'Apply',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 87, 87, 87),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              children: [
                CupertinoButton(
                  child: const Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      Text(
                        'Go Shopping',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
                Expanded(
                  child: CupertinoButton(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 215, 141, 29),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 5,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

