package com.byazt.zg;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.byazt.pu.TTDownloadField;
import java.lang.reflect.Method;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 308, 157})
/* loaded from: classes3.dex */
public class b {
    public static String hp;

    public static boolean hp(Context context) {
        String packageName;
        try {
            packageName = context.getPackageName();
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(packageName)) {
            return false;
        }
        return packageName.equalsIgnoreCase(l(context));
    }

    private static String jx(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (context == null) {
            return null;
        }
        int iMyPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == iMyPid) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return null;
    }

    public static String l(Context context) {
        if (!TextUtils.isEmpty(hp)) {
            return hp;
        }
        String strHp = hp();
        hp = strHp;
        if (!TextUtils.isEmpty(strHp)) {
            return hp;
        }
        String strL = l();
        hp = strL;
        if (!TextUtils.isEmpty(strL)) {
            return hp;
        }
        String strJx = jx(context);
        hp = strJx;
        return strJx;
    }

    private static String hp() {
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        try {
            return Application.getProcessName();
        } catch (Exception unused) {
            return null;
        }
    }

    private static String l() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
