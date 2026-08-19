package androidx.tracing;

import android.os.Build;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class Trace {
    static final int MAX_TRACE_LABEL_LENGTH = 127;
    static final String TAG = "Trace";
    private static Method sAsyncTraceBeginMethod;
    private static Method sAsyncTraceEndMethod;
    private static boolean sHasAppTracingEnabled;
    private static Method sIsTagEnabledMethod;
    private static Method sTraceCounterMethod;
    private static long sTraceTagApp;

    private Trace() {
    }

    public static void beginAsyncSection(@NonNull String str, int i2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 29) {
            TraceApi29Impl.beginAsyncSection(truncatedTraceSectionLabel(str), i2);
        } else {
            beginAsyncSectionFallback(truncatedTraceSectionLabel(str), i2);
        }
    }

    private static void beginAsyncSectionFallback(@NonNull String str, int i2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            if (sAsyncTraceBeginMethod == null) {
                sAsyncTraceBeginMethod = android.os.Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
            }
            sAsyncTraceBeginMethod.invoke(null, Long.valueOf(sTraceTagApp), str, Integer.valueOf(i2));
        } catch (Exception e2) {
            handleException("asyncTraceBegin", e2);
        }
    }

    public static void beginSection(@NonNull String str) {
        TraceApi18Impl.beginSection(truncatedTraceSectionLabel(str));
    }

    public static void endAsyncSection(@NonNull String str, int i2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 29) {
            TraceApi29Impl.endAsyncSection(truncatedTraceSectionLabel(str), i2);
        } else {
            endAsyncSectionFallback(truncatedTraceSectionLabel(str), i2);
        }
    }

    private static void endAsyncSectionFallback(@NonNull String str, int i2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            if (sAsyncTraceEndMethod == null) {
                sAsyncTraceEndMethod = android.os.Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
            }
            sAsyncTraceEndMethod.invoke(null, Long.valueOf(sTraceTagApp), str, Integer.valueOf(i2));
        } catch (Exception e2) {
            handleException("asyncTraceEnd", e2);
        }
    }

    public static void endSection() {
        TraceApi18Impl.endSection();
    }

    public static void forceEnableAppTracing() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT < 31) {
            try {
                if (sHasAppTracingEnabled) {
                    return;
                }
                sHasAppTracingEnabled = true;
                android.os.Trace.class.getMethod("setAppTracingAllowed", Boolean.TYPE).invoke(null, Boolean.TRUE);
            } catch (Exception e2) {
                handleException("setAppTracingAllowed", e2);
            }
        }
    }

    private static void handleException(@NonNull String str, @NonNull Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (!(cause instanceof RuntimeException)) {
                throw new RuntimeException(cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    public static boolean isEnabled() {
        return Build.VERSION.SDK_INT >= 29 ? TraceApi29Impl.isEnabled() : isEnabledFallback();
    }

    private static boolean isEnabledFallback() {
        try {
            if (sIsTagEnabledMethod == null) {
                sTraceTagApp = android.os.Trace.class.getField("TRACE_TAG_APP").getLong(null);
                sIsTagEnabledMethod = android.os.Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) sIsTagEnabledMethod.invoke(null, Long.valueOf(sTraceTagApp))).booleanValue();
        } catch (Exception e2) {
            handleException("isTagEnabled", e2);
            return false;
        }
    }

    public static void setCounter(@NonNull String str, int i2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 29) {
            TraceApi29Impl.setCounter(truncatedTraceSectionLabel(str), i2);
        } else {
            setCounterFallback(truncatedTraceSectionLabel(str), i2);
        }
    }

    private static void setCounterFallback(@NonNull String str, int i2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            if (sTraceCounterMethod == null) {
                sTraceCounterMethod = android.os.Trace.class.getMethod("traceCounter", Long.TYPE, String.class, Integer.TYPE);
            }
            sTraceCounterMethod.invoke(null, Long.valueOf(sTraceTagApp), str, Integer.valueOf(i2));
        } catch (Exception e2) {
            handleException("traceCounter", e2);
        }
    }

    @NonNull
    private static String truncatedTraceSectionLabel(@NonNull String str) {
        return str.length() <= 127 ? str : str.substring(0, 127);
    }
}
