package io.flutter.util;

import androidx.annotation.NonNull;
import androidx.tracing.Trace;

/* loaded from: classes5.dex */
public final class TraceSection implements AutoCloseable {
    private TraceSection(String str) {
        begin(str);
    }

    public static void begin(@NonNull String str) {
        Trace.beginSection(cropSectionName(str));
    }

    public static void beginAsyncSection(String str, int i2) {
        Trace.beginAsyncSection(cropSectionName(str), i2);
    }

    private static String cropSectionName(@NonNull String str) {
        if (str.length() < 124) {
            return str;
        }
        return str.substring(0, 124) + "...";
    }

    public static void end() throws RuntimeException {
        Trace.endSection();
    }

    public static void endAsyncSection(String str, int i2) {
        Trace.endAsyncSection(cropSectionName(str), i2);
    }

    public static TraceSection scoped(String str) {
        return new TraceSection(str);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        end();
    }
}
