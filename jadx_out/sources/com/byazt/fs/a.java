package com.byazt.fs;

import com.byazt.mg.a;
import com.byazt.uhg.u;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 218, 54})
/* loaded from: classes2.dex */
public class a extends hp {
    public u jx;

    public a(u uVar, w wVar) {
        com.byazt.uhg.a aVarEb;
        this.jx = uVar;
        this.hp = new ArrayList();
        if (uVar != null && (aVarEb = uVar.eb()) != null) {
            for (int i2 = 0; i2 < aVarEb.hp(); i2++) {
                this.hp.add(new a.l(aVarEb.hp(i2), aVarEb.l(i2)));
            }
        }
        this.f20094l = wVar;
    }

    @Override // com.byazt.fs.hp
    public int hp() {
        return this.jx.jx();
    }

    @Override // com.byazt.fs.hp
    public InputStream j() {
        return this.jx.a().jx();
    }

    @Override // com.byazt.fs.hp
    public List<a.l> jx() {
        return this.hp;
    }

    @Override // com.byazt.fs.hp
    public boolean l() {
        return this.jx.jx() >= 200 && this.jx.jx() < 300;
    }

    @Override // com.byazt.fs.hp
    public String hp(String str, String str2) {
        return hp(str) != null ? hp(str).f22972l : str2;
    }
}
