// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'firebase_auth_repository.g.dart';

// class AuthRepository {
//   AuthRepository(this._auth);

//   final FirebaseAuth _auth;

//   Stream<User?> authStateChanges() => _auth.authStateChanges();
//   User? get currentUser => _auth.currentUser;

//   Future<UserCredential> signInAnonymously() {
//     return _auth.signInAnonymously();
//   }

//   Future<void> signOut() {
//     return _auth.signOut();
//   }
// }

// @Riverpod(keepAlive: true)
// FirebaseAuth firebaseAuth(FirebaseAuthRef ref) {
//   return FirebaseAuth.instance;
// }

// @Riverpod(keepAlive: true)
// AuthRepository authRepository(AuthRepositoryRef ref) {
//   return AuthRepository(ref.watch(firebaseAuthProvider));
// }

// @Riverpod(keepAlive: true)
// Stream<User?> authStateChanges(AuthStateChangesRef ref) {
//   return ref.watch(authRepositoryProvider).authStateChanges();
// }
