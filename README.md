# swiftui-allows-hit-testing-sample
## iOS14
iOS14から `allowsHitTesting()` を利用する方法だと `Toggle` も操作不可になるようになった。
iOS13と同様の挙動を実現するには、disableな場合にonEnded等で何もしないクロージャーを返すようにする。

![iOS14](https://user-images.githubusercontent.com/17519073/105905281-9902e800-6065-11eb-9d40-94c327aad77a.gif)


詳細は [ContentView.swift](https://github.com/taguchi-k/swiftui-allows-hit-testing-sample/blob/master/AllowsHitTestingSample/ContentView.swift) 参照

## iOS13
`allowsHitTesting()` を利用して、 `Gesture` が発火するかどうかをハンドリングするサンプル

* `Toggle` がONのときは `Text` のViewをタップすると背景色が切り替わる
* `Toggle` がOFFの場合は `Text` のViewをタップしても何も起きない

![sample](https://user-images.githubusercontent.com/17519073/88074505-75d91680-cbb2-11ea-982c-8769f53637e3.gif)
