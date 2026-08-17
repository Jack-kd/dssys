package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.internal.cp;

/* loaded from: classes2.dex */
class ce implements cp.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cb f11310a;

    public ce(cb cbVar) {
        this.f11310a = cbVar;
    }

    @Override // com.baidu.mobads.sdk.internal.cp.a
    public void a(String str) {
        try {
            this.f11310a.b();
            this.f11310a.a(str);
        } catch (Throwable th) {
            bv.a().a(th);
        }
    }
}
