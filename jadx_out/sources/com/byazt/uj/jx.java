package com.byazt.uj;

import com.byazt.ud.ns;
import java.util.Deque;

@com.byazt.kj.hp(hp = {0, 1, 2098, 30})
/* loaded from: classes3.dex */
public class jx extends a {
    @Override // com.byazt.uj.a
    public int hp(String str, int i2, Deque<com.byazt.ii.hp> deque, com.byazt.wj.hp hpVar) {
        char cHp = hp(i2, str);
        return (com.byazt.kv.hp.l(cHp) || cHp == '$') ? hp(str, i2, deque) : hpVar.hp(str, i2, deque);
    }

    private int hp(String str, int i2, Deque<com.byazt.ii.hp> deque) {
        int i3;
        int i4 = 0;
        while (true) {
            i3 = i4 + i2;
            char cHp = hp(i3, str);
            if (!com.byazt.kv.hp.l(cHp) && !com.byazt.kv.hp.jx(cHp) && '.' != cHp && '[' != cHp && ']' != cHp && '_' != cHp && '$' != cHp) {
                break;
            }
            i4++;
        }
        String strSubstring = str.substring(i2, i3);
        if (com.byazt.ki.hp.hp(strSubstring) != null) {
            deque.push(new com.byazt.ud.eb(strSubstring));
            return i3;
        }
        deque.push(new ns(strSubstring));
        return i3;
    }
}
