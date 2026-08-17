package com.byazt.yu;

import java.util.LinkedList;

@com.byazt.kj.hp(hp = {0, 1, 797, 34})
/* loaded from: classes3.dex */
public class l {
    public static final LinkedList<com.byazt.cn.hp> hp = new LinkedList<>();

    /* renamed from: l, reason: collision with root package name */
    public static final LinkedList<com.byazt.cn.hp> f28298l = new LinkedList<>();

    public static void hp(com.byazt.cn.hp hpVar) {
        LinkedList<com.byazt.cn.hp> linkedList = hp;
        synchronized (linkedList) {
            try {
                if (linkedList.size() > 200) {
                    com.byazt.cn.hp hpVarPoll = linkedList.poll();
                    com.byazt.gt.e.l("drop event in cache", null);
                    f28298l.add(hpVarPoll);
                }
                linkedList.add(hpVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void hp() {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        LinkedList<com.byazt.cn.hp> linkedList3 = hp;
        synchronized (linkedList3) {
            linkedList.addAll(linkedList3);
            LinkedList<com.byazt.cn.hp> linkedList4 = f28298l;
            linkedList2.addAll(linkedList4);
            linkedList3.clear();
            linkedList4.clear();
        }
        while (!linkedList.isEmpty()) {
            com.byazt.lxu.j.hp((com.byazt.cn.hp) linkedList.poll());
        }
    }
}
