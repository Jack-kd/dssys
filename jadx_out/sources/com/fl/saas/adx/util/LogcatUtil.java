package com.fl.saas.adx.util;

import android.util.Log;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public class LogcatUtil {
    private static final String APP_TAG = "FLSdk-LogcatUtil";
    public static boolean isDebug = true;
    private static Logger logger;

    public static void d(String str) {
        if (isDebug()) {
            getMsgFormat(str);
        }
    }

    public static void debug(String str) {
    }

    public static void e(String str) {
        if (isDebug()) {
            Log.e(APP_TAG, getMsgFormat(str));
        }
    }

    private static String getFunctionName() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace == null) {
            return null;
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (!stackTraceElement.isNativeMethod() && !stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(LogcatUtil.class.getName())) {
                return "[ Thread:" + Thread.currentThread().getName() + ", at " + stackTraceElement.getClassName() + com.anythink.core.common.d.i.f2495E + stackTraceElement.getMethodName() + "(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") ]";
            }
        }
        return null;
    }

    private static String getMsgFormat(String str) {
        return str + " ;" + getFunctionName();
    }

    public static void i(String str) {
        if (isDebug()) {
            getMsgFormat(str);
        }
    }

    private static boolean isDebug() {
        return isDebug;
    }

    public static void v(String str) {
        if (isDebug()) {
            getMsgFormat(str);
        }
    }

    public static void w(String str) {
        if (isDebug()) {
            getMsgFormat(str);
        }
    }

    public static void d(String str, String str2) {
        if (!isDebug() || str == null || str.isEmpty() || str2 == null || str2.isEmpty()) {
            return;
        }
        String msgFormat = getMsgFormat(str2);
        if (msgFormat.length() <= 3072) {
            return;
        }
        while (msgFormat.length() > 3072) {
            msgFormat = msgFormat.replace(msgFormat.substring(0, 3072), "");
        }
    }

    public static void debug(Throwable th) {
    }

    public static void e(String str, String str2) {
        if (isDebug()) {
            Log.e(str, getMsgFormat(str2));
        }
    }

    public static void i(String str, String str2) {
        if (isDebug()) {
            getMsgFormat(str2);
        }
    }

    public static void v(String str, String str2) {
        if (isDebug()) {
            getMsgFormat(str2);
        }
    }

    public static void w(String str, String str2) {
        if (isDebug()) {
            getMsgFormat(str2);
        }
    }
}
