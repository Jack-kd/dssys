package com.czhj.sdk.logger;

import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public class SigmobLog {
    public static final boolean DEBUG = false;

    /* renamed from: a, reason: collision with root package name */
    private static final String f29553a = "com.sigmob";

    /* renamed from: b, reason: collision with root package name */
    private static final String f29554b = "sigmob";

    /* renamed from: c, reason: collision with root package name */
    private static final Logger f29555c;

    /* renamed from: d, reason: collision with root package name */
    private static final SigmobLogHandler f29556d;

    public static final class SigmobLogHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private static final Map<Level, Integer> f29557a;

        static {
            HashMap map = new HashMap(7);
            f29557a = map;
            map.put(Level.FINEST, 2);
            map.put(Level.FINER, 2);
            map.put(Level.FINE, 2);
            map.put(Level.CONFIG, 3);
            map.put(Level.INFO, 3);
            map.put(Level.WARNING, 5);
            map.put(Level.SEVERE, 6);
        }

        private SigmobLogHandler() {
        }

        @Override // java.util.logging.Handler
        public void close() {
        }

        @Override // java.util.logging.Handler
        public void flush() {
        }

        @Override // java.util.logging.Handler
        public void publish(LogRecord logRecord) {
            if (isLoggable(logRecord)) {
                Map<Level, Integer> map = f29557a;
                int iIntValue = map.containsKey(logRecord.getLevel()) ? map.get(logRecord.getLevel()).intValue() : 2;
                String str = logRecord.getMessage() + "\n";
                Throwable thrown = logRecord.getThrown();
                if (thrown != null) {
                    str = str + Log.getStackTraceString(thrown);
                }
                Log.println(iIntValue, "sigmob", str);
            }
        }
    }

    static {
        Logger logger = Logger.getLogger(f29553a);
        f29555c = logger;
        SigmobLogHandler sigmobLogHandler = new SigmobLogHandler();
        f29556d = sigmobLogHandler;
        logger.setUseParentHandlers(false);
        logger.setLevel(Level.ALL);
        sigmobLogHandler.setLevel(Level.INFO);
        LogManager.getLogManager().addLogger(logger);
        a(logger, sigmobLogHandler);
    }

    private SigmobLog() {
    }

    private static void a(String str, Throwable th) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f29555c.log(Level.FINEST, str, th);
    }

    public static void addHandler(Handler handler) throws SecurityException {
        a(f29555c, handler);
    }

    private static void b(String str, Throwable th) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f29555c.log(Level.INFO, str, th);
    }

    public static void c(String str) {
        a(str, (Throwable) null);
    }

    public static void d(String str) {
    }

    public static void dd(String str, String str2) {
        if (str == null || str.isEmpty() || str2 == null || str2.isEmpty() || str2.length() <= 3072) {
            return;
        }
        while (str2.length() > 3072) {
            str2 = str2.replace(str2.substring(0, 3072), "");
        }
    }

    public static void e(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        e(str, null);
    }

    public static void i(String str) {
        b(str, null);
    }

    public static void setSdkHandlerLevel(Level level) throws SecurityException {
        f29556d.setLevel(level);
    }

    public static void v(String str) {
        v(str, null);
    }

    public static void w(String str) {
        w(str, null);
    }

    private static void a(Logger logger, Handler handler) throws SecurityException {
        for (Handler handler2 : logger.getHandlers()) {
            if (handler2.equals(handler)) {
                return;
            }
        }
        logger.addHandler(handler);
    }

    public static void d(String str, Throwable th) {
    }

    public static void e(String str, Throwable th) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f29555c.log(Level.SEVERE, str, th);
    }

    public static void v(String str, Throwable th) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f29555c.log(Level.FINE, str, th);
    }

    public static void w(String str, Throwable th) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f29555c.log(Level.WARNING, str, th);
    }
}
