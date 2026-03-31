# SwiftUI macOS FocusState

## 简介

演示 SwiftUI 中 FocusState（焦点管理）的用法。

## 快速开始

```bash
cd swiftui-macos-focusstate-demo
xcodegen generate
open SwiftUIFocusStateDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### FocusState

```swift
@FocusState private var focusedField: FocusField?

TextField("...", text: $text)
    .focused($focusedField, equals: .firstName)
```

## 完整讲解（中文）

### FocusState 用途

- 管理文本框焦点
- 编程式控制焦点转移
- 支持键盘导航