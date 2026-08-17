package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.internal.aa;

/* loaded from: classes2.dex */
class bk implements aa.a {

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ bj f11184c;

    public bk(bj bjVar) {
        this.f11184c = bjVar;
    }

    @Override // com.baidu.mobads.sdk.internal.aa.a
    public void onFailure() {
        this.f11184c.f11174k.a(bj.f11165b, "AbstractProdTemplate,load-dex请求，回调失败");
        this.f11184c.i();
    }

    @Override // com.baidu.mobads.sdk.internal.aa.a
    public void onSuccess() {
        this.f11184c.f11174k.a(bj.f11165b, "AbstractProdTemplate,load-dex请求，回调成功");
        this.f11184c.h();
    }
}
