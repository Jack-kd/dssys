package com.smartdigimkt.w4;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes5.dex */
public abstract class s {

    /* renamed from: a, reason: collision with root package name */
    public static com.smartdigimkt.x4.a f44991a = new m();

    /* renamed from: b, reason: collision with root package name */
    public static volatile Executor f44992b;

    public static Executor a() {
        if (f44992b == null) {
            synchronized (s.class) {
                try {
                    if (f44992b == null) {
                        f44992b = Executors.newCachedThreadPool();
                    }
                } finally {
                }
            }
        }
        return f44992b;
    }
}
