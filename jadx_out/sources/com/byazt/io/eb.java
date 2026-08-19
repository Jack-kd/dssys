package com.byazt.io;

@com.byazt.kj.hp(hp = {0, 1, 856, 94})
/* loaded from: classes.dex */
public class eb extends BaseException {
    public eb(int i2, String str) {
        super(i2, str);
    }

    public eb hp(String str) {
        setExtraInfo(str);
        return this;
    }

    public String hp() {
        return getExtraInfo();
    }
}
