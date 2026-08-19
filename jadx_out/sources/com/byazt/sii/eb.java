package com.byazt.sii;

import com.byazt.jz.di;
import com.byazt.jz.sz;

@com.byazt.kj.hp(hp = {0, 1, 1175, 94})
/* loaded from: classes3.dex */
public class eb extends di {

    /* renamed from: l, reason: collision with root package name */
    public boolean f25470l;

    public eb(com.byazt.jt.j jVar, boolean z2) {
        super(jVar);
        this.f25470l = z2;
    }

    private boolean hp(int i2) {
        return sz.l().gu(i2) && l(i2);
    }

    private boolean l(int i2) {
        if (i2 != 0 && i2 != 1) {
            if (i2 == 2) {
                return super.isCanUseWifiState();
            }
            if (i2 != 3) {
                return false;
            }
        }
        return super.isCanUsePhoneState();
    }

    public boolean canRead(int i2) {
        return hp(i2);
    }

    public com.byazt.jt.j forAdn() {
        return this.hp;
    }

    @Override // com.byazt.jz.di, com.byazt.jt.j
    public boolean isCanUsePhoneState() {
        if (this.f25470l) {
            return false;
        }
        return super.isCanUsePhoneState();
    }

    @Override // com.byazt.jz.di, com.byazt.jt.j
    public boolean isCanUseWifiState() {
        if (this.f25470l) {
            return false;
        }
        return super.isCanUseWifiState();
    }

    public static boolean canRead(eb ebVar, int i2) {
        if (ebVar == null) {
            return true;
        }
        return ebVar.canRead(i2);
    }
}
