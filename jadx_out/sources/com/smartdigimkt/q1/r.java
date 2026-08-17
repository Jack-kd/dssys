package com.smartdigimkt.q1;

import com.smartdigimkt.sdk.basead.mraid.MraidWebView;

/* loaded from: classes5.dex */
public final class r implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.l3.a f42701a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f42702b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f42703c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f42704d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f42705e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ s f42706f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ MraidWebView f42707g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f42708h;

    public r(com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, int i2, boolean z2, String str, s sVar, MraidWebView mraidWebView, String str2) {
        this.f42701a = aVar;
        this.f42702b = cVar;
        this.f42703c = i2;
        this.f42704d = z2;
        this.f42705e = str;
        this.f42706f = sVar;
        this.f42707g = mraidWebView;
        this.f42708h = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.l3.a aVar = this.f42701a;
        com.smartdigimkt.m3.c cVar = this.f42702b;
        int i2 = this.f42703c;
        boolean z2 = this.f42704d;
        if (aVar != null && cVar != null) {
            com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(null, null);
            cVar2.f42817a = "1004698";
            cVar2.a(aVar);
            cVar2.f42828l = cVar.f41806a;
            cVar2.f42829m = cVar.f41808b;
            cVar2.f42830n = cVar instanceof com.smartdigimkt.m3.b ? ((com.smartdigimkt.m3.b) cVar).f42054o0 : "";
            cVar2.f42831o = String.valueOf(aVar.f41628b);
            cVar2.f42832p = String.valueOf(aVar.f41635i);
            cVar2.f42833q = String.valueOf(i2);
            cVar2.f42834r = String.valueOf(aVar.f41637k);
            if (i2 != 5) {
                cVar2.f42835s = z2 ? "1" : "2";
            }
            com.smartdigimkt.y3.h.a(cVar2);
        }
        f fVar = new f();
        y yVar = new y(this.f42705e);
        yVar.f40198a = new q(this);
        this.f42707g.setWebViewClient(yVar);
        this.f42707g.setObject(fVar);
        this.f42707g.loadUrl(this.f42705e);
    }
}
