package com.byazt.tja;

import android.app.Activity;
import android.content.Context;
import android.os.Process;
import androidx.annotation.NonNull;

@com.byazt.kj.hp(hp = {0, 1, 1570, 34})
/* loaded from: classes3.dex */
public class l {
    public static int hp(@NonNull Context context, @NonNull String str) {
        if (str == null) {
            throw new IllegalArgumentException("permission is null");
        }
        try {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static void requestPermissions(@NonNull Activity activity, @NonNull String[] strArr, int i2) {
        activity.requestPermissions(strArr, i2);
    }
}
