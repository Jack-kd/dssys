package com.byazt.eni;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

@com.byazt.kj.hp(hp = {0, 1, 1905, 38})
/* loaded from: classes2.dex */
public class j {
    @SuppressLint({"PackageManagerGetSignatures"})
    public static byte[] hp(Context context, String str) throws PackageManager.NameNotFoundException {
        PackageManager packageManager = context.getPackageManager();
        if (context.getPackageName().equalsIgnoreCase(str)) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 64);
                if (packageInfo.packageName.equals(str)) {
                    return packageInfo.signatures[0].toByteArray();
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return null;
    }
}
