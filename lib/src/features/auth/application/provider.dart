//Providers
import 'package:chat_app/src/features/auth/data/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository();
});

final authStateProvider = StreamProvider<User?>((ref) {
  return ref.read(authRepositoryProvider).authStateChange;
});

final userDetailsProvider = Provider.autoDispose<User?>((ref) {
  return ref.read(authRepositoryProvider).userDetails;
});
