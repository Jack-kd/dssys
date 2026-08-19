package com.smartdigimkt.e5;

import android.content.Context;
import com.smartdigimkt.sdk.api.SDMAdRequest;

/* loaded from: classes5.dex */
public final class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40098a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40099b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SDMAdRequest f40100c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ p f40101d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ r f40102e;

    public q(r rVar, Context context, int i2, SDMAdRequest sDMAdRequest, p pVar) {
        this.f40102e = rVar;
        this.f40098a = context;
        this.f40099b = i2;
        this.f40100c = sDMAdRequest;
        this.f40101d = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        r rVar = this.f40102e;
        com.smartdigimkt.c5.w.a(rVar.f40104b, com.smartdigimkt.c5.j.a(String.valueOf(rVar.f40103a)), "load", "start", "");
        com.smartdigimkt.i5.l lVar = new com.smartdigimkt.i5.l();
        com.smartdigimkt.i5.q qVar = new com.smartdigimkt.i5.q();
        lVar.f40417a = qVar;
        com.smartdigimkt.i5.i iVar = new com.smartdigimkt.i5.i();
        qVar.f40417a = iVar;
        iVar.f40417a = new com.smartdigimkt.i5.k();
        Context context = this.f40098a;
        r rVar2 = this.f40102e;
        lVar.c(new com.smartdigimkt.g5.a(context, rVar2.f40104b, rVar2.f40103a, this.f40099b, this.f40100c, this.f40101d));
    }
}
