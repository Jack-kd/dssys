package com.smartdigimkt.j;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public final class o implements com.smartdigimkt.k.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.k.r f40806a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f40807b;

    public o(u uVar, com.smartdigimkt.k.r rVar) {
        this.f40807b = uVar;
        this.f40806a = rVar;
    }

    @Override // com.smartdigimkt.k.n
    public final void onCallback(com.smartdigimkt.k.r rVar) {
        if (rVar != null) {
            com.smartdigimkt.k.r rVar2 = this.f40806a;
            rVar2.f41171A = rVar.f41171A;
            rVar2.f41172B = rVar.f41172B;
            rVar2.f41173C = rVar.f41173C;
            rVar2.f41174D = rVar.f41174D;
            if (TextUtils.isEmpty(rVar.f41175E)) {
                rVar.f41175E = "1";
            }
            rVar2.f41175E = rVar.f41175E;
            com.smartdigimkt.k.r rVar3 = this.f40806a;
            rVar3.f41176F = rVar.f41176F;
            rVar3.f41177G = rVar.f41177G;
            rVar3.f41201x = rVar.f41201x;
            rVar3.f41203z = rVar.b();
            com.smartdigimkt.k.r rVar4 = this.f40806a;
            rVar4.f41185h = rVar.f41185h;
            rVar4.f41186i = rVar.f41186i;
        }
        this.f40807b.c(this.f40806a);
    }
}
