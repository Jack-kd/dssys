package com.byazt.sii;

import com.byazt.jz.s;

@com.byazt.kj.hp(hp = {0, 1, 1175, 28})
/* loaded from: classes3.dex */
public class hp {
    public Boolean hp = null;

    /* renamed from: l, reason: collision with root package name */
    public Boolean f25471l = null;
    public Boolean jx = null;

    public boolean hp() {
        if (this.f25471l == null) {
            eb ebVarXs = s.u().xs();
            this.f25471l = Boolean.valueOf(ebVarXs == null || ebVarXs.isCanUseWifiState());
        }
        return this.f25471l.booleanValue();
    }

    public boolean l() {
        if (this.jx == null) {
            eb ebVarXs = s.u().xs();
            this.jx = Boolean.valueOf(ebVarXs == null || ebVarXs.isCanUseLocation());
        }
        return this.jx.booleanValue();
    }

    public boolean hp(int i2) {
        eb ebVarXs = s.u().xs();
        return ebVarXs == null || eb.canRead(ebVarXs, i2);
    }
}
