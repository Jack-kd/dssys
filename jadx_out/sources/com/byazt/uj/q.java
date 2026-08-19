package com.byazt.uj;

import java.util.Deque;
import java.util.LinkedList;

@com.byazt.kj.hp(hp = {0, 1, 2098, 150})
/* loaded from: classes3.dex */
public class q extends a {
    @Override // com.byazt.uj.a
    public int hp(String str, int i2, Deque<com.byazt.ii.hp> deque, com.byazt.wj.hp hpVar) {
        com.byazt.ii.hp hpVarPollFirst;
        if (')' != hp(i2, str)) {
            return hpVar.hp(str, i2, deque);
        }
        LinkedList<com.byazt.ii.hp> linkedList = new LinkedList();
        while (true) {
            hpVarPollFirst = deque.pollFirst();
            if (hpVarPollFirst == null || hpVarPollFirst.hp() == com.byazt.ki.j.LEFT_PAREN || ((hpVarPollFirst instanceof com.byazt.ud.e) && hpVarPollFirst.hp() == com.byazt.ki.l.METHOD && !((com.byazt.ud.e) hpVarPollFirst).jx())) {
                break;
            }
            linkedList.addFirst(hpVarPollFirst);
        }
        if (hpVarPollFirst == null) {
            throw new IllegalArgumentException(str.substring(0, i2));
        }
        if (hpVarPollFirst.hp() != com.byazt.ki.l.METHOD) {
            deque.push(com.byazt.kv.l.hp(linkedList, str, i2));
            return i2 + 1;
        }
        com.byazt.ud.e eVar = (com.byazt.ud.e) hpVarPollFirst;
        LinkedList linkedList2 = new LinkedList();
        LinkedList linkedList3 = new LinkedList();
        for (com.byazt.ii.hp hpVar2 : linkedList) {
            if (hpVar2.hp() == com.byazt.ki.j.COMMA) {
                linkedList2.add(com.byazt.kv.l.hp(linkedList3, str, i2));
                linkedList3.clear();
            } else {
                linkedList3.addLast(hpVar2);
            }
        }
        if (!linkedList3.isEmpty()) {
            linkedList2.add(com.byazt.kv.l.hp(linkedList3, str, i2));
        }
        eVar.hp((com.byazt.ii.hp[]) linkedList2.toArray(new com.byazt.ii.hp[linkedList2.size()]));
        eVar.hp(true);
        int i3 = i2 + 1;
        deque.push(eVar);
        return i3;
    }
}
