package com.smartdigimkt.o2;

import java.util.HashMap;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static volatile a f42219b;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f42220a = new HashMap();

    public static a a() {
        if (f42219b == null) {
            synchronized (a.class) {
                try {
                    if (f42219b == null) {
                        f42219b = new a();
                    }
                } finally {
                }
            }
        }
        return f42219b;
    }
}
