package com.smartdigimkt.k;

/* loaded from: classes5.dex */
public final class c0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d0 f41133a;

    public c0(d0 d0Var) {
        this.f41133a = d0Var;
    }

    public final void a(int i2) {
        r rVar;
        r rVar2;
        r rVar3;
        int iA = u.a(i2);
        if (iA == 2) {
            r rVar4 = this.f41133a.f41123a;
            if (rVar4 != null) {
                com.smartdigimkt.m3.c cVar = rVar4.f41187j;
                if (cVar != null) {
                    cVar.f41787H = 4;
                }
                rVar4.f41196s = c.LOADING;
                return;
            }
            return;
        }
        if (iA == 3) {
            r rVar5 = this.f41133a.f41123a;
            if (rVar5 != null) {
                com.smartdigimkt.m3.c cVar2 = rVar5.f41187j;
                if (cVar2 != null) {
                    cVar2.f41787H = 7;
                }
                rVar5.f41196s = c.PAUSE;
            }
            d0 d0Var = this.f41133a;
            a aVar = d0Var.f41136d;
            if (aVar == null || (rVar = d0Var.f41123a) == null) {
                return;
            }
            aVar.a(rVar, rVar.f41184g, rVar.f41185h, 2);
            return;
        }
        if (iA == 4) {
            r rVar6 = this.f41133a.f41123a;
            if (rVar6 != null) {
                com.smartdigimkt.m3.c cVar3 = rVar6.f41187j;
                if (cVar3 != null) {
                    cVar3.f41787H = 7;
                }
                rVar6.f41196s = c.STOP;
            }
            d0 d0Var2 = this.f41133a;
            a aVar2 = d0Var2.f41136d;
            if (aVar2 == null || (rVar2 = d0Var2.f41123a) == null) {
                return;
            }
            aVar2.a(rVar2, rVar2.f41184g, rVar2.f41185h, 3);
            return;
        }
        if (iA != 5) {
            if (iA == 6 && (rVar3 = this.f41133a.f41123a) != null) {
                com.smartdigimkt.m3.c cVar4 = rVar3.f41187j;
                if (cVar4 != null) {
                    cVar4.f41787H = 6;
                }
                rVar3.f41196s = c.FAIL;
                return;
            }
            return;
        }
        r rVar7 = this.f41133a.f41123a;
        if (rVar7 != null) {
            com.smartdigimkt.m3.c cVar5 = rVar7.f41187j;
            if (cVar5 != null) {
                cVar5.f41787H = 5;
            }
            rVar7.f41196s = c.FINISH;
        }
    }

    public final void a(int i2, String str) {
        String str2;
        d0 d0Var = this.f41133a;
        a aVar = d0Var.f41136d;
        if (aVar != null) {
            r rVar = d0Var.f41123a;
            if (i2 == 1) {
                str2 = "10001";
            } else if (i2 == 2) {
                str2 = com.anythink.core.common.inner.b.b.f4587d;
            } else {
                str2 = com.anythink.core.common.inner.b.b.f4585b;
            }
            aVar.a(rVar, "code[ " + str2 + " ],desc[ " + str + " ]");
        }
    }
}
