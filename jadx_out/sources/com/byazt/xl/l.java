package com.byazt.xl;

import android.text.TextUtils;
import com.byazt.aw.w;
import com.byazt.rt.jx;
import com.byazt.tgw.e;
import com.byazt.tgw.s;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 768, 34})
/* loaded from: classes3.dex */
public class l implements hp {

    /* renamed from: a, reason: collision with root package name */
    public int f27678a;
    public boolean eb;
    public e hp;

    /* renamed from: j, reason: collision with root package name */
    public String f27680j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.kq.hp f27681l;

    /* renamed from: q, reason: collision with root package name */
    public int f27682q;

    /* renamed from: w, reason: collision with root package name */
    public int f27684w;

    /* renamed from: s, reason: collision with root package name */
    public long f27683s = -1;

    /* renamed from: e, reason: collision with root package name */
    public boolean f27679e = false;

    private l() {
    }

    public int a() {
        return this.f27678a;
    }

    public boolean b() {
        e eVar = this.hp;
        return eVar != null && eVar.ec() == 3;
    }

    public boolean cx() {
        e eVar = this.hp;
        return eVar != null && eVar.ec() == 2;
    }

    public int d() {
        e eVar = this.hp;
        if (eVar != null) {
            return eVar.hp();
        }
        return 0;
    }

    public String di() {
        return (cx() && nu() != null) ? nu().e() : "";
    }

    public String dy() {
        e eVar = this.hp;
        return eVar != null ? eVar.k() : "";
    }

    public boolean e() {
        e eVar = this.hp;
        if (eVar != null) {
            return eVar.as();
        }
        return false;
    }

    public int eb() {
        return this.f27684w;
    }

    public int ec() {
        e eVar = this.hp;
        if (eVar != null) {
            return eVar.ec();
        }
        return 0;
    }

    public boolean gu() {
        e eVar = this.hp;
        if (eVar != null) {
            return TextUtils.equals(eVar.v(), MediationConstant.ADN_PANGLE);
        }
        return false;
    }

    public double hq() {
        e eVar = this.hp;
        if (eVar != null) {
            return eVar.n();
        }
        return 0.0d;
    }

    public long j() {
        return this.f27683s;
    }

    public String jl() {
        e eVar = this.hp;
        return eVar != null ? eVar.vv() : "";
    }

    public int jx() {
        return this.f27682q;
    }

