package com.meishu.sdk.core.loader.concurrent;

import com.meishu.sdk.core.safe.l;

/* loaded from: classes4.dex */
public class c extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f31618a;

    public c(e eVar) {
        this.f31618a = eVar;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            this.f31618a.a(true);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
