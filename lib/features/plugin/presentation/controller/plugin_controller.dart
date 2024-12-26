import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:login_firebase/core/shared_pref_manager.dart';
import 'package:login_firebase/shared/app_routes.dart';

class PluginController extends GetxController {
  final SharedPrefManager sharedPrefManager;

  PluginController(this.sharedPrefManager);

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> saveQRCode(String? qrNumber, String? qrCodeData) async {
    if (qrNumber == null ||
        qrNumber.isEmpty ||
        qrCodeData == null ||
        qrCodeData.isEmpty) {
      Get.snackbar(
        'Error',
        'QR Code or number is null or empty!',
        snackPosition: SnackPosition.TOP,
      );
      return;
    }

    try {
      await firestore
          .collection('qr_codes')
          .doc("${sharedPrefManager.getMobileNumber()}-${qrNumber}")
          .set({
        'mobile': sharedPrefManager.getMobileNumber(),
        'qr_number': qrNumber,
        'qr_code_data': qrCodeData,
        'last_login_time': DateTime.now().toString(),
      });
      Get.snackbar(
        'Success',
        'QR Code and number saved successfully!',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Get.theme.secondaryHeaderColor,
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to save QR Code and number. Please try again!',
        snackPosition: SnackPosition.TOP,
      );
      print('Error saving QR Code and number: $e');
    }
  }

  void logout() {
    sharedPrefManager.clear();
    Get.offNamed(AppRoute.login);
  }
}
