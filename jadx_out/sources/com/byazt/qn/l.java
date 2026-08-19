package com.byazt.qn;

import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1458, 34})
/* loaded from: classes3.dex */
public class l implements com.byazt.qu.hp {
    public com.byazt.tm.l hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.qu.hp f24984l;

    public l(com.byazt.qu.hp hpVar, com.byazt.tm.l lVar) {
        this.f24984l = hpVar;
        this.hp = lVar;
    }

    @Override // com.byazt.qu.hp
    public boolean hp(Map<String, Object> map) {
        com.byazt.tm.l lVar = this.hp;
        if (lVar == null) {
            return this.f24984l.hp(map);
        }
        if (lVar.hp()) {
            return true;
        }
        com.byazt.qu.hp hpVar = this.f24984l;
        if (hpVar == null) {
            return false;
        }
        return hpVar.hp(map);
    }

    public l(com.byazt.tm.l lVar) {
        this.hp = lVar;
    }
}
