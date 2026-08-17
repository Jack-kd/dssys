package com.smartdigimkt.f;

import android.os.SystemClock;
import com.smartdigimkt.c5.a0;
import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class k extends com.smartdigimkt.q4.b {

    /* renamed from: j, reason: collision with root package name */
    public long f40145j;

    /* renamed from: k, reason: collision with root package name */
    public final l f40146k;

    public k(l lVar) {
        super(lVar);
        this.f40146k = lVar;
    }

    @Override // com.smartdigimkt.q4.b
    public final void a(AdError adError) {
    }

    @Override // com.smartdigimkt.q4.b
    public final void b(AdError adError) {
        String code = adError.getCode();
        String message = adError.getMessage();
        this.f40146k.getClass();
        com.smartdigimkt.y3.h.a("hf", code, message, a0.a("kwwsv=22gvs0dsl0fq1phwulfvolqnv1frp2dsl2frqyhuvlrq2sj"), "", "", "");
    }

    @Override // com.smartdigimkt.q4.b
    public final void a(int i2, com.smartdigimkt.l4.b bVar) {
        this.f40145j = System.currentTimeMillis();
        SystemClock.elapsedRealtime();
        super.a(0, bVar);
    }

    @Override // com.smartdigimkt.q4.b
    public final Object a(Object obj) {
        com.smartdigimkt.y3.h.a(this.f40145j, System.currentTimeMillis(), "hf", (String) null);
        return obj;
    }
}
