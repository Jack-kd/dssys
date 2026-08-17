package com.byazt.ag;

import com.byazt.jz.cx;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.ocx.hp;
import com.byazt.ocx.w;
import com.byazt.vu.a;
import com.byazt.vu.eb;
import com.byazt.xci.mp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 233, 28})
/* loaded from: classes2.dex */
public class hp {
    public w eb;
    public com.byazt.ocx.hp hp;
    public com.byazt.jt.l jx;

    /* renamed from: l, reason: collision with root package name */
    public String f17989l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f17990w;

    /* renamed from: j, reason: collision with root package name */
    public eb f17988j = new eb();

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.yek.hp f17987a = new com.byazt.yek.hp(4);

    public hp(com.byazt.ocx.hp hpVar) {
        this.hp = hpVar;
        hpVar.l();
        this.f17990w = sz.l().zb();
    }

    public void hp(com.byazt.vu.w wVar, com.byazt.cx.l<a, eb> lVar) {
        if (wVar == null || lVar == null) {
            return;
        }
        this.f17988j.l(true);
        this.jx = wVar.j();
        this.f17989l = wVar.a();
        this.eb = wVar.eb();
        if (com.byazt.cx.w.hp(this.jx, wVar.w())) {
            this.f17988j.l(1);
            this.f17988j.hp("no cache");
            lVar.hp(this.f17988j);
            return;
        }
        hp(this.f17989l, lVar);
    }

    private void hp(final String str, final com.byazt.cx.l<a, eb> lVar) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        this.hp.hp(this.f17988j, str, new hp.InterfaceC0326hp() { // from class: com.byazt.ag.hp.1
            @Override // com.byazt.ocx.hp.InterfaceC0326hp
            public void hp(final a aVar) {
                com.byazt.kl.hp.hp("lqmt", "缓存读取总耗时： " + (System.currentTimeMillis() - jCurrentTimeMillis));
                if (lVar == null) {
                    return;
                }
                if (aVar == null || aVar.l() == null) {
                    if (aVar == null) {
                        hp.this.f17988j.l(1);
                        hp.this.f17988j.hp("no ad model cache");
                        lVar.hp(hp.this.f17988j);
                        return;
                    } else if (aVar.l() == null) {
                        hp.this.f17988j.l(1);
                        hp.this.f17988j.hp("no splash material");
                        lVar.hp(hp.this.f17988j);
                        return;
                    }
                }
                mp mpVarL = aVar.l();
                hp.this.f17987a.hp(jCurrentTimeMillis);
                hp.this.f17987a.l(System.currentTimeMillis());
                ArrayList arrayList = new ArrayList();
                arrayList.add(mpVarL);
                hp.this.f17987a.hp(arrayList, new com.byazt.yek.a() { // from class: com.byazt.ag.hp.1.1
                    @Override // com.byazt.yek.a
                    public void hp(List<mp> list) {
                        if (!hp.this.f17990w) {
                            lVar.l(aVar);
                        } else {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            hp.this.hp(aVar, (com.byazt.cx.l<a, eb>) lVar);
                        }
                    }

                    @Override // com.byazt.yek.a
                    public void jx(List<mp> list) {
                        Iterator<mp> it = list.iterator();
                        while (it.hasNext()) {
                            hp.this.hp.hp(str, it.next());
                        }
                    }

                    @Override // com.byazt.yek.a
                    public void l(List<mp> list) {
                        if (list != null && !list.isEmpty()) {
                            lVar.l(aVar);
                            return;
                        }
                        hp.this.f17988j.l(22);
                        hp.this.f17988j.hp("check server cache unavailable");
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        lVar.hp(hp.this.f17988j);
                    }
                });
            }

            @Override // com.byazt.ocx.hp.InterfaceC0326hp
            public void hp() {
                com.byazt.kl.hp.hp("lqmt", "缓存读取失败");
                com.byazt.cx.l lVar2 = lVar;
                if (lVar2 == null) {
                    return;
                }
                lVar2.hp(hp.this.f17988j);
            }
        }, this.eb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final a aVar, final com.byazt.cx.l<a, eb> lVar) {
        if (lVar == null) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        mp mpVarL = aVar.l();
        sz.hp().hp(mpVarL.j(), mpVarL.w_(), new cx.hp() { // from class: com.byazt.ag.hp.2
            @Override // com.byazt.jz.cx.hp
            public void hp(boolean z2, long j2, long j3) {
                k.hp(hp.this.jx, j2, j3, System.currentTimeMillis() - jCurrentTimeMillis, 4, 1, z2 ? 1 : 0);
                if (z2) {
                    lVar.l(aVar);
                    return;
                }
                hp.this.f17988j.l(22);
                hp.this.f17988j.hp("check server cache unavailable");
                hp.this.f17988j.hp(j2);
                lVar.hp(hp.this.f17988j);
            }
        });
    }
}
