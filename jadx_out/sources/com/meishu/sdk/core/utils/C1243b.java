package com.meishu.sdk.core.utils;

import java.lang.ref.SoftReference;

/* renamed from: com.meishu.sdk.core.utils.b, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1243b {

    /* renamed from: a, reason: collision with root package name */
    public SoftReference<a<Boolean>> f31834a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f31835b;

    /* renamed from: com.meishu.sdk.core.utils.b$a */
    public interface a<T> {
        void a(T t2, T t3);
    }

    public void a(boolean z2) {
        boolean z3 = this.f31835b;
        this.f31835b = z2;
        try {
            SoftReference<a<Boolean>> softReference = this.f31834a;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            this.f31834a.get().a(Boolean.valueOf(z3), Boolean.valueOf(z2));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean a(a<Boolean> aVar) {
        if (aVar == null) {
            this.f31834a = null;
        } else {
            this.f31834a = new SoftReference<>(aVar);
        }
        return this.f31835b;
    }
}
