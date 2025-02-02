# shalot

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

2. 프로젝트 클론
bash
git clone https://github.com/your-username/trade_connect.git
cd trade_connect

3. 의존성 패키지 설치
flutter pub get

4. 환경 설정
- `lib/config/` 디렉토리에서 환경 설정 파일 수정
- API 엔드포인트 설정
- 소켓 서버 주소 설정

### 실행 방법

개발 모드로 실행:
```bash
flutter run
```

릴리즈 모드로 실행:
```bash
flutter run --release
```

### 빌드 방법

Android APK 빌드:
```bash
flutter build apk
```

iOS IPA 빌드:
```bash
flutter build ios
```

## 주요 기능

- 사용자 인증 (로그인/회원가입)
- 실시간 채팅
- 상품 등록 및 거래
- 구독 시스템
- 거래 수수료 계산
- AI 챗봇 (오프라인 모드)

## 프로젝트 구조

```
lib/
├── main.dart
├── config/
│   ├── routes.dart
│   └── theme.dart
├── models/
│   ├── user.dart
│   ├── product.dart
│   └── subscription.dart
├── screens/
│   ├── auth/
│   ├── home/
│   ├── chat/
│   └── profile/
├── services/
│   ├── socket_service.dart
│   ├── auth_service.dart
│   └── chat_service.dart
└── widgets/
    ├── common/
    └── custom/
```

## 개발 가이드

### 코드 스타일
- Flutter 공식 스타일 가이드를 따릅니다
- `flutter analyze` 명령어로 코드 품질 검사

### 테스트
```bash
# 단위 테스트 실행
flutter test

# 특정 테스트 파일 실행
flutter test test/widget_test.dart
```

### 디버깅
- VS Code나 Android Studio의 디버거 사용
- Flutter DevTools 활용

## 배포

### Android
1. `key.properties` 파일 설정
2. 릴리즈 빌드 생성
3. Google Play Console에 업로드

### iOS
1. Apple Developer 계정 설정
2. 인증서 및 프로비저닝 프로파일 설정
3. App Store Connect에 업로드

## 문제 해결

일반적인 오류와 해결 방법:

1. 빌드 오류
```bash
flutter clean
flutter pub get
```

2. 의존성 충돌
- `pubspec.yaml` 파일에서 버전 호환성 확인
- Flutter SDK 버전 확인

3. 실행 시 오류
- 에뮬레이터/시뮬레이터 재시작
- Flutter 캐시 정리

## 기여 방법

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 라이선스

이 프로젝트는 MIT 라이선스로 배포됩니다. 자세한 내용은 `LICENSE` 파일을 참조하세요.

## 연락처

프로젝트 관리자 - [@your_twitter](https://twitter.com/your_username)

프로젝트 링크: [https://github.com/your-username/trade_connect](https://github.com/your-username/trade_connect)