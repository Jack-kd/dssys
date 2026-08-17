package com.beizi.fusion;

import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public abstract class p3 {

    /* renamed from: a, reason: collision with root package name */
    private final Object[] f15485a;

    /* renamed from: b, reason: collision with root package name */
    private final int f15486b;

    /* renamed from: c, reason: collision with root package name */
    private final AtomicInteger f15487c = new AtomicInteger(0);

    public p3(int i2) {
        this.f15486b = i2;
        this.f15485a = new Object[i2];
    }

    public void a(int i2, Object obj) {
        if (i2 < 0 || i2 >= this.f15486b) {
            return;
        }
        synchronized (this) {
            try {
                Object[] objArr = this.f15485a;
                if (objArr[i2] == null) {
                    objArr[i2] = obj;
                    this.f15487c.incrementAndGet();
                } else {
                    objArr[i2] = obj;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int b() {
        return this.f15486b;
    }

    public boolean a() {
        return this.f15487c.get() == this.f15486b;
    }

    public Object a(int i2) {
        Object obj;
        if (i2 < 0 || i2 >= this.f15486b) {
            return null;
        }
        synchronized (this) {
            obj = this.f15485a[i2];
        }
        return obj;
    }
}
