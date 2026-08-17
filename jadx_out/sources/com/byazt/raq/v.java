package com.byazt.raq;

import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, 1165, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public v f25116a;
    public v eb;
    public final byte[] hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f25117j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f25118l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f25119w;

    public v() {
        this.hp = new byte[8192];
        this.f25119w = true;
        this.f25117j = false;
    }

    public final v hp() {
        this.f25117j = true;
        return new v(this.hp, this.f25118l, this.jx, true, false);
    }

    public final void jx() {
        v vVar = this.eb;
        if (vVar == this) {
            throw new IllegalStateException();
        }
        if (vVar.f25119w) {
            int i2 = this.jx - this.f25118l;
            if (i2 > (8192 - vVar.jx) + (vVar.f25117j ? 0 : vVar.f25118l)) {
                return;
            }
            hp(vVar, i2);
            l();
            u.hp(this);
        }
    }

    public final v l() {
        v vVar = this.f25116a;
        v vVar2 = vVar != this ? vVar : null;
        v vVar3 = this.eb;
        if (vVar3 != null) {
            vVar3.f25116a = vVar;
        }
        v vVar4 = this.f25116a;
        if (vVar4 != null) {
            vVar4.eb = vVar3;
        }
        this.f25116a = null;
        this.eb = null;
        return vVar2;
    }

    public final v hp(v vVar) {
        vVar.eb = this;
        vVar.f25116a = this.f25116a;
        this.f25116a.eb = vVar;
        this.f25116a = vVar;
        return vVar;
    }

    public v(byte[] bArr, int i2, int i3, boolean z2, boolean z3) {
        this.hp = bArr;
        this.f25118l = i2;
        this.jx = i3;
        this.f25117j = z2;
        this.f25119w = z3;
    }

    public final v hp(int i2) {
        v vVarHp;
        if (i2 > 0 && i2 <= this.jx - this.f25118l) {
            if (i2 >= 1024) {
                vVarHp = hp();
            } else {
                vVarHp = u.hp();
                System.arraycopy(this.hp, this.f25118l, vVarHp.hp, 0, i2);
            }
            vVarHp.jx = vVarHp.f25118l + i2;
            this.f25118l += i2;
            this.eb.hp(vVarHp);
            return vVarHp;
        }
        throw new IllegalArgumentException();
    }

    public final void hp(v vVar, int i2) {
        if (vVar.f25119w) {
            int i3 = vVar.jx;
            if (i3 + i2 > 8192) {
                if (!vVar.f25117j) {
                    int i4 = vVar.f25118l;
                    if ((i3 + i2) - i4 <= 8192) {
                        byte[] bArr = vVar.hp;
                        System.arraycopy(bArr, i4, bArr, 0, i3 - i4);
                        vVar.jx -= vVar.f25118l;
                        vVar.f25118l = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.hp, this.f25118l, vVar.hp, vVar.jx, i2);
            vVar.jx += i2;
            this.f25118l += i2;
            return;
        }
        throw new IllegalArgumentException();
    }
}
