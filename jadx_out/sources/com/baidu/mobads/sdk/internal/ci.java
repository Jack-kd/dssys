package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.internal.ao;

/* loaded from: classes2.dex */
class ci implements ao.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cb f11317a;

    public ci(cb cbVar) {
        this.f11317a = cbVar;
    }

    @Override // com.baidu.mobads.sdk.internal.ao.a
    public void a() {
        if (this.f11317a.f11299A) {
            this.f11317a.f11299A = false;
            this.f11317a.a(false, "remote update Network access failed");
        }
    }
}
