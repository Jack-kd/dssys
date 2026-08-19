package com.byazt.efq;

import com.byazt.hq.hq;
import com.byazt.uhg.k;
import com.byazt.uhg.u;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1388, 38})
/* loaded from: classes2.dex */
public class j implements com.byazt.uhg.l {
    public com.byazt.hq.w hp;

    public j(com.byazt.hq.w wVar) {
        this.hp = wVar;
    }

    @Override // com.byazt.uhg.l
    public k hp() {
        return new s(this.hp.hp());
    }

    @Override // com.byazt.uhg.l
    public boolean j() {
        return this.hp.j();
    }

    @Override // com.byazt.uhg.l
    public void jx() {
        this.hp.jx();
    }

    @Override // com.byazt.uhg.l
    public u l() throws IOException {
        return new q(this.hp.l());
    }

    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public com.byazt.uhg.l clone() {
        return new j(this.hp.w());
    }

    @Override // com.byazt.uhg.l
    public void hp(final com.byazt.uhg.jx jxVar) {
        this.hp.hp(new com.byazt.hq.a() { // from class: com.byazt.efq.j.1
            @Override // com.byazt.hq.a
            public void hp(com.byazt.hq.w wVar, IOException iOException) {
                jxVar.onFailure(new j(wVar), iOException);
            }

            @Override // com.byazt.hq.a
            public void hp(com.byazt.hq.w wVar, hq hqVar) throws IOException {
                jxVar.onResponse(new j(wVar), new q(hqVar));
            }
        });
    }
}
