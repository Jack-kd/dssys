package com.meishu.sdk.core.utils;

/* loaded from: classes4.dex */
public class s1 extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.core.bquery.h f31998a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f31999b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f32000c;

    public s1(VideoLoadManager videoLoadManager, com.meishu.sdk.core.bquery.h hVar, int i2, String str) {
        this.f31998a = hVar;
        this.f31999b = i2;
        this.f32000c = str;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        this.f31998a.onFail(this.f31999b, this.f32000c);
    }
}
