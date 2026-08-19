package com.sigmob.sdk.base.utils;

import android.util.Log;

/* loaded from: classes4.dex */
public class p {
    public static String a() {
        return Log.getStackTraceString(new Throwable());
    }

    public static String a(Throwable th) {
        return Log.getStackTraceString(th);
    }

    public static String a(String... strArr) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StringBuilder sb = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTrace) {
            int length = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                    break;
                }
                if (stackTraceElement.getClassName().startsWith(strArr[i2])) {
                    break;
                }
                i2++;
            }
        }
        return sb.toString();
    }

    public static void a(String str, String str2) {
        for (StackTraceElement stackTraceElement : new Throwable().getStackTrace()) {
            String className = stackTraceElement.getClassName();
            if (str2 == null || className.contains(str2)) {
                stackTraceElement.getMethodName();
                stackTraceElement.getFileName();
                stackTraceElement.getLineNumber();
            }
        }
    }
}
