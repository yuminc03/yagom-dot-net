# YagomDotNet

**YagomDotNet** 워크스페이스는 🐻[야곰닷넷 - 오토레이아웃 정복하기](https://yagom.net/courses/autolayout) 온라인 강의를 들으면서 직접 실습한 연습문제 파일들을 포함하고 있습니다. 오토레이아웃, 스택 뷰 등 UI 구성에 필요한 핵심 개념들을 실습해볼 수 있는 예제들로 구성되어 있습니다.

## 📂 포함된 프로젝트 (Contents)

이 워크스페이스는 다음과 같은 하위 프로젝트들을 포함합니다:

*   **MasterTheAutoLayout**: 다양한 오토레이아웃 제약조건 실습
*   **ProfileViewChallengeExample**: 프로필 화면 UI 구현 챌린지
*   **SimpleConstraints**: 기초적인 제약조건 설정 예제
*   **SimpleStackViewExample**: `UIStackView`를 활용한 레이아웃 구성 예제
*   **VarietySolutionsExample**: 다양한 문제 해결 상황에 대한 예제

## ⚙️ 요구사항 (Requirements)

이 프로젝트들을 문제없이 빌드하고 실행하기 위해 다음 환경을 권장합니다:

*   **iOS Deployment Target**: iOS 16.0 이상 (일부 최신 설정은 iOS 18.1을 타겟으로 함)
*   **Xcode**: 최신 버전 권장 (iOS 18 SDK 지원 필요)
*   **Swift Version**: Swift 5.0 이상

## 🚀 설치 및 실행 방법 (Installation & Usage)

1.  **프로젝트 클론 (Clone)**
    터미널에서 이 저장소를 로컬 머신에 다운로드합니다.
    ```bash
    git clone https://github.com/yagom-academy/yagom-dot-net.git
    cd yagom-dot-net
    ```
    *(참고: 원격 저장소 URL은 실제 상황에 맞게 수정해주세요.)*

2.  **워크스페이스 열기**
    반드시 `.xcodeproj` 파일이 아닌 **`YagomDotNet.xcworkspace`** 파일을 열어야 합니다. 워크스페이스를 통해 모든 하위 프로젝트를 한 번에 관리할 수 있습니다.
    ```bash
    open YagomDotNet.xcworkspace
    ```

3.  **프로젝트 실행**
    *   Xcode 상단의 **Active Scheme** 메뉴(재생 버튼 옆)를 클릭합니다.
    *   실행하고자 하는 프로젝트(예: `MasterTheAutoLayout`)를 선택합니다.
    *   `Cmd + R` 키를 누르거나 재생(Run) 버튼을 클릭하여 시뮬레이터에서 앱을 실행합니다.

## 📝 라이선스 (License)
해당 프로젝트의 라이선스 정보는 각 소스코드의 헤더나 별도의 `LICENSE` 파일을 참고하시기 바랍니다.
