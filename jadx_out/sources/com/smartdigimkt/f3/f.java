package com.smartdigimkt.f3;

import com.smartdigimkt.sdk.core.SDKContext;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class f {

    /* renamed from: b, reason: collision with root package name */
    public static volatile f f40220b;

    /* renamed from: a, reason: collision with root package name */
    public com.smartdigimkt.k3.q f40221a;

    public f() {
        if (SDKContext.getInstance().d() != null) {
            this.f40221a = com.smartdigimkt.k3.q.a(com.smartdigimkt.k3.d.a(SDKContext.getInstance().d()));
        }
        new ConcurrentHashMap(3);
    }

    public static f a() {
        if (f40220b == null) {
            synchronized (f.class) {
                try {
                    if (f40220b == null) {
                        f40220b = new f();
                    }
                } finally {
                }
            }
        }
        return f40220b;
    }
}
