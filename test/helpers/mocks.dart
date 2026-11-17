import 'package:mocktail/mocktail.dart';
import 'package:tokio_seguros/data/repositories/auth/auth_repository.dart';
import 'package:tokio_seguros/data/repositories/family/family_repository.dart';
import 'package:tokio_seguros/data/repositories/policy/policy_repository.dart';
import 'package:tokio_seguros/data/services/family/family_service.dart';
import 'package:tokio_seguros/domain/usecases/auth/get_saved_login.dart';
import 'package:tokio_seguros/domain/usecases/auth/login.dart';
import 'package:tokio_seguros/domain/usecases/auth/register.dart';
import 'package:tokio_seguros/domain/usecases/auth/sign_out.dart';
import 'package:tokio_seguros/domain/usecases/auth/user_current.dart';
import 'package:tokio_seguros/domain/usecases/family/add_family_member.dart';
import 'package:tokio_seguros/domain/usecases/family/get_family_members.dart';
import 'package:tokio_seguros/domain/usecases/family/remove_family_member.dart';
import 'package:tokio_seguros/domain/usecases/policy/get_contracted_policies.dart';

// Repositórios / services
class MockAuthRepository extends Mock implements AuthRepository {}

class MockFamilyRepository extends Mock implements FamilyRepository {}

class MockPolicyRepository extends Mock implements PolicyRepository {}

class MockFamilyService extends Mock implements FamilyService {}

// UseCases
class MockLogin extends Mock implements Login {}

class MockRegister extends Mock implements Register {}

class MockGetSavedLogin extends Mock implements GetSavedLogin {}

class MockUserCurrent extends Mock implements UserCurrent {}

class MockSignOut extends Mock implements SignOut {}

class MockGetFamilyMembers extends Mock implements GetFamilyMembers {}

class MockAddFamilyMember extends Mock implements AddFamilyMember {}

class MockRemoveFamilyMember extends Mock implements RemoveFamilyMember {}

class MockGetContractedPolicies extends Mock implements GetContractedPolicies {}
