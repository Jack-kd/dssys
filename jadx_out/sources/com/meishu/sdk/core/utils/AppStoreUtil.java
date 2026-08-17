package com.meishu.sdk.core.utils;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.meishu.sdk.core.safe.SafeBroadcastReceiver;

/* loaded from: classes4.dex */
public class AppStoreUtil {

    /* renamed from: a, reason: collision with root package name */
    public static String f31744a = "";

    /* renamed from: b, reason: collision with root package name */
    public static String[] f31745b;

    /* renamed from: c, reason: collision with root package name */
    public static String[] f31746c;

    /* renamed from: d, reason: collision with root package name */
    public static String[] f31747d;

    public static class InstallReceiver extends SafeBroadcastReceiver {
        @Override // com.meishu.sdk.core.safe.SafeBroadcastReceiver
        public void a(Context context, Intent intent) {
            try {
                context.getPackageManager();
                if (intent.getAction().equals("android.intent.action.PACKAGE_ADDED")) {
                    String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
                    LogUtil.d("AppStoreUtil", "onReceive:  app_added  " + schemeSpecificPart);
                    int intExtra = intent.getIntExtra("android.content.pm.extra.STATUS", 0);
                    String str = AppStoreUtil.f31744a;
                    if (str == null || !TextUtils.equals(schemeSpecificPart, str)) {
                        return;
                    }
                    try {
                        String[] strArr = AppStoreUtil.f31745b;
                        if (strArr != null) {
                            LogUtil.d("AppStoreUtil", "Report send dn_succ");
                            for (String str2 : strArr) {
                                if (!TextUtils.isEmpty(str2)) {
                                    a0.a((Context) null, str2, new i());
                                }
                            }
                        }
                        LogUtil.d("AppStoreUtil", "onDownloaded: 下载完成");
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    try {
                        String[] strArr2 = AppStoreUtil.f31746c;
                        if (strArr2 != null) {
                            LogUtil.d("AppStoreUtil", "Report send dn_inst_start");
                            for (String str3 : strArr2) {
                                if (!TextUtils.isEmpty(str3)) {
                                    a0.a((Context) null, str3, new i());
                                }
                            }
                        }
                        LogUtil.d("AppStoreUtil", "onInstallStart: 开始安装");
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    if (intExtra == 1) {
                        LogUtil.d("AppStoreUtil", "install fail ");
                    } else {
                        LogUtil.d("AppStoreUtil", "install success ");
                        try {
                            String[] strArr3 = AppStoreUtil.f31747d;
                            if (strArr3 != null) {
                                LogUtil.d("AppStoreUtil", "Report send dn_inst_succ");
                                for (String str4 : strArr3) {
                                    if (!TextUtils.isEmpty(str4)) {
                                        a0.a((Context) null, str4, new i());
                                    }
                                }
                            }
                            LogUtil.d("AppStoreUtil", "onInstallStart: 安装成功");
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                    AppStoreUtil.f31744a = null;
                    AppStoreUtil.f31745b = null;
                    AppStoreUtil.f31746c = null;
                    AppStoreUtil.f31747d = null;
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
    }
}
