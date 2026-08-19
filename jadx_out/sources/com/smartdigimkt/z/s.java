package com.smartdigimkt.z;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public final class s implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.i0.l f45328a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f45329b;

    public s(x xVar, com.smartdigimkt.i0.l lVar) {
        this.f45329b = xVar;
        this.f45328a = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.i0.l lVar;
        com.smartdigimkt.a0.s sVar;
        com.smartdigimkt.a0.o oVar = this.f45329b.f45339g;
        com.smartdigimkt.a0.r rVar = oVar.f39222e;
        if (rVar == null || (lVar = rVar.f39259b) == null) {
            sVar = new com.smartdigimkt.a0.s(false);
        } else {
            lVar.f40673i = new com.smartdigimkt.i0.b();
            com.smartdigimkt.i0.e eVarA = oVar.a();
            lVar.f40673i.f40633a = eVarA != null ? eVarA.f40650b : "";
            if (TextUtils.isEmpty(oVar.f39220c.f41826q)) {
                sVar = new com.smartdigimkt.a0.s(false);
            } else {
                String str = oVar.f39220c.f41826q;
                String str2 = oVar.f39221d.f41632f;
                String strReplaceAll = str.replaceAll("\\{req_id\\}", str2 != null ? str2 : "");
                if (com.smartdigimkt.c0.e.a(oVar.f39219b, oVar.f39221d, oVar.f39220c, strReplaceAll).f45307a == 0) {
                    com.smartdigimkt.i0.a aVar = lVar.f40671g;
                    if (aVar != null) {
                        aVar.f40621i = true;
                    }
                    com.smartdigimkt.a0.r rVar2 = oVar.f39222e;
                    if (rVar2 != null) {
                        rVar2.a();
                    }
                    com.smartdigimkt.y3.h.a(oVar.f39221d, oVar.f39220c, strReplaceAll, "1", 1, 0, "");
                    com.smartdigimkt.a0.e eVar = oVar.f39223f;
                    if (eVar != null) {
                        eVar.b();
                        oVar.f39223f.a();
                        oVar.f39223f.a(true);
                        oVar.f39223f.c();
                    }
                    sVar = new com.smartdigimkt.a0.s(true);
                } else {
                    com.smartdigimkt.y3.h.a(oVar.f39221d, oVar.f39220c, strReplaceAll, "0", 1, 0, "");
                    sVar = new com.smartdigimkt.a0.s(false);
                }
            }
        }
        if (sVar.f39263a) {
            return;
        }
        x xVar = this.f45329b;
        int iJ = z.j(xVar.f45333a, xVar.f45336d);
        if (iJ == 1) {
            this.f45329b.f45341i.a(4, this.f45329b.f45341i.b());
            com.smartdigimkt.a0.s sVarB = this.f45329b.f45340h.b();
            x xVar2 = this.f45329b;
            com.smartdigimkt.y3.h.a(xVar2.f45333a, xVar2.f45336d, 1, sVarB.f39263a ? 1 : 2);
            return;
        }
        if (iJ > 1) {
            x xVar3 = this.f45329b;
            com.smartdigimkt.y3.h.a(xVar3.f45333a, xVar3.f45336d, iJ, 0);
        }
        com.smartdigimkt.i0.l lVar2 = this.f45328a;
        if (!lVar2.f40675k) {
            x xVar4 = this.f45329b;
            if (xVar4.f45345m && z.a(xVar4.f45333a, xVar4.f45336d.f41644r, lVar2, 1)) {
                x xVar5 = this.f45329b;
                xVar5.f45346n.openDataConfirmDialog(xVar5.f45335c, xVar5.f45333a, xVar5.f45336d, new r(this));
                return;
            }
        }
        x.a(this.f45329b, this.f45328a);
    }
}
