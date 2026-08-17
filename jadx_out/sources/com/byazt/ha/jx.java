package com.byazt.ha;

import java.util.Arrays;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1209, 30})
/* loaded from: classes2.dex */
public class jx extends k<com.byazt.mo.j, com.byazt.mo.j> {
    public jx(List<com.byazt.ch.hp<com.byazt.mo.j>> list) {
        super(hp(list));
    }

    private static List<com.byazt.ch.hp<com.byazt.mo.j>> hp(List<com.byazt.ch.hp<com.byazt.mo.j>> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            list.set(i2, hp(list.get(i2)));
        }
        return list;
    }

    @Override // com.byazt.ha.k, com.byazt.ha.zy
    public /* bridge */ /* synthetic */ List jx() {
        return super.jx();
    }

    @Override // com.byazt.ha.k, com.byazt.ha.zy
    public /* bridge */ /* synthetic */ boolean l() {
        return super.l();
    }

    @Override // com.byazt.ha.k
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    private static com.byazt.ch.hp<com.byazt.mo.j> hp(com.byazt.ch.hp<com.byazt.mo.j> hpVar) {
        com.byazt.mo.j jVar = hpVar.hp;
        com.byazt.mo.j jVar2 = hpVar.f18850l;
        if (jVar == null || jVar2 == null || jVar.hp().length == jVar2.hp().length) {
            return hpVar;
        }
        float[] fArrHp = hp(jVar.hp(), jVar2.hp());
        return hpVar.hp(jVar.hp(fArrHp), jVar2.hp(fArrHp));
    }

    public static float[] hp(float[] fArr, float[] fArr2) {
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        Arrays.sort(fArr3);
        float f2 = Float.NaN;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            float f3 = fArr3[i3];
            if (f3 != f2) {
                fArr3[i2] = f3;
                i2++;
                f2 = fArr3[i3];
            }
        }
        return Arrays.copyOfRange(fArr3, 0, i2);
    }

    @Override // com.byazt.ha.zy
    public com.byazt.dt.hp<com.byazt.mo.j, com.byazt.mo.j> hp() {
        return new com.byazt.dt.w(this.hp);
    }
}
