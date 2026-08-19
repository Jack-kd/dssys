package com.byazt.ash;

import com.byazt.qt.gu;
import com.byazt.qt.v;

@com.byazt.kj.hp(hp = {0, 1, 513, 38})
/* loaded from: classes2.dex */
public class j {
    public com.byazt.p000if.eb hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.p000if.j f18146l;

    public j(com.byazt.p000if.eb ebVar) {
        this.hp = ebVar;
    }

    public void hp(int i2, String str) {
        com.byazt.p000if.eb ebVar = this.hp;
        if (ebVar != null) {
            ebVar.hp(i2, str);
        }
        com.byazt.p000if.j jVar = this.f18146l;
        if (jVar != null) {
            jVar.hp(i2, str);
        }
    }

    public void l(Object obj) {
        com.byazt.p000if.eb ebVar = this.hp;
        if (ebVar != null && (obj instanceof v)) {
            ebVar.hp();
            this.hp.l((v) obj);
        }
        com.byazt.p000if.j jVar = this.f18146l;
        if (jVar == null || !(obj instanceof gu)) {
            return;
        }
        jVar.hp();
        this.f18146l.l((gu) obj);
    }

    public j(com.byazt.p000if.j jVar) {
        this.f18146l = jVar;
    }

    public void hp(Object obj) {
        com.byazt.p000if.eb ebVar = this.hp;
        if (ebVar != null && (obj instanceof v)) {
            ebVar.hp((v) obj);
        }
        com.byazt.p000if.j jVar = this.f18146l;
        if (jVar == null || !(obj instanceof gu)) {
            return;
        }
        jVar.hp((gu) obj);
    }

    public long hp() {
        Object obj = this.hp;
        if (obj != null) {
            return obj instanceof com.byazt.de.l ? ((com.byazt.de.l) obj).l() : System.currentTimeMillis();
        }
        Object obj2 = this.f18146l;
        if (obj2 != null) {
            return obj2 instanceof com.byazt.de.l ? ((com.byazt.de.l) obj2).l() : System.currentTimeMillis();
        }
        return 0L;
    }
}
