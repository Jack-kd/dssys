package com.smartdigimkt.s2;

import com.smartdigimkt.s2.c;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.IntUnaryOperator;

/* loaded from: classes5.dex */
public abstract class c {

    /* renamed from: b, reason: collision with root package name */
    public static volatile boolean f43115b;

    /* renamed from: d, reason: collision with root package name */
    public static volatile boolean f43117d;

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f43114a = new AtomicInteger(0);

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicInteger f43116c = new AtomicInteger(0);

    public static /* synthetic */ int a(int i2) {
        if (i2 > 0) {
            return i2 - 1;
        }
        return 0;
    }

    public static void a() {
        f43116c.updateAndGet(new IntUnaryOperator() { // from class: a1.a
            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i2) {
                return c.a(i2);
            }
        });
    }
}
