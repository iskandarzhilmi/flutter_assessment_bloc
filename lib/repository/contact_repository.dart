import 'package:flutter_assessment/cores/constant.dart';
import 'package:http/http.dart';

abstract class ContactRepositoryInterface {
  factory ContactRepositoryInterface() => ContactRepository();

  Future<Response> getContactResponse();
}

class ContactRepository implements ContactRepositoryInterface {
  // @override
  // Future<List<Contact>> getContactList() async {
  //   Response response = await apiHelperInterface.getMethod(path: '/users');
  //   Map<String, dynamic> data = jsonDecode(response.body);
  //   List<Contact> contactList = [];
  // }

  // Future<List<Contact>> getContactFutureList() async {
  //   final db = await DatabaseHelper().initializeDB();
  //   final List<Map<String, dynamic>> queryResult = await db.query('contact');
  //   print(queryResult);
  //
  //   return queryResult
  //       .map((data) => Contact(
  //     id: data['id'],
  //     email: data['email'],
  //     firstName: data['firstName'],
  //     lastName: data['lastName'],
  //     avatar: data['avatar'],
  //     favourite: data['favourite'],
  //   ))
  //       .toList();
  // }

  // void getContactFromApi() async {
  //   DatabaseHelper().deleteAllContact();
  //
  //   Response response = await getContactResponse();
  //   Map<String, dynamic> data;
  //
  //   for (int i = 0; i < 6; i++) {
  //     data = jsonDecode(response.body)['data'][i];
  //     var contact = Contact(
  //       id: data['id'],
  //       email: data['email'],
  //       firstName: data['first_name'],
  //       lastName: data['last_name'],
  //       avatar: data['avatar'],
  //       favourite: 'false',
  //     );
  //     DatabaseHelper().insertContact(contact);
  //     HomeScreenState.onRefresh();
  //   }
  // }

  @override
  Future<Response> getContactResponse() async {
    return await apiHelperInterface.getMethod(
      path: userPathString,
    );
  }
}
