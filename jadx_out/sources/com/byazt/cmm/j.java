package com.byazt.cmm;

import android.content.Context;
import com.byazt.bs.eb;
import com.byazt.bs.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1902, 38})
/* loaded from: classes2.dex */
public class j implements w {

    /* renamed from: a, reason: collision with root package name */
    public s f18905a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.yc.hp f18906e;
    public com.byazt.yc.hp eb;
    public com.byazt.yc.hp gu;
    public com.byazt.bs.j hp;

    /* renamed from: j, reason: collision with root package name */
    public eb f18907j;
    public com.byazt.yc.hp jl;
    public com.byazt.bs.w jx;

    /* renamed from: k, reason: collision with root package name */
    public List<com.byazt.bs.l> f18908k = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.bs.a f18909l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.yc.hp f18910q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.yc.hp f18911s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.bs.hp f18912w;
    public com.byazt.jw.w zy;

    public j(com.byazt.jw.w wVar) {
        this.zy = wVar;
        Context context = wVar.getContext();
        if (com.byazt.fxy.hp.hp(wVar)) {
            com.byazt.yc.hp hpVarEb = this.zy.eb();
            this.eb = hpVarEb;
            com.byazt.bs.j jVar = new com.byazt.bs.j(context, hpVarEb, this.zy);
            this.hp = jVar;
            this.f18908k.add(jVar);
        }
        if (com.byazt.fxy.hp.w(wVar)) {
            if (this.zy.hp() != null) {
                this.f18910q = this.zy.hp();
            } else {
                this.f18910q = this.zy.s();
            }
            com.byazt.bs.w wVar2 = new com.byazt.bs.w(context, this.f18910q, this.zy);
            this.jx = wVar2;
            this.f18908k.add(wVar2);
        }
        if (com.byazt.fxy.hp.l(wVar)) {
            com.byazt.yc.hp hpVarS = this.zy.s();
            this.f18911s = hpVarS;
            com.byazt.bs.a aVar = new com.byazt.bs.a(context, hpVarS, this.zy);
            this.f18909l = aVar;
            this.f18908k.add(aVar);
        }
        if (com.byazt.fxy.hp.jx(wVar)) {
            com.byazt.yc.hp hpVarS2 = this.zy.s();
            this.f18906e = hpVarS2;
            eb ebVar = new eb(context, hpVarS2, this.zy);
            this.f18907j = ebVar;
            this.f18908k.add(ebVar);
        }
        if (com.byazt.fxy.hp.j(wVar)) {
            com.byazt.yc.hp hpVarQ = this.zy.q();
            this.gu = hpVarQ;
            com.byazt.bs.hp hpVar = new com.byazt.bs.hp(context, hpVarQ, this.zy);
            this.f18912w = hpVar;
            this.f18908k.add(hpVar);
        }
        if (com.byazt.fxy.hp.a(wVar)) {
            com.byazt.yc.hp hpVarA = this.zy.a();
            this.jl = hpVarA;
            s sVar = new s(context, hpVarA, this.zy);
            this.f18905a = sVar;
            this.f18908k.add(sVar);
        }
    }

    @Override // com.byazt.cmm.w
    public int hp() {
        return 0;
    }

    @Override // com.byazt.cmm.w
    public int l() {
        int size = this.f18908k.size();
        int iW = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iW += this.f18908k.get(i2).w();
        }
        return iW;
    }

    @Override // com.byazt.cmm.w
    public List<com.byazt.jw.l> hp(int i2, com.byazt.jw.l lVar, boolean z2, String str) {
        return null;
    }

    @Override // com.byazt.cmm.w
    public void hp(com.byazt.jw.l lVar, int i2, boolean z2) {
        if (lVar == null) {
            return;
        }
        try {
            lVar.l(System.currentTimeMillis());
            Iterator<com.byazt.bs.l> it = this.f18908k.iterator();
            while (it.hasNext()) {
                it.next().l(lVar);
            }
        } catch (Throwable unused) {
            com.byazt.giz.l.hp(com.byazt.fxy.l.hp.hp(), 1, this.zy);
        }
    }

    @Override // com.byazt.cmm.w
    public l hp(int i2, List<com.byazt.jw.l> list, int i3) {
        Iterator<com.byazt.bs.l> it = this.f18908k.iterator();
        l lVarHp = null;
        while (it.hasNext()) {
            lVarHp = it.next().hp(i2, list);
            if (lVarHp.hp()) {
                break;
            }
        }
        return lVarHp;
    }

    public List<com.byazt.jw.l> hp(com.byazt.jw.l lVar, int i2, int i3, boolean z2) {
        Iterator<com.byazt.bs.l> it = this.f18908k.iterator();
        while (it.hasNext()) {
            List<com.byazt.jw.l> listHp = it.next().hp(i3, i2, lVar, z2);
            if (listHp != null && listHp.size() != 0) {
                return listHp;
            }
        }
        return null;
    }

    @Override // com.byazt.cmm.w
    public List<com.byazt.jw.l> hp(int i2, com.byazt.jw.l lVar, boolean z2, List<String> list) {
        Iterator<com.byazt.bs.l> it = this.f18908k.iterator();
        while (it.hasNext()) {
            int i3 = i2;
            com.byazt.jw.l lVar2 = lVar;
            boolean z3 = z2;
            List<String> list2 = list;
            List<com.byazt.jw.l> listHp = it.next().hp(i3, lVar2, z3, list2, "db");
            if (listHp != null && listHp.size() != 0) {
                return listHp;
            }
            i2 = i3;
            lVar = lVar2;
            z2 = z3;
            list = list2;
        }
        return null;
    }

    @Override // com.byazt.cmm.w
    public boolean hp(int i2, String str, com.byazt.jw.l lVar) {
        Iterator<com.byazt.bs.l> it = this.f18908k.iterator();
        while (it.hasNext()) {
            if (it.next().hp(i2, str, lVar)) {
                return true;
            }
        }
        return false;
    }
}
