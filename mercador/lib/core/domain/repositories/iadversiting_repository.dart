import 'package:mercador/core/domain/models/adversiting_model.dart';

abstract class IAdversitingRepository{
  Future<AdversitingModel> loadAdversiting();
}