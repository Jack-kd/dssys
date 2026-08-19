package com.byazt.zd;

import com.byazt.xq.a;
import java.io.IOException;
import java.io.InputStream;

@com.byazt.kj.hp(hp = {0, 1, 1414, 30})
/* loaded from: classes3.dex */
public class jx implements l {
    public final InputStream hp;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.rc.hp f28375l;

    public jx(InputStream inputStream, int i2) {
        this.hp = inputStream;
        this.f28375l = new com.byazt.rc.hp(i2);
    }

    @Override // com.byazt.zd.l
    public void hp(com.byazt.rc.hp hpVar) {
    }

    @Override // com.byazt.zd.l
    public void l() {
        a.hp(this.hp);
    }

    @Override // com.byazt.zd.l
    public com.byazt.rc.hp hp() throws IOException {
        com.byazt.rc.hp hpVar = this.f28375l;
        hpVar.jx = this.hp.read(hpVar.hp);
        return this.f28375l;
    }
}
