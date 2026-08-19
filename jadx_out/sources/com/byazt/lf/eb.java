package com.byazt.lf;

import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 736, 94})
/* loaded from: classes3.dex */
public class eb implements com.byazt.lpy.w {
    public com.byazt.oyr.l hp;

    public eb(com.byazt.oyr.l lVar) {
        this.hp = lVar;
    }

    @Override // com.byazt.lpy.w
    public boolean hp() {
        com.byazt.oyr.l lVar = this.hp;
        if (lVar != null) {
            return lVar.q();
        }
        return false;
    }

    @Override // com.byazt.lpy.w
    public String j() {
        com.byazt.oyr.l lVar = this.hp;
        return lVar != null ? lVar.jx() : "";
    }

    @Override // com.byazt.lpy.w
    public int jx() {
        com.byazt.oyr.l lVar = this.hp;
        if (lVar != null) {
            return lVar.l();
        }
        return -1;
    }

    @Override // com.byazt.lpy.w
    public String l() {
        com.byazt.oyr.l lVar = this.hp;
        return lVar != null ? lVar.w() : "";
    }

    @Override // com.byazt.lpy.w
    public Map<String, String> w() {
        com.byazt.oyr.l lVar = this.hp;
        return lVar != null ? lVar.j() : new HashMap();
    }
}
