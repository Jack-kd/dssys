package com.smartdigimkt.w2;

import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;

/* loaded from: classes5.dex */
public final class w implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f44910a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.l3.a f44911b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f44912c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ WTWebView f44913d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f44914e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f44915f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ x f44916g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f44917h;

    public w(int i2, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, WTWebView wTWebView, x xVar, Object obj, String str, String str2) {
        this.f44910a = cVar;
        this.f44911b = aVar;
        this.f44912c = str;
        this.f44913d = wTWebView;
        this.f44914e = i2;
        this.f44915f = str2;
        this.f44916g = xVar;
        this.f44917h = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.m3.e eVar;
        com.smartdigimkt.m3.c cVar = this.f44910a;
        if (cVar == null || (eVar = cVar.f41832w) == null) {
            com.smartdigimkt.l3.a aVar = this.f44911b;
            eVar = aVar != null ? aVar.f41644r : null;
        }
        boolean z2 = eVar != null && eVar.f41840A1 == 1;
        this.f44913d.initData(cVar, this.f44911b, this.f44914e == 1);
        boolean[] zArr = {false};
        this.f44913d.setWebViewListener(new v(this, z2, zArr));
        Object obj = this.f44917h;
        if (obj instanceof com.smartdigimkt.x2.f) {
            com.smartdigimkt.x2.f fVar = (com.smartdigimkt.x2.f) obj;
            com.smartdigimkt.m3.c cVar2 = this.f44910a;
            com.smartdigimkt.l3.a aVar2 = this.f44911b;
            fVar.f45105c = cVar2;
            fVar.f45106d = aVar2;
        }
        this.f44913d.setJsCommunicationObject(obj);
        this.f44913d.loadUrl(this.f44912c);
        if (this.f44914e == 1 && z2) {
            com.smartdigimkt.e0.t.f40027c.put(this.f44915f, this.f44913d);
            zArr[0] = true;
            x xVar = this.f44916g;
            if (xVar != null) {
                xVar.a();
            }
        }
    }
}
