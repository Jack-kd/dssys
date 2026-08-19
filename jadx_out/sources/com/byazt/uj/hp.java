package com.byazt.uj;

import com.byazt.ud.n;
import java.util.Deque;

@com.byazt.kj.hp(hp = {0, 1, 2098, 28})
/* loaded from: classes3.dex */
public class hp extends a {
    @Override // com.byazt.uj.a
    public int hp(String str, int i2, Deque<com.byazt.ii.hp> deque, com.byazt.wj.hp hpVar) {
        if (',' != hp(i2, str)) {
            return hpVar.hp(str, i2, deque);
        }
        deque.push(new n(com.byazt.ki.j.COMMA));
        return i2 + 1;
    }
}
