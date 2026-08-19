package com.anythink.core.common.res.b;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static volatile c f7436a;

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, a> f7437b = new HashMap();

    private c() {
    }

    public static c a() {
        if (f7436a == null) {
            synchronized (c.class) {
                try {
                    if (f7436a == null) {
                        f7436a = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7436a;
    }

    private synchronized a b(String str) {
        a aVar = this.f7437b.get(str);
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(str);
        this.f7437b.put(str, aVar2);
        return aVar2;
    }

    private synchronized void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a aVar = this.f7437b.get(str);
        if (aVar != null) {
            aVar.e();
        }
    }

    private synchronized void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a aVar = this.f7437b.get(str);
        if (aVar != null) {
            aVar.f();
        }
    }

    public final synchronized void a(String str) {
        if (this.f7437b != null && !TextUtils.isEmpty(str)) {
            this.f7437b.remove(str);
        }
    }
}
