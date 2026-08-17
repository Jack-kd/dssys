package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.internal.ck;

/* loaded from: classes2.dex */
class by implements ck.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bx f11265a;

    public by(bx bxVar) {
        this.f11265a = bxVar;
    }

    @Override // com.baidu.mobads.sdk.internal.ck.a
    public void a(bz bzVar) {
        this.f11265a.a(cb.f11288k, bzVar, "download apk successfully, downloader exit");
        bx unused = bx.f11255h = null;
    }

    @Override // com.baidu.mobads.sdk.internal.ck.a
    public void b(bz bzVar) {
        this.f11265a.a(cb.f11289l, bzVar, "downloadApk failed");
    }
}
