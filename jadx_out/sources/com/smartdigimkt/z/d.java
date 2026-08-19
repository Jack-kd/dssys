package com.smartdigimkt.z;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: b, reason: collision with root package name */
    public static volatile d f45273b;

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f45274a = new ConcurrentHashMap();

    public static d a() {
        if (f45273b == null) {
            synchronized (d.class) {
                try {
                    if (f45273b == null) {
                        f45273b = new d();
                    }
                } finally {
                }
            }
        }
        return f45273b;
    }
}
