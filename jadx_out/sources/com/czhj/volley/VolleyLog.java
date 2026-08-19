package com.czhj.volley;

import android.os.SystemClock;
import android.util.Log;
import com.anythink.core.common.d.i;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class VolleyLog {
    public static boolean DEBUG = false;
    public static String TAG = "Sigmob-Volley";

    /* renamed from: a, reason: collision with root package name */
    private static final String f29611a = "com.czhj.volley.VolleyLog";

    public static class MarkerLog {
        public static final boolean ENABLED = VolleyLog.DEBUG;

        /* renamed from: a, reason: collision with root package name */
        private static final long f29612a = 0;

        /* renamed from: b, reason: collision with root package name */
        private final List<Marker> f29613b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        private boolean f29614c = false;

        public static class Marker {
            public final String name;
            public final long thread;
            public final long time;

            public Marker(String str, long j2, long j3) {
                this.name = str;
                this.thread = j2;
                this.time = j3;
            }
        }

        private long a() {
            if (this.f29613b.size() == 0) {
                return 0L;
            }
            return this.f29613b.get(r2.size() - 1).time - this.f29613b.get(0).time;
        }

        public synchronized void add(String str, long j2) {
            if (this.f29614c) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f29613b.add(new Marker(str, j2, SystemClock.elapsedRealtime()));
        }

        public void finalize() {
            if (this.f29614c) {
                return;
            }
            finish("Request on the loose");
            VolleyLog.e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }

        public synchronized void finish(String str) {
            this.f29614c = true;
            long jA = a();
            if (jA <= 0) {
                return;
            }
            long j2 = this.f29613b.get(0).time;
            VolleyLog.d("(%-4d ms) %s", Long.valueOf(jA), str);
            for (Marker marker : this.f29613b) {
                long j3 = marker.time;
                VolleyLog.d("(+%-4d) [%2d] %s", Long.valueOf(j3 - j2), Long.valueOf(marker.thread), marker.name);
                j2 = j3;
            }
        }
    }

    private static String a(String str, Object... objArr) {
        String str2;
        if (objArr != null && objArr.length != 0) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i2 = 2;
        while (true) {
            if (i2 >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            }
            if (!stackTrace[i2].getClassName().equals(f29611a)) {
                String className = stackTrace[i2].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                str2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1) + i.f2495E + stackTrace[i2].getMethodName();
                break;
            }
            i2++;
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    public static void d(String str, Object... objArr) {
        if (DEBUG) {
            a(str, objArr);
        }
    }

    public static void e(String str, Object... objArr) {
        Log.e(TAG, a(str, objArr));
    }

    public static void setTag(String str) {
        d("Changing log tag to %s", str);
        TAG = str;
    }

    public static void v(String str, Object... objArr) {
        if (DEBUG) {
            a(str, objArr);
        }
    }

    public static void wtf(String str, Object... objArr) {
        Log.wtf(TAG, a(str, objArr));
    }

    public static void e(Throwable th, String str, Object... objArr) {
        Log.e(TAG, a(str, objArr), th);
    }

    public static void wtf(Throwable th, String str, Object... objArr) {
        Log.wtf(TAG, a(str, objArr), th);
    }
}