    public int k() {
        e eVar = this.hp;
        if (eVar != null) {
            return eVar.e();
        }
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0024 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int ky() {
        /*
            r7 = this;
            com.byazt.tgw.e r0 = r7.hp
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r0.a()
            com.byazt.tgw.e r2 = r7.hp
            int r2 = r2.zy()
            r3 = 20001(0x4e21, float:2.8027E-41)
            r4 = 20002(0x4e22, float:2.8029E-41)
            r5 = 20003(0x4e23, float:2.803E-41)
            r6 = 20004(0x4e24, float:2.8032E-41)
            switch(r2) {
                case 1: goto L4a;
                case 2: goto L49;
                case 3: goto L46;
                case 4: goto L1b;
                case 5: goto L37;
                case 6: goto L1b;
                case 7: goto L27;
                case 8: goto L26;
                case 9: goto L25;
                case 10: goto L1c;
                default: goto L1b;
            }
        L1b:
            goto L24
        L1c:
            r2 = 1
            if (r0 != r2) goto L20
            return r6
        L20:
            r2 = 2
            if (r0 != r2) goto L24
            return r5
        L24:
            return r1
        L25:
            return r4
        L26:
            return r5
        L27:
            r1 = 6
            r2 = 20006(0x4e26, float:2.8034E-41)
            if (r0 != r1) goto L2d
            return r2
        L2d:
            r1 = 7
            if (r0 != r1) goto L31
            return r5
        L31:
            r1 = 8
            if (r0 != r1) goto L36
            return r6
        L36:
            return r2
        L37:
            r1 = 4
            r2 = 20005(0x4e25, float:2.8033E-41)
            if (r0 != r1) goto L3d
            return r2
        L3d:
            r1 = 5
            if (r0 != r1) goto L41
            return r4
        L41:
            r1 = 3
            if (r0 != r1) goto L45
            return r3
        L45:
            return r2
        L46:
            r0 = 20007(0x4e27, float:2.8036E-41)
            return r0
        L49:
            return r6
        L4a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.xl.l.ky():int");
    }

    public void l(int i2) {
        this.f27678a = i2;
    }

    public int lv() {
        e eVar = this.hp;
        if (eVar != null) {
            return eVar.q();
        }
        return 0;
    }

    public int n() {
        e eVar = this.hp;
        if (eVar != null) {
            return eVar.d();
        }
        return 0;
    }

    public String ns() {
        e eVar = this.hp;
        return eVar != null ? eVar.v() : "";
    }

    public s nu() {
        e eVar = this.hp;
        if (eVar != null) {
            return eVar.ud();
        }
        return null;
    }

    public int o() {
        e eVar = this.hp;
        if (eVar != null) {
            return eVar.zy();
        }
        return 0;
    }

    public Object pu() {
        if (cx() && nu() != null) {
            return nu().l();
        }
        return null;
    }

    public void q() {
        w.hp(new Runnable() { // from class: com.byazt.xl.l.3
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f27681l != null) {
                    l.this.f27681l.hp();
                }
            }
        });
    }

    public String r() {
        e eVar = this.hp;
        return eVar != null ? eVar.ms() : "";
    }

    public e s() {
        return this.hp;
    }

    public int sz() {
        e eVar = this.hp;
        if (eVar != null) {
            return eVar.o();
        }
        return 0;
    }

    public String u() {
        e eVar = this.hp;
        return eVar != null ? eVar.wv() : "";
    }

    public double ud() {
        e eVar = this.hp;
        if (eVar != null) {
            return eVar.ns();
        }
        return 0.0d;
    }

    public int v() {
        e eVar = this.hp;
        if (eVar != null) {
            return eVar.a();
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String vv() {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.xl.l.vv():java.lang.String");
    }

    public boolean w() {
        return this.eb;
    }

    public double wv() {
        e eVar;
        if (cx() || hp() || b() || (eVar = this.hp) == null) {
            return 0.0d;
        }
        return eVar.b();
    }

    public boolean xh() {
        return this.f27679e;
    }

    public String xs() {
        return this.jx;
    }

    public String zy() {
        e eVar = this.hp;
        return eVar != null ? eVar.v() : "";
    }

    public static l hp(e eVar, com.byazt.kq.hp hpVar) {
        l lVar = new l();
        lVar.hp = eVar;
        lVar.f27681l = hpVar;
        return lVar;
    }

    public void jx(int i2) {
        this.f27684w = i2;
    }

    public void l(String str) {
        this.f27680j = str;
    }

    @Override // com.byazt.xl.hp
    public String l() {
        return this.f27680j;
    }

    public void l(boolean z2) {
        this.f27679e = z2;
    }

    public void hp(int i2) {
        this.f27682q = i2;
    }

    public void hp(long j2) {
        this.f27683s = j2;
    }

    public void hp(boolean z2) {
        this.eb = z2;
    }

    public void hp(final List<jx> list, final e eVar) {
        w.hp(new Runnable() { // from class: com.byazt.xl.l.1
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f27681l != null) {
                    l.this.f27681l.hp(list, eVar);
                }
            }
        });
    }

    public void hp(final com.byazt.dq.hp hpVar, final e eVar) {
        w.hp(new Runnable() { // from class: com.byazt.xl.l.2
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f27681l != null) {
                    l.this.f27681l.hp(hpVar, eVar);
                }
            }
        });
    }

    public void hp(String str) {
        this.jx = str;
    }

    @Override // com.byazt.xl.hp
    public boolean hp() {
        e eVar = this.hp;
        return eVar != null && eVar.ec() == 1;
    }
}
