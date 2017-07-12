# https://help.github.com/articles/basic-writing-and-formatting-syntax/#paragraphs-and-line-breaks
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
#query element in mobile 
1.query textbox  
query("android.widget.EditText")  
1.query button  
query("android.widget.Button marked:'Register'")  
1.query every element with text is Register 
query("* marked:'Register'") 
1. query for text 
query("android.support.v7.widget.AppCompatTextView marked:'Register Staff'") 
1. 
https://github.com/calabash/calabash-android/blob/master/migrating_to_calabash_0.5.md
1. Run manual each test case
calabash-android  run FramgiaStaff.apk features/tc_02_stafflist.feature manual=true
