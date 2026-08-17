package com.byazt.io;

@com.byazt.kj.hp(hp = {0, 1, 856, 34})
/* loaded from: classes.dex */
public class l extends BaseException {
    public final int hp;

    public l(int i2, int i3, String str) {
        super(i2, str);
        this.hp = i3;
    }

    public int hp() {
        return this.hp;
    }
}
