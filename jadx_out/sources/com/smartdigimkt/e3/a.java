package com.smartdigimkt.e3;

import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static volatile a f40072a;

    public a() {
        new CopyOnWriteArrayList();
        new AtomicBoolean(false);
    }

    public static a a() {
        if (f40072a == null) {
            synchronized (a.class) {
                try {
                    if (f40072a == null) {
                        f40072a = new a();
                    }
                } finally {
                }
            }
        }
        return f40072a;
    }
}
