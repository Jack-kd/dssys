package com.byazt.cmm;

import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1902, 28})
/* loaded from: classes2.dex */
public abstract class hp {
    public List<com.byazt.jw.l> hp(int i2, com.byazt.jw.l lVar, boolean z2, List<String> list, String str) {
        if (com.byazt.giz.hp.hp(i2)) {
            return l(i2, lVar, z2, list, str);
        }
        if (hp(lVar)) {
            return l(i2, lVar, z2, list, str);
        }
        return null;
    }

    public abstract boolean hp(com.byazt.jw.l lVar);

    public abstract boolean hp(String str);

    public abstract List<com.byazt.jw.l> l(int i2, com.byazt.jw.l lVar, boolean z2, List<String> list, String str);

    public abstract boolean l(int i2, String str, com.byazt.jw.l lVar);

    public boolean hp(int i2, String str, com.byazt.jw.l lVar) {
        if (com.byazt.giz.hp.hp(i2)) {
            return hp(str);
        }
        if (hp(lVar)) {
            return l(i2, str, lVar);
        }
        return false;
    }
}
