package com.byazt.sii;

import android.app.Activity;
import android.content.Context;
import android.os.Process;

@com.byazt.kj.hp(hp = {0, 1, 1175, 34})
/* loaded from: classes3.dex */
public class l {
    public static int hp(Context context, String str) {
        if (str == null) {
            throw new IllegalArgumentException("permission is null");
        }
        try {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static void requestPermissions(Activity activity, String[] strArr, int i2) {
        activity.requestPermissions(strArr, i2);
    }
}
