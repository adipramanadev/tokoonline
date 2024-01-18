import 'dart:convert';

import 'dart:io';

import 'package:tokoonline/models/models.dart';
import 'package:http/http.dart' as http;

part 'user_services.dart';
part 'food_services.dart';
part 'transaction_services.dart';

String baseURL = 'http://192.168.76.123:8000/api';
