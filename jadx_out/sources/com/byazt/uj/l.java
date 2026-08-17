package com.byazt.uj;

import com.byazt.ud.sz;
import java.util.Deque;

@com.byazt.kj.hp(hp = {0, 1, 2098, 34})
/* loaded from: classes3.dex */
public class l extends a {
    @Override // com.byazt.uj.a
    public int hp(String str, int i2, Deque<com.byazt.ii.hp> deque, com.byazt.wj.hp hpVar) {
        if ('\'' != hp(i2, str)) {
            return hpVar.hp(str, i2, deque);
        }
        int i3 = i2 + 1;
        int length = str.length();
        int i4 = i3;
        while (i4 < length && hp(i4, str) != '\'') {
            i4++;
        }
        if (hp(i4, str) != '\'') {
            throw new com.byazt.vxt.hp("String expression not surrounded by '", str.substring(i2));
        }
        deque.push(new sz(str.substring(i3, i4)));
        return i4 + 1;
    }
}
