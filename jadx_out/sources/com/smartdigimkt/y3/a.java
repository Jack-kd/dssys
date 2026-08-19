package com.smartdigimkt.y3;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static volatile a f45191b;

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f45192a = new ConcurrentHashMap(2);

    public static a a() {
        if (f45191b == null) {
            synchronized (a.class) {
                try {
                    if (f45191b == null) {
                        f45191b = new a();
                    }
                } finally {
                }
            }
        }
        return f45191b;
    }
}
