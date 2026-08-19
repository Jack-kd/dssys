package com.anythink.core.common.u;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static volatile c f7838a;

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, a> f7839b = new ConcurrentHashMap(2);

    public interface a {
        void a(String str);
    }

    private c() {
    }

    public static c a() {
        if (f7838a == null) {
            synchronized (c.class) {
                try {
                    if (f7838a == null) {
                        f7838a = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7838a;
    }

    public final void a(String str, a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f7839b.put(str, aVar);
    }

    public final void a(String str) {
        a aVarRemove;
        if (TextUtils.isEmpty(str) || (aVarRemove = this.f7839b.remove(str)) == null) {
            return;
        }
        aVarRemove.a(str);
    }
}
