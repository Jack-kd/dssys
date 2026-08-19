package com.meishu.sdk.core.utils;

import java.io.IOException;

/* loaded from: classes4.dex */
public class i1 extends com.meishu.sdk.core.safe.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k1 f31912a;

    public class a extends com.meishu.sdk.core.safe.l {
        public a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            k1.a(i1.this.f31912a, new IOException("timer timeout"));
        }
    }

    public i1(k1 k1Var) {
        this.f31912a = k1Var;
    }

    @Override // com.meishu.sdk.core.safe.n
    public void a() {
        cancel();
        SdkHandler.getInstance().runOnUiThread(new a());
    }
}
