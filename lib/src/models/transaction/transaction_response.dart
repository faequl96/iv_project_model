import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/converters/date_time_converter.dart';
import 'package:iv_project_model/src/enums/midtrans_transaction_status_type.dart';
import 'package:iv_project_model/src/enums/payment_method_type.dart';
import 'package:iv_project_model/src/enums/product_type.dart';
import 'package:iv_project_model/src/enums/transaction_status_type.dart';

class TransactionResponse extends Equatable {
  const TransactionResponse({
    required this.id,
    required this.transactionCode,
    required this.productType,
    required this.productName,
    required this.productDescription,
    required this.status,
    required this.paymentMethod,
    required this.referenceNumber,
    required this.paymentURL,
    required this.acquirer,
    required this.midtransStatus,
    this.timeLimitAt,
    required this.idrPrice,
    required this.idrDiscount,
    required this.idrTotalPrice,
    required this.ivcPrice,
    required this.ivcDiscount,
    required this.ivcTotalPrice,
    required this.voucherCodeId,
    required this.voucherCodeName,
    required this.idrVoucherCodeDiscount,
    required this.ivcVoucherCodeDiscount,
    required this.paymentProofImageUrl,
    required this.createdAt,
  });

  final String id;
  final String transactionCode;
  final ProductType productType;
  final String productName;
  final String productDescription;
  final TransactionStatusType status;
  final PaymentMethodType paymentMethod;
  final String referenceNumber;
  final String paymentURL;
  final String acquirer;
  final MidtransTransactionStatusType midtransStatus;
  final DateTime? timeLimitAt;
  final int idrPrice;
  final int idrDiscount;
  final int idrTotalPrice;
  final int ivcPrice;
  final int ivcDiscount;
  final int ivcTotalPrice;
  final int voucherCodeId;
  final String voucherCodeName;
  final int idrVoucherCodeDiscount;
  final int ivcVoucherCodeDiscount;
  final String paymentProofImageUrl;
  final DateTime? createdAt;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) {
    return TransactionResponse(
      id: json['id'],
      transactionCode: json['transaction_code'],
      productType: ProductTypeExtension.fromJson(json['product_type']),
      productName: json['product_name'],
      productDescription: json['product_description'],
      status: TransactionStatusTypeExtension.fromJson(json['status']),
      paymentMethod: PaymentMethodTypeExtension.fromJson(json['payment_method']),
      referenceNumber: json['reference_number'],
      paymentURL: json['payment_url'],
      acquirer: json['acquirer'],
      midtransStatus: MidtransTransactionStatusTypeExtension.fromJson(json['midtrans_status']),
      timeLimitAt: DateTimeConverter.fromJson(json['time_limit_at'] ?? ''),
      idrPrice: json['idr_price'],
      idrDiscount: json['idr_discount'],
      idrTotalPrice: json['idr_total_price'],
      ivcPrice: json['ivc_price'],
      ivcDiscount: json['ivc_discount'],
      ivcTotalPrice: json['ivc_total_price'],
      voucherCodeId: json['voucher_code_id'],
      voucherCodeName: json['voucher_code_name'],
      idrVoucherCodeDiscount: json['idr_voucher_code_discount'],
      ivcVoucherCodeDiscount: json['ivc_voucher_code_discount'],
      paymentProofImageUrl: json['payment_proof_image_url'],
      createdAt: DateTimeConverter.fromJson(json['created_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'transaction_code': transactionCode,
      'product_type': productType.toJson(),
      'product_name': productName,
      'product_description': productDescription,
      'status': status.toJson(),
      'payment_method': paymentMethod.toJson(),
      'reference_number': referenceNumber,
      'payment_url': paymentURL,
      'acquirer': acquirer,
      'midtrans_status': midtransStatus.toJson(),
      'time_limit_at': DateTimeConverter.toJson(createdAt),
      'idr_price': idrPrice,
      'idr_discount': idrDiscount,
      'idr_total_price': idrTotalPrice,
      'ivc_price': ivcPrice,
      'ivc_discount': ivcDiscount,
      'ivc_total_price': ivcTotalPrice,
      'voucher_code_id': voucherCodeId,
      'voucher_code_name': voucherCodeName,
      'idr_voucher_code_discount': idrVoucherCodeDiscount,
      'ivc_voucher_code_discount': ivcVoucherCodeDiscount,
      'payment_proof_image_url': paymentProofImageUrl,
      'created_at': DateTimeConverter.toJson(createdAt),
    };
  }

  @override
  List<Object?> get props => [
    id,
    transactionCode,
    productType,
    productName,
    productDescription,
    status,
    paymentMethod,
    referenceNumber,
    paymentURL,
    acquirer,
    midtransStatus,
    timeLimitAt,
    idrPrice,
    idrDiscount,
    idrTotalPrice,
    ivcPrice,
    ivcDiscount,
    ivcTotalPrice,
    voucherCodeId,
    voucherCodeName,
    idrVoucherCodeDiscount,
    ivcVoucherCodeDiscount,
    paymentProofImageUrl,
    createdAt,
  ];
}
