package com.byazt.gjx;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Process;

@com.byazt.kj.hp(hp = {0, 1, 737, 45})
/* loaded from: classes2.dex */
public class e {
    public static int hp(Context context, String str) {
        try {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static boolean hp(Context context) {
        ApplicationInfo applicationInfo;
        return (context == null || (applicationInfo = context.getApplicationInfo()) == null || (applicationInfo.flags & 1) <= 0) ? false : true;
    }
}
