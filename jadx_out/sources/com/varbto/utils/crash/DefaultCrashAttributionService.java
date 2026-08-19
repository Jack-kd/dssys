package com.varbto.utils.crash;

import android.os.Process;
import com.umeng.commonsdk.framework.UMModuleRegister;
import com.varbto.internal.g;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class DefaultCrashAttributionService implements CrashAttributionService {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f50608a = {"com.anythink"};

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f50609b = {"com.google.gms.ads"};

    public static String a(StackTraceElement[] stackTraceElementArr, String[] strArr) {
        int iMin = Math.min(stackTraceElementArr.length, 8);
        for (int i2 = 0; i2 < iMin; i2++) {
            String className = stackTraceElementArr[i2].getClassName();
            for (String str : strArr) {
                if (className != null && className.startsWith(str)) {
                    return str;
                }
            }
        }
        return null;
    }

    public static boolean b(StackTraceElement[] stackTraceElementArr, String[] strArr) {
        if (stackTraceElementArr != null && stackTraceElementArr.length != 0) {
            int iMin = Math.min(stackTraceElementArr.length, 8);
            for (int i2 = 0; i2 < iMin; i2++) {
                String className = stackTraceElementArr[i2].getClassName();
                for (String str : strArr) {
                    if (className != null && className.startsWith(str)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.varbto.utils.crash.CrashAttributionService
    public CrashReport process(Throwable th) {
        boolean z2;
        boolean z3;
        String strA;
        g gVar;
        int i2;
        String strA2;
        g gVar2;
        String str;
        int i3;
        if (th == null) {
            HashMap map = new HashMap();
            map.put("thread", Thread.currentThread().getName());
            return new CrashReport("CRASH-" + System.currentTimeMillis(), g.f50556e, 0, null, "None", map);
        }
        StackTraceElement[] stackTrace = th.getStackTrace();
        String[] strArr = f50608a;
        boolean zB = b(stackTrace, strArr);
        String[] strArr2 = f50609b;
        boolean zB2 = b(stackTrace, strArr2);
        Throwable cause = th.getCause();
        while (true) {
            z2 = false;
            if (cause == null) {
                z3 = false;
                break;
            }
            if (b(cause.getStackTrace(), strArr)) {
                z3 = true;
                break;
            }
            cause = cause.getCause();
        }
        Throwable cause2 = th.getCause();
        while (true) {
            if (cause2 == null) {
                break;
            }
            if (b(cause2.getStackTrace(), strArr2)) {
                z2 = true;
                break;
            }
            cause2 = cause2.getCause();
        }
        String str2 = "SDK";
        if (zB) {
            gVar = g.f50552a;
            strA = a(stackTrace, strArr);
            i2 = 90;
        } else {
            if (zB2) {
                g gVar3 = g.f50554c;
                strA2 = a(stackTrace, strArr2);
                gVar2 = gVar3;
                str = "Network";
                i3 = 85;
                HashMap map2 = new HashMap();
                map2.put("thread", Thread.currentThread().getName());
                map2.put(UMModuleRegister.PROCESS, Process.myUid() + "");
                map2.put("exception", th.getClass().getName());
                return new CrashReport("CRASH-" + System.currentTimeMillis(), gVar2, i3, strA2, str, map2);
            }
            strA = null;
            if (z3) {
                gVar = g.f50553b;
                Throwable cause3 = th.getCause();
                while (true) {
                    if (cause3 == null) {
                        i2 = 70;
                        break;
                    }
                    String strA3 = a(cause3.getStackTrace(), strArr);
                    if (strA3 != null) {
                        i2 = 70;
                        strA = strA3;
                        break;
                    }
                    cause3 = cause3.getCause();
                }
            } else if (z2) {
                g gVar4 = g.f50555d;
                Throwable cause4 = th.getCause();
                while (true) {
                    if (cause4 == null) {
                        str2 = "Network";
                        break;
                    }
                    String strA4 = a(cause4.getStackTrace(), strArr2);
                    if (strA4 != null) {
                        str2 = "Network";
                        strA = strA4;
                        break;
                    }
                    cause4 = cause4.getCause();
                }
                gVar = gVar4;
                i2 = 60;
            } else {
                gVar = g.f50556e;
                str2 = "None";
                i2 = 40;
            }
        }
        strA2 = strA;
        i3 = i2;
        gVar2 = gVar;
        str = str2;
        HashMap map22 = new HashMap();
        map22.put("thread", Thread.currentThread().getName());
        map22.put(UMModuleRegister.PROCESS, Process.myUid() + "");
        map22.put("exception", th.getClass().getName());
        return new CrashReport("CRASH-" + System.currentTimeMillis(), gVar2, i3, strA2, str, map22);
    }
}
