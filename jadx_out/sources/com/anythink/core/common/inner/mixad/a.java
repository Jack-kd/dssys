package com.anythink.core.common.inner.mixad;

import android.text.TextUtils;
import com.anythink.core.common.l.e.a.a;
import com.anythink.core.common.l.f.a.a;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static volatile a f4682a;

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, com.anythink.core.common.inner.mixad.c.a.a> f4683b = new HashMap(2);

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, a.InterfaceC0065a> f4684c = new HashMap(2);

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, a.InterfaceC0064a> f4685d = new HashMap(2);

    private a() {
    }

    public static a a() {
        if (f4682a == null) {
            synchronized (a.class) {
                try {
                    if (f4682a == null) {
                        f4682a = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4682a;
    }

    public final a.InterfaceC0064a b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f4685d.remove(str);
    }

    public final a.InterfaceC0065a c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f4684c.remove(str);
    }

    public final void a(String str, com.anythink.core.common.inner.mixad.c.a.a aVar) {
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f4683b.put(str, aVar);
    }

    public final com.anythink.core.common.inner.mixad.c.a.a a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f4683b.remove(str);
    }

    public final void a(String str, a.InterfaceC0064a interfaceC0064a) {
        if (interfaceC0064a == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f4685d.put(str, interfaceC0064a);
    }

    public final void a(String str, a.InterfaceC0065a interfaceC0065a) {
        if (interfaceC0065a == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f4684c.put(str, interfaceC0065a);
    }
}
