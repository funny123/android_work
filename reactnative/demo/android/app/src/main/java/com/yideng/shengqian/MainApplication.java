package com.yideng.shengqian;

import android.app.Application;
import android.widget.Toast;

import com.alibaba.baichuan.android.trade.AlibcTradeSDK;
import com.alibaba.baichuan.android.trade.callback.AlibcTradeInitCallback;
import com.facebook.react.PackageList;
import com.facebook.react.ReactApplication;
import com.facebook.react.ReactNativeHost;
import com.facebook.react.ReactPackage;
import com.facebook.soloader.SoLoader;
import com.yideng.shengqian.BuildConfig;

import java.util.List;

public class MainApplication extends Application implements ReactApplication {

  private final ReactNativeHost mReactNativeHost = new ReactNativeHost(this) {
    @Override
    public boolean getUseDeveloperSupport() {
      return BuildConfig.DEBUG;
    }

    @Override
    protected List<ReactPackage> getPackages() {
      @SuppressWarnings("UnnecessaryLocalVariable")
      List<ReactPackage> packages = new PackageList(this).getPackages();
      // Packages that cannot be autolinked yet can be added manually here, for example:
      // packages.add(new MyReactNativePackage());
      packages.add(new CustomToastPackage());
      return packages;
    }

    @Override
    protected String getJSMainModuleName() {
      return "index";
    }
  };

  @Override
  public ReactNativeHost getReactNativeHost() {
    return mReactNativeHost;
  }

  @Override
  public void onCreate() {
    super.onCreate();
    SoLoader.init(this, /* native exopackage */ false);
    AlibcTradeSDK.asyncInit(this, new AlibcTradeInitCallback() {
      @Override
      public void onSuccess() {
        // 初始化成功，设置相关的全局配置参数
//        Log.e("MyApp", "阿里百川初始化成功");
        Toast.makeText(MainApplication.this, "阿里百川初始化成功", Toast.LENGTH_LONG).show();
      }

      @Override
      public void onFailure(int code, String msg) {
        // 初始化失败，可以根据code和msg判断失败原因，详情参见错误说明
//        Log.e("MyApp", "阿里百川初始化失败---" + code + "---" + msg);
        Toast.makeText(MainApplication.this, "阿里百川初始化失败---" + code + "---" + msg, Toast.LENGTH_LONG).show();
      }
    });

  }
}
