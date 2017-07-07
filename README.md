# ruby-android-calabash-staff
# Setup Environment You must install:
1. Ruby (https://gist.github.com/huunam118/54771090acfd362d3b52bb6cef935dfa)
2. calabash-android: https://github.com/calabash/calabash-android
3. Android SDK
4. Android emulator (AVD, Genymotion, ...)

# After installed, you need:
1. Create a keystore
https://facebook.github.io/react-native/docs/signed-apk-android.html
2. Run emulator
3. Move to project directory
4. Generate the default structure calabash-android gen
4. Run `bundle install`
3. Run `calabash-android setup` to config keystore for project
4. Run `calabash-android resign *.apk` to resign apk
 
# To check with console:
1. calabash-android console *.apk
2. calabash-android console name.apk
3. start_test_server_in_background
query (https://github.com/calabash/calabash-android/blob/master/documentation/ruby_api.md)
# To start testing:
`calabash-android run *.apk`
