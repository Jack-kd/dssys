package com.byazt.nj;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.bki.gu;
import com.byazt.toc.zy;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

@com.byazt.kj.hp(hp = {0, 1, 932, 30})
/* loaded from: classes3.dex */
public class jx implements com.byazt.cl.jx {
    public zy hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f23643j;
    public com.byazt.p000if.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.aqw.hp f23644l;

    public jx(Context context, com.byazt.aqw.hp hpVar, com.byazt.p000if.hp hpVar2, boolean z2) {
        this.f23644l = hpVar;
        this.f23643j = z2;
        com.byazt.aw.l.l(MediationConstant.TAG, "CSJMSplashLoader 构造函数创建 mAdSlotValueSet = " + this.f23644l + " mAdSlotValueSet.getCodeId() = " + this.f23644l.j());
        if (this.f23644l != null) {
            this.hp = new zy(context);
            this.jx = hpVar2;
        }
    }

    @Override // com.byazt.eb.w
    public void hp() {
        hp(-1);
    }

    @Override // com.byazt.cl.jx
    public void hp(int i2) {
        final com.byazt.tl.jx jxVarZy;
        com.byazt.aw.l.l(MediationConstant.TAG, "CSJMSplashLoader load timeout = ".concat(String.valueOf(i2)));
        com.byazt.ky.hp.hp().l();
        com.byazt.iqm.l lVar = new com.byazt.iqm.l(3, this.f23644l.nu(), this.f23644l.lv());
        lVar.hp(this.f23643j);
        if (i2 != -1) {
            lVar.a(i2);
        }
        com.byazt.aqw.l lVarWv = this.f23644l.wv();
        this.hp.hp(lVar, (lVarWv == null || (jxVarZy = lVarWv.zy()) == null || TextUtils.isEmpty(jxVarZy.hp()) || TextUtils.isEmpty(jxVarZy.jx()) || TextUtils.isEmpty(jxVarZy.l())) ? null : new gu() { // from class: com.byazt.nj.jx.1
            @Override // com.byazt.bki.gu
            public int hp() {
                String strHp = jxVarZy.hp();
                strHp.getClass();
                switch (strHp) {
                    case "klevin":
                        return 9;
                    case "pangle":
                        return 1;
                    case "sigmob":
                        return 8;
                    case "xiaomi":
                        return 10;
                    case "ks":
                        return 7;
                    case "gdt":
                        return 3;
                    case "baidu":
                        return 6;
                    case "mintegral":
                        return 4;
                    default:
                        return super.hp();
                }
            }

            @Override // com.byazt.bki.gu
            public String j() {
                return jxVarZy.j();
            }

            @Override // com.byazt.bki.gu
            public String jx() {
                return jxVarZy.jx();
            }

            @Override // com.byazt.bki.gu
            public String l() {
                return jxVarZy.l();
            }
        }, new com.byazt.htw.jx() { // from class: com.byazt.nj.jx.2
            @Override // com.byazt.htw.jx
            public void hp(com.byazt.dq.hp hpVar) {
                com.byazt.aw.l.l(MediationConstant.TAG, "CSJMSplashLoader onSplashAdLoadFail");
                if (hpVar == null || jx.this.jx == null) {
                    return;
                }
                com.byazt.eb.hp hpVar2 = new com.byazt.eb.hp(hpVar.hp, hpVar.f19238l);
                jx.this.jx.hp(hpVar2);
                jx.this.jx.hp(null, hpVar2);
            }

            @Override // com.byazt.htw.jx
            public void hp() {
                com.byazt.aw.l.l(MediationConstant.TAG, "CSJMSplashLoader onSplashAdLoadSuccess");
                if (jx.this.jx != null) {
                    hp hpVar = new hp(jx.this.hp, jx.this.jx);
                    jx.this.jx.hp(hpVar);
                    jx.this.jx.l(hpVar);
                }
            }
        });
    }
}
