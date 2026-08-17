package com.smartdigimkt.z;

import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class h0 {

    /* renamed from: c, reason: collision with root package name */
    public static volatile h0 f45302c;

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.a4.c f45303a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.a4.f f45304b;

    public h0() {
        SDKContext.getInstance().d();
        this.f45303a = new com.smartdigimkt.a4.c(1, 50);
        this.f45304b = new com.smartdigimkt.a4.f(1);
    }

    public static h0 a() {
        if (f45302c == null) {
            synchronized (d0.class) {
                try {
                    if (f45302c == null) {
                        f45302c = new h0();
                    }
                } finally {
                }
            }
        }
        return f45302c;
    }
}
