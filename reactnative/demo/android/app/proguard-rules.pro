# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /usr/local/Cellar/android-sdk/24.3.3/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:
#阿里百川
-keepattributes Signature
-keep class sun.misc.Unsafe { *; }
-keep class com.alibaba.** {*;}
-dontwarn com.alibaba.**
-keep class com.alipay.** {*;}
-dontwarn com.alipay.**
-keep class com.taobao.** {*;}
-dontwarn com.taobao.**
-keep class com.ut.** {*;}
-dontwarn com.ut.**
-keep class com.ta.** {*;}
-dontwarn com.ta.**
-keep class mtopsdk.** {*;}
-dontwarn mtopsdk.**
-keep class org.json.** {*;}
-keep class com.ali.auth.**  {*;}
-dontwarn com.ali.auth.**
-dontwarn com.alimama.**
-keep class com.alimama.** {*;}
-keeppackagenames com.alimama.tunion.sdk.**
-keeppackagenames com.alimama.tunion.sdk.**
-keep class com.alimama.tunion.sdk.** {
    public <fields>;
    public <methods>;
}

