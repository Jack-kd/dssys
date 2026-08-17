package com.beizi.fusion.tool;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

/* loaded from: classes2.dex */
public class PackageUtil {
    private static PackageUtil instance;
    private volatile PackageInfo mPackageInfo;

    public static synchronized PackageUtil getInstance() {
        try {
            if (instance == null) {
                synchronized (PackageUtil.class) {
                    instance = new PackageUtil();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    public PackageInfo getPackageInfo(Context context) {
        if (this.mPackageInfo == null) {
            synchronized (PackageUtil.class) {
                if (this.mPackageInfo == null) {
                    try {
                        this.mPackageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                    } catch (PackageManager.NameNotFoundException e2) {
                        e2.printStackTrace();
                        this.mPackageInfo = null;
                    }
                }
            }
        }
        return this.mPackageInfo;
    }
}
