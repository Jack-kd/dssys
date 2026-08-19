package com.byazt.lf;

import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 736, 19})
/* loaded from: classes3.dex */
public class jl implements com.byazt.lpy.a {
    public com.byazt.ap.w hp;

    public jl(com.byazt.ap.w wVar) {
        this.hp = wVar;
    }

    @Override // com.byazt.lpy.a
    public void hp(String str) {
        com.byazt.ap.w wVar = this.hp;
        if (wVar != null) {
            wVar.hp(str);
        }
    }

    @Override // com.byazt.lpy.a
    public void l(String str) {
        com.byazt.ap.w wVar = this.hp;
        if (wVar != null) {
            wVar.jx(str);
        }
    }

    @Override // com.byazt.lpy.a
    public void hp(String str, byte[] bArr) {
        com.byazt.ap.w wVar = this.hp;
        if (wVar != null) {
            wVar.hp(str, bArr);
        }
    }

    @Override // com.byazt.lpy.a
    public void hp(String str, String str2) {
        com.byazt.ap.w wVar = this.hp;
        if (wVar != null) {
            wVar.l(str, str2);
        }
    }

    @Override // com.byazt.lpy.a
    public com.byazt.lpy.w hp() {
        com.byazt.ap.w wVar = this.hp;
        if (wVar == null) {
            return null;
        }
        return new gu(wVar.hp());
    }

    @Override // com.byazt.lpy.a
    public void hp(final com.byazt.lpy.jx jxVar) {
        com.byazt.ap.w wVar = this.hp;
        if (wVar != null) {
            wVar.hp(new com.byazt.mnb.hp() { // from class: com.byazt.lf.jl.1
                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                    if (jxVar != null) {
                        jxVar.hp(new a(jVar), new eb(lVar));
                    }
                }

                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, IOException iOException) {
                    if (jxVar != null) {
                        jxVar.hp(new a(jVar), iOException);
                    }
                }
            });
        }
    }
}
