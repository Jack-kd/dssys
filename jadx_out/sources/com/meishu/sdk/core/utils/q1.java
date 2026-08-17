package com.meishu.sdk.core.utils;

import java.util.List;

/* loaded from: classes4.dex */
public class q1 extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List f31960a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f31961b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f31962c;

    public q1(VideoLoadManager videoLoadManager, List list, int i2, String str) {
        this.f31960a = list;
        this.f31961b = i2;
        this.f31962c = str;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        for (com.meishu.sdk.core.bquery.h hVar : this.f31960a) {
            if (hVar != null) {
                hVar.onFail(this.f31961b, this.f31962c);
            }
        }
    }
}
