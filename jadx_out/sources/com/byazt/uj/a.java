package com.byazt.uj;

import java.util.Deque;

@com.byazt.kj.hp(hp = {0, 1, 2098, 54})
/* loaded from: classes3.dex */
public abstract class a {
    public int getIdentifier(int i2, String str) {
        int i3 = 0;
        while (true) {
            int i4 = i3 + i2;
            char cHp = hp(i4, str);
            if (!com.byazt.kv.hp.l(cHp) && !com.byazt.kv.hp.jx(cHp)) {
                return i4;
            }
            i3++;
        }
    }

    public char hp(int i2, String str) {
        if (i2 >= str.length()) {
            return (char) 26;
        }
        return str.charAt(i2);
    }

    public abstract int hp(String str, int i2, Deque<com.byazt.ii.hp> deque, com.byazt.wj.hp hpVar);

    public int l(int i2, String str) {
        while (com.byazt.kv.hp.hp(hp(i2, str))) {
            i2++;
        }
        return i2;
    }
}
