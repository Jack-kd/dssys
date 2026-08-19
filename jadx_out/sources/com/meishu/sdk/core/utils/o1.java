package com.meishu.sdk.core.utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes4.dex */
public class o1 {

    /* renamed from: a, reason: collision with root package name */
    public final List<Runnable> f31944a;

    /* renamed from: b, reason: collision with root package name */
    public Object f31945b;

    /* renamed from: c, reason: collision with root package name */
    public int f31946c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f31947d;

    public o1() {
        this(null, 2);
    }

    public o1(Object obj, int i2) {
        this.f31945b = new Object();
        this.f31946c = 2;
        if (i2 > 0) {
            this.f31946c = i2;
        } else {
            this.f31946c = Integer.MAX_VALUE;
        }
        this.f31944a = Collections.synchronizedList(new ArrayList());
    }

    public final void a() {
        try {
            Runnable runnable = this.f31944a.get(0);
            try {
                synchronized (this.f31945b) {
                    try {
                        runnable.run();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            this.f31944a.remove(runnable);
        } catch (Throwable th3) {
            th3.printStackTrace();
        }
    }
}
