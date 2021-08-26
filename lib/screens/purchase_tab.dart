import 'package:flutter/material.dart';
import 'package:stock_take/constants/lists.dart';

class PurchaseTab extends StatefulWidget {
  const PurchaseTab({Key? key}) : super(key: key);

  @override
  _PurchaseTabState createState() => _PurchaseTabState();
}

class _PurchaseTabState extends State<PurchaseTab> {
  String selectedBrand = 'Chrome';
  String selectedQuantity = '250';
  // TextEditingController spController = TextEditingController();
  // TextEditingController bpController = TextEditingController();

  List<DropdownMenuItem<String>> getBrandList() {
    List<DropdownMenuItem<String>> brands = [];
    for (String brand in brandList) {
      var newBrand = DropdownMenuItem(
        child: Text(brand),
        value: brand,
      );
      brands.add(newBrand);
    }
    return brands;
  }

  List<DropdownMenuItem<String>> getQuantityList() {
    List<DropdownMenuItem<String>> quantities = [];
    for (String quan in quantity) {
      var newQuantity = DropdownMenuItem(
        child: Text(quan),
        value: quan,
      );
      quantities.add(newQuantity);
    }
    return quantities;
  }

  void onChanged(value) {
    setState(() {
      selectedBrand = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    getBrandList();
    getQuantityList();
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Text(
              'Add to Stock',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Card(
              elevation: 3,
              shadowColor: Theme.of(context).accentColor,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Brand',
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            child: DropdownButton<String>(
                              style: TextStyle(
                                fontSize: 20,
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.bold,
                              ),
                              value: selectedBrand,
                              // items: isBrand ? getBrandList() : getQuantityList(),
                              items: getBrandList(),

                              onChanged: (value) {
                                setState(() {
                                  selectedBrand = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Quantity',
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 20),
                          Row(
                            children: [
                              Container(
                                child: DropdownButton<String>(
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Theme.of(context).accentColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  value: selectedQuantity,
                                  // items: isBrand ? getBrandList() : getQuantityList(),
                                  items: getQuantityList(),

                                  onChanged: (value) {
                                    setState(() {
                                      selectedQuantity = value!;
                                    });
                                  },
                                ),
                              ),
                              Text('ml', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 5),
                                labelText: 'Buying Price',
                                prefixText: 'KES ',
                                alignLabelWithHint: true,
                                suffixText: '.00',
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: double.infinity,
                        child: TextFormField(
                          decoration: InputDecoration(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
