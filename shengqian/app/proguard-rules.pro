# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
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