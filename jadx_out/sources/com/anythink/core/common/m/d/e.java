package com.anythink.core.common.m.d;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public final class e extends f {

    /* renamed from: a, reason: collision with root package name */
    String f5720a;

    /* renamed from: c, reason: collision with root package name */
    int f5722c;

    /* renamed from: n, reason: collision with root package name */
    private final String f5723n = e.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    boolean f5721b = true;

    private e(String str, int i2) {
        this.f5722c = 1;
        this.f5720a = str;
        if (i2 == 1000) {
            this.f5722c = 1;
        } else if (i2 == 1001) {
            this.f5722c = 2;
        }
    }

    @Override // com.anythink.core.common.m.d.f
    public final int a() {
        return this.f5722c;
    }

    @Override // com.anythink.core.common.m.d.f
    public final int b() {
        return 3;
    }

    @Override // com.anythink.core.common.m.d.f
    public final byte[] c() {
        return !TextUtils.isEmpty(this.f5720a) ? f.a(this.f5720a) : new byte[0];
    }

    @Override // com.anythink.core.common.m.d.f
    public final boolean d() {
        return this.f5721b;
    }

    @Override // com.anythink.core.common.m.d.f
    public final void e() {
    }
}
