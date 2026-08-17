package com.smartdigimkt.y3;

import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class i implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f45217a;

    public i(l lVar) {
        this.f45217a = lVar;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        try {
            this.f45217a.a(((Integer) obj).intValue());
            l lVar = this.f45217a;
            lVar.f45229i = false;
            y.a(lVar.f45226f, "sdm_adx_rp_sdk", "LOG_SEND_TIME", System.currentTimeMillis());
        } catch (Throwable unused) {
            this.f45217a.f45229i = false;
        }
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        this.f45217a.f45229i = false;
    }
}
