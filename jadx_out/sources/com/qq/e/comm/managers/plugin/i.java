package com.qq.e.comm.managers.plugin;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.byazt.pu.TTDownloadField;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
final class i {

    /* renamed from: a, reason: collision with root package name */
    private static volatile String f35369a;

    public static synchronized String a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            String str2 = f35369a;
            if (TextUtils.isEmpty(str2)) {
                return str;
            }
            boolean zEndsWith = str2.endsWith("_");
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(zEndsWith ? "" : "_");
            sb.append(d.a(str2));
            return sb.toString();
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized String a(Context context) {
        ActivityManager.RunningAppProcessInfo next;
        if (!TextUtils.isEmpty(f35369a)) {
            return f35369a;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            f35369a = Application.getProcessName();
            return f35369a;
        }
        int iMyPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
            while (it.hasNext()) {
                try {
                    next = it.next();
                } catch (Exception unused) {
                }
                if (next.pid == iMyPid) {
                    f35369a = next.processName;
                    return f35369a;
                }
                continue;
            }
        }
        return null;
    }
}
