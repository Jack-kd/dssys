package com.ubix.ssp.ad.e.w;

import android.os.Process;
import com.ubix.ssp.BuildConfig;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class p implements Thread.UncaughtExceptionHandler {

    /* renamed from: b, reason: collision with root package name */
    private static p f47378b;

    /* renamed from: d, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f47380d;

    /* renamed from: a, reason: collision with root package name */
    private static final ArrayList<String> f47377a = new ArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    private static boolean f47379c = false;

    private p() {
        if (!(Thread.getDefaultUncaughtExceptionHandler() instanceof p)) {
            this.f47380d = Thread.getDefaultUncaughtExceptionHandler();
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static void a() {
        f47379c = true;
    }

    public static synchronized void b() {
        if (f47378b == null) {
            ArrayList<String> arrayList = f47377a;
            arrayList.add(BuildConfig.LIBRARY_PACKAGE_NAME);
            arrayList.add("com.ubixnow");
            f47378b = new p();
        }
    }

    private void c() {
        try {
            Process.killProcess(Process.myPid());
            System.exit(10);
        } catch (Exception unused) {
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) throws JSONException, InterruptedException {
        try {
            if (f47379c) {
                try {
                    HashMap<String, Object> map = new HashMap<>();
                    JSONObject jSONObject = new JSONObject();
                    String string = null;
                    try {
                        StringWriter stringWriter = new StringWriter();
                        PrintWriter printWriter = new PrintWriter(stringWriter);
                        th.printStackTrace(printWriter);
                        Throwable cause = th;
                        while (true) {
                            cause = cause.getCause();
                            if (cause == null) {
                                break;
                            } else {
                                cause.printStackTrace(printWriter);
                            }
                        }
                        printWriter.close();
                        string = stringWriter.toString();
                        map.put("EVENT_CODE_ERROR", string);
                        jSONObject.put("app_crashed_reason", string);
                    } catch (Exception e2) {
                        h.a(e2);
                    }
                    ArrayList<String> arrayList = f47377a;
                    int size = arrayList.size();
                    boolean z2 = false;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            break;
                        }
                        String str = arrayList.get(i2);
                        i2++;
                        String str2 = str;
                        if (string != null && string.contains(str2)) {
                            z2 = true;
                            break;
                        }
                    }
                    if (string != null && z2) {
                        f.a(com.ubix.ssp.ad.e.a0.c.e()).l(map);
                    }
                } catch (Exception e3) {
                    h.a(e3);
                }
            }
            n.l().e();
            try {
                Thread.sleep(500L);
            } catch (InterruptedException e4) {
                h.a(e4);
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f47380d;
            if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this || (uncaughtExceptionHandler instanceof p)) {
                c();
            } else {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        } catch (Exception unused) {
        }
    }
}
