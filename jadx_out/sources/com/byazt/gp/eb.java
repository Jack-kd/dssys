package com.byazt.gp;

@com.byazt.kj.hp(hp = {0, 1, 583, 94})
/* loaded from: classes2.dex */
public class eb implements Comparable<eb> {
    public com.byazt.rt.jx hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.iqm.l f20534j;
    public boolean jx = false;

    /* renamed from: l, reason: collision with root package name */
    public long f20535l;

    public eb(com.byazt.rt.jx jxVar, long j2, com.byazt.iqm.l lVar) {
        this.hp = jxVar;
        this.f20535l = j2;
        this.f20534j = lVar;
    }

    public String a() {
        com.byazt.iqm.l lVar = this.f20534j;
        if (lVar == null) {
            return null;
        }
        return lVar.sz();
    }

    public boolean eb() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar == null) {
            return false;
        }
        return jxVar.isUseFromCache();
    }

    @Override // java.lang.Comparable
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public int compareTo(eb ebVar) {
        return this.hp.compareTo(ebVar.hp);
    }

    public com.byazt.iqm.l j() {
        return this.f20534j;
    }

    public boolean jx() {
        return this.jx;
    }

    public String l() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar == null) {
            return null;
        }
        return jxVar.getAdNetworkSlotId();
    }

    public boolean w() {
        com.byazt.rt.jx jxVar = this.hp;
        return (jxVar == null || this.f20534j == null || jxVar.isHasShown() || !this.hp.isReady(this.f20534j.sz())) ? false : true;
    }

    public long hp() {
        return this.f20535l;
    }

    public void hp(boolean z2) {
        this.jx = z2;
    }

    public void l(boolean z2) {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar == null) {
            return;
        }
        jxVar.setUseFromCache(z2);
    }
}
