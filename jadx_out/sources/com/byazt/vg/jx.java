package com.byazt.vg;

@com.byazt.kj.hp(hp = {0, 1, 1750, 30})
/* loaded from: classes3.dex */
public class jx {
    public int[] hp = new int[32];
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f26563l;

    private void eb() {
        int[] iArr = this.hp;
        int length = iArr.length;
        int i2 = this.f26563l;
        int i3 = length - i2;
        if (i3 <= 2) {
            int[] iArr2 = new int[(iArr.length + i3) * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.hp = iArr2;
        }
    }

    public final void a() {
        int i2 = this.f26563l;
        if (i2 != 0) {
            int i3 = this.hp[i2 - 1] * 2;
            if ((i2 - 2) - i3 != 0) {
                this.f26563l = i2 - (i3 + 2);
                this.jx--;
            }
        }
    }

    public final void hp() {
        this.f26563l = 0;
        this.jx = 0;
    }

    public final int j() {
        return this.jx;
    }

    public final void jx() {
        int[] iArr;
        int i2;
        int i3 = this.f26563l;
        if (i3 == 0 || (i2 = (iArr = this.hp)[i3 - 1]) == 0) {
            return;
        }
        int i4 = i2 - 1;
        int i5 = i3 - 3;
        iArr[i5] = i4;
        iArr[i5 - ((i4 * 2) + 1)] = i4;
        this.f26563l = i3 - 2;
    }

    public final int l() {
        int i2 = this.f26563l;
        if (i2 == 0) {
            return 0;
        }
        return this.hp[i2 - 1];
    }

    public final void w() {
        eb();
        int i2 = this.f26563l;
        int[] iArr = this.hp;
        iArr[i2] = 0;
        iArr[i2 + 1] = 0;
        this.f26563l = i2 + 2;
        this.jx++;
    }

    public final void hp(int i2, int i3) {
        if (this.jx == 0) {
            w();
        }
        eb();
        int i4 = this.f26563l;
        int i5 = i4 - 1;
        int[] iArr = this.hp;
        int i6 = iArr[i5];
        int i7 = (i4 - 2) - (i6 * 2);
        int i8 = i6 + 1;
        iArr[i7] = i8;
        iArr[i5] = i2;
        iArr[i4] = i3;
        iArr[i4 + 1] = i8;
        this.f26563l = i4 + 2;
    }
}
