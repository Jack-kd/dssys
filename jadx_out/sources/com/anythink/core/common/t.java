package com.anythink.core.common;

import com.anythink.core.api.ATAdInfo;
import com.anythink.core.common.h.bp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    private static volatile t f7669a;

    /* renamed from: b, reason: collision with root package name */
    private final ConcurrentHashMap<String, bp> f7670b = new ConcurrentHashMap<>(4);

    private t() {
    }

    public static t a() {
        if (f7669a == null) {
            synchronized (t.class) {
                try {
                    if (f7669a == null) {
                        f7669a = new t();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7669a;
    }

    private void b(String str, String str2, String str3) {
        d(str).a(str2, str3);
    }

    private synchronized bp d(String str) {
        bp bpVar;
        bpVar = this.f7670b.get(str);
        if (bpVar == null) {
            bpVar = new bp();
            this.f7670b.put(str, bpVar);
        }
        return bpVar;
    }

    private Object e(String str) {
        return d(str).a();
    }

    private synchronized Map<String, Object> f(String str) {
        HashMap map;
        map = new HashMap(2);
        Map<String, Object> mapB = d(str).b();
        if (mapB != null) {
            map.putAll(mapB);
        }
        return map;
    }

    private com.anythink.core.common.h.i g(String str) {
        return d(str).c();
    }

    private void h(String str) {
        d(str).a((ATAdInfo) null);
    }

    public final JSONObject c(String str) {
        return d(str).f();
    }

    private String b(String str, String str2) {
        return d(str).b(str2);
    }

    public final String b(String str) {
        return d(str).e();
    }

    public final f a(String str, String str2) {
        return d(str).a(str2);
    }

    public final void a(String str, String str2, f fVar) {
        d(str).a(str2, fVar);
    }

    private synchronized void a(String str, Map<String, Object> map) {
        d(str).a(com.anythink.core.common.v.i.a(map));
    }

    private void a(String str, ATAdInfo aTAdInfo) {
        d(str).a(aTAdInfo);
    }

    public final boolean a(String str) {
        return d(str).d();
    }

    public final void a(String str, boolean z2) {
        d(str).a(z2);
    }

    public final void a(String str, Object[] objArr) {
        d(str).a(objArr);
    }

    private void a(String str, int i2, String str2) {
        d(str).b(String.valueOf(i2), str2);
    }

    private String a(String str, int i2) {
        return d(str).c(String.valueOf(i2));
    }

    public final void a(String str, JSONObject jSONObject) {
        d(str).a(jSONObject);
    }

    private void a(String str, String str2, List<com.anythink.core.common.h.c> list) {
        d(str).a(str2, list);
    }

    public final void a(String str, String str2, String str3) {
        d(str).a(str, str2, str3);
    }
}
