package com.umeng.commonsdk.config;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public class b implements f {

    /* renamed from: a, reason: collision with root package name */
    private static Map<String, Boolean> f49876a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private static Object f49877b = new Object();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final b f49878a = new b();

        private a() {
        }
    }

    public static b b() {
        return a.f49878a;
    }

    public void a() {
        synchronized (f49877b) {
            f49876a.clear();
        }
    }

    private b() {
    }

    public static boolean a(String str) {
        if (!d.a(str)) {
            return false;
        }
        synchronized (f49877b) {
            try {
                if (!f49876a.containsKey(str)) {
                    return true;
                }
                return f49876a.get(str).booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.umeng.commonsdk.config.f
    public void a(String str, Boolean bool) {
        if (d.a(str)) {
            synchronized (f49877b) {
                try {
                    Map<String, Boolean> map = f49876a;
                    if (map != null) {
                        map.put(str, bool);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
