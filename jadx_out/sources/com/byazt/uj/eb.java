package com.byazt.uj;

import com.byazt.ud.v;
import java.util.Deque;

@com.byazt.kj.hp(hp = {0, 1, 2098, 94})
/* loaded from: classes3.dex */
public class eb extends a {
    private boolean hp(String str, int i2, Deque<com.byazt.ii.hp> deque) {
        if ('-' != hp(i2, str)) {
            return com.byazt.kv.hp.jx(hp(i2, str));
        }
        if (deque.peek() != null && !com.byazt.ki.jx.hp(deque.peek().hp())) {
            return false;
        }
        if (com.byazt.kv.hp.jx(hp(i2 + 1, str))) {
            return true;
        }
        throw new IllegalArgumentException("Unrecognized - symbol, not a negative number or operator, problem range:" + str.substring(0, i2));
    }

    @Override // com.byazt.uj.a
    public int hp(String str, int i2, Deque<com.byazt.ii.hp> deque, com.byazt.wj.hp hpVar) {
        char cHp;
        if (!hp(str, i2, deque)) {
            return hpVar.hp(str, i2, deque);
        }
        int i3 = hp(i2, str) == '-' ? i2 + 1 : i2;
        boolean z2 = false;
        while (true) {
            cHp = hp(i3, str);
            if (!com.byazt.kv.hp.jx(cHp) && (z2 || cHp != '.')) {
                break;
            }
            i3++;
            if (cHp == '.') {
                z2 = true;
            }
        }
        if (cHp != '.') {
            deque.push(new v(str.substring(i2, i3)));
            return i3;
        }
        throw new IllegalArgumentException("Illegal negative number format, problem interval:" + str.substring(i2, i3));
    }
}
