package com.czhj.sdk.common.utils;

import android.os.Looper;
import com.czhj.sdk.logger.SigmobLog;
import java.util.IllegalFormatException;

/* loaded from: classes3.dex */
public final class Preconditions {

    /* renamed from: a, reason: collision with root package name */
    private static final String f29503a = "";

    public static final class NoThrow {

        /* renamed from: a, reason: collision with root package name */
        private static volatile boolean f29504a = true;

        public static boolean checkArgument(boolean z2) {
            return Preconditions.b(z2, f29504a, "Illegal argument", "");
        }

        public static boolean checkNotNull(Object obj) {
            return Preconditions.b(obj, f29504a, (String) null, "");
        }

        public static boolean checkUiThread(String str) {
            return Preconditions.b(f29504a, str, "");
        }

        public static String getLineInfo() {
            try {
                StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
                return stackTraceElement.getFileName() + ": Line " + stackTraceElement.getMethodName();
            } catch (Throwable unused) {
                return "";
            }
        }

        public static boolean checkArgument(boolean z2, String str) {
            return Preconditions.b(z2, f29504a, str, "");
        }

        public static boolean checkNotNull(Object obj, String str) {
            return Preconditions.b(obj, f29504a, str, "");
        }
    }

    private Preconditions() {
    }

    private static String a(String str, Object... objArr) {
        String strValueOf = String.valueOf(str);
        try {
            return String.format(strValueOf, objArr);
        } catch (IllegalFormatException e2) {
            SigmobLog.e("Sigmob preconditions had a format exception: " + e2.getMessage());
            return strValueOf;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Object obj, boolean z2, String str, Object... objArr) {
        if (obj != null) {
            return true;
        }
        String strA = a(str, objArr);
        if (z2) {
            throw new NullPointerException(strA);
        }
        SigmobLog.e(strA);
        return false;
    }

    private static boolean c(boolean z2, boolean z3, String str, Object... objArr) {
        if (z2) {
            return true;
        }
        String strA = a(str, objArr);
        if (z3) {
            throw new IllegalStateException(strA);
        }
        SigmobLog.e(strA);
        return false;
    }

    public static void checkNotNull(Object obj) {
        b(obj, true, "Object can not be null.", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(boolean z2, String str, Object... objArr) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            return true;
        }
        String strA = a(str, objArr);
        if (z2) {
            throw new IllegalStateException(strA);
        }
        SigmobLog.e(strA);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(boolean z2, boolean z3, String str, Object... objArr) {
        if (z2) {
            return true;
        }
        String strA = a(str, objArr);
        if (z3) {
            throw new IllegalArgumentException(strA);
        }
        SigmobLog.e(strA);
        return false;
    }
}
