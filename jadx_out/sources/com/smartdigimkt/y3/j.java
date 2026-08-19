package com.smartdigimkt.y3;

import com.smartdigimkt.c5.y;

/* loaded from: classes5.dex */
public final class j implements com.smartdigimkt.s4.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f45218a;

    public j(l lVar) {
        this.f45218a = lVar;
    }

    @Override // com.smartdigimkt.s4.c
    public final void a(Object obj) {
        if (obj instanceof com.smartdigimkt.s4.a) {
            this.f45218a.a(((com.smartdigimkt.s4.a) obj).f43136d);
            l lVar = this.f45218a;
            lVar.f45229i = false;
            y.a(lVar.f45226f, "sdm_adx_rp_sdk", "LOG_SEND_TIME", System.currentTimeMillis());
        }
    }

    @Override // com.smartdigimkt.s4.c
    public final void a(Throwable th) {
        this.f45218a.f45229i = false;
    }
}
