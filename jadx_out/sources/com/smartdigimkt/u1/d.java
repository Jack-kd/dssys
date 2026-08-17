package com.smartdigimkt.u1;

import com.smartdigimkt.sdk.api.business.omsdk.IOmsdkHandler;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: b, reason: collision with root package name */
    public static volatile d f44390b;

    /* renamed from: a, reason: collision with root package name */
    public IOmsdkHandler f44391a;

    public static d a() {
        if (f44390b == null) {
            synchronized (d.class) {
                try {
                    if (f44390b == null) {
                        f44390b = new d();
                    }
                } finally {
                }
            }
        }
        return f44390b;
    }

    public final boolean b() {
        IOmsdkHandler iOmsdkHandler = this.f44391a;
        if (iOmsdkHandler != null) {
            return iOmsdkHandler.supportOmsdk();
        }
        return false;
    }
}
