package com.smartdigimkt.z;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class y {

    /* renamed from: b, reason: collision with root package name */
    public static volatile y f45347b;

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f45348a = new ConcurrentHashMap();

    public static y a() {
        if (f45347b == null) {
            synchronized (y.class) {
                try {
                    if (f45347b == null) {
                        f45347b = new y();
                    }
                } finally {
                }
            }
        }
        return f45347b;
    }
}
