package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class cp implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    public static String f11387a = "";

    /* renamed from: b, reason: collision with root package name */
    private static final String f11388b = "remote";

    /* renamed from: c, reason: collision with root package name */
    private static final String f11389c = "proxy";

    /* renamed from: d, reason: collision with root package name */
    private static final String f11390d = "third-mtj";

    /* renamed from: e, reason: collision with root package name */
    private static final String f11391e = "third-cpu";

    /* renamed from: f, reason: collision with root package name */
    private static final String f11392f = "third-cpu-cyber";

    /* renamed from: g, reason: collision with root package name */
    private static final String f11393g = "third-novel";

    /* renamed from: h, reason: collision with root package name */
    private static final String f11394h = "third-aigc";

    /* renamed from: i, reason: collision with root package name */
    private static final String f11395i = "third-aigc-virtual";

    /* renamed from: j, reason: collision with root package name */
    private static final String f11396j = "third-aigc-speech";

    /* renamed from: k, reason: collision with root package name */
    private static final String f11397k = "third-aigc-image";

    /* renamed from: l, reason: collision with root package name */
    private static Thread.UncaughtExceptionHandler f11398l = null;

    /* renamed from: m, reason: collision with root package name */
    private static volatile cp f11399m = null;

    /* renamed from: p, reason: collision with root package name */
    private static final String f11400p = "key_crash_source";

    /* renamed from: q, reason: collision with root package name */
    private static final String f11401q = "key_crash_trace";

    /* renamed from: r, reason: collision with root package name */
    private static final String f11402r = "key_crash_ad";

    /* renamed from: n, reason: collision with root package name */
    private Context f11403n;

    /* renamed from: o, reason: collision with root package name */
    private a f11404o;

    public interface a {
        void a(String str);
    }

    private cp(Context context) {
        this.f11403n = context.getApplicationContext();
        f11398l = Thread.getDefaultUncaughtExceptionHandler();
    }

    private List<String> d() {
        IXAdContainerFactory iXAdContainerFactoryC;
        ArrayList arrayList = new ArrayList();
        try {
            aa aaVarA = aa.a();
            if (aaVarA != null && (iXAdContainerFactoryC = aaVarA.c()) != null) {
                Object remoteParam = iXAdContainerFactoryC.getRemoteParam("appCommonConfig", "getCrashPackage");
                if (remoteParam instanceof List) {
                    arrayList.addAll((List) remoteParam);
                }
            }
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    private SharedPreferences e() throws Exception {
        return this.f11403n.getSharedPreferences("baidu_mobads_crash", 0);
    }

    private SharedPreferences.Editor f() throws Exception {
        return e().edit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() throws Exception {
        SharedPreferences.Editor editorF = f();
        editorF.clear();
        editorF.apply();
    }

    public void c() {
        this.f11404o = null;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            String strA = a(th);
            if (strA != null) {
                a(strA, Log.getStackTraceString(th));
                a aVar = this.f11404o;
                if (aVar != null) {
                    aVar.a(strA);
                }
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = f11398l;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        } catch (Exception e2) {
            bv.a().c(e2);
        }
    }

    public void b() {
        if (Thread.getDefaultUncaughtExceptionHandler() instanceof cp) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static cp a(Context context) {
        if (f11399m == null) {
            synchronized (cp.class) {
                try {
                    if (f11399m == null) {
                        f11399m = new cp(context);
                    }
                } finally {
                }
            }
        }
        return f11399m;
    }

    public void a() {
        be.a().a((j) new cq(this));
    }

    public void a(a aVar) {
        this.f11404o = aVar;
    }

    private String a(Throwable th) {
        Throwable cause = th.getCause();
        if (cause != null) {
            th = cause;
        }
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace != null && stackTrace.length > 0) {
            List<String> listD = d();
            for (StackTraceElement stackTraceElement : stackTrace) {
                String className = stackTraceElement.getClassName();
                if (className.startsWith("junit.framework")) {
                    return null;
                }
                if (className.startsWith(z.au) || className.startsWith(z.av) || className.startsWith(z.aw)) {
                    return f11388b;
                }
                if (!className.startsWith(z.ax) && !className.startsWith(z.ay) && !className.startsWith(z.az)) {
                    if (className.startsWith(z.aA)) {
                        return f11390d;
                    }
                    if (className.startsWith(z.aB)) {
                        return f11391e;
                    }
                    if (className.startsWith(z.aC) || className.startsWith(z.aD)) {
                        return f11392f;
                    }
                    if (className.startsWith(z.aL)) {
                        return f11396j;
                    }
                    if (!className.startsWith(z.aH) && !className.startsWith(z.aI) && !className.startsWith(z.aJ) && !className.startsWith(z.aK)) {
                        if (className.startsWith(z.aG)) {
                            return f11394h;
                        }
                        if (!className.startsWith(z.aE) && !className.startsWith(z.aF)) {
                            if (a(className, listD)) {
                                return f11388b;
                            }
                            if (className.startsWith(z.aM)) {
                                return f11397k;
                            }
                        } else if (co.f11356g.booleanValue()) {
                            return f11393g;
                        }
                    } else {
                        return f11395i;
                    }
                } else {
                    return f11389c;
                }
            }
        }
        return null;
    }

    private boolean a(String str, List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (str.startsWith(it.next())) {
                return true;
            }
        }
        return false;
    }

    public void a(String str, String str2) throws Exception {
        SharedPreferences.Editor editorF = f();
        String str3 = "crashtime:" + System.currentTimeMillis() + " ";
        editorF.putString(f11400p, str);
        editorF.putString(f11401q, str3 + str2);
        editorF.putString(f11402r, f11387a);
        editorF.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str) throws Exception {
        return e().getString(str, "");
    }
}
