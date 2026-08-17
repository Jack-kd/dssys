package com.smartdigimkt.e5;

import android.content.Context;
import com.smartdigimkt.sdk.api.SDMAdRequest;

/* loaded from: classes5.dex */
public final class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40091a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40092b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SDMAdRequest f40093c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ p f40094d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ n f40095e;

    public m(n nVar, Context context, int i2, SDMAdRequest sDMAdRequest, p pVar) {
        this.f40095e = nVar;
        this.f40091a = context;
        this.f40092b = i2;
        this.f40093c = sDMAdRequest;
        this.f40094d = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        n nVar = this.f40095e;
        com.smartdigimkt.c5.w.a(nVar.f40097b, com.smartdigimkt.c5.j.a(String.valueOf(nVar.f40096a)), "load", "start", "");
        com.smartdigimkt.i5.l lVar = new com.smartdigimkt.i5.l();
        com.smartdigimkt.i5.q qVar = new com.smartdigimkt.i5.q();
        lVar.f40417a = qVar;
        com.smartdigimkt.i5.i iVar = new com.smartdigimkt.i5.i();
        qVar.f40417a = iVar;
        com.smartdigimkt.i5.t tVar = new com.smartdigimkt.i5.t();
        iVar.f40417a = tVar;
        com.smartdigimkt.i5.n nVar2 = new com.smartdigimkt.i5.n();
        tVar.f40417a = nVar2;
        com.smartdigimkt.i5.h hVar = new com.smartdigimkt.i5.h();
        nVar2.f40417a = hVar;
        hVar.f40417a = new com.smartdigimkt.i5.b();
        Context context = this.f40091a;
        n nVar3 = this.f40095e;
        lVar.c(new com.smartdigimkt.g5.a(context, nVar3.f40097b, nVar3.f40096a, this.f40092b, this.f40093c, this.f40094d));
    }
}
