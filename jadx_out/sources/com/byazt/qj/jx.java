package com.byazt.qj;

import com.byazt.qj.l;
import java.util.UUID;

@com.byazt.kj.hp(hp = {0, 1, 1558, 30})
/* loaded from: classes3.dex */
public abstract class jx implements l, Comparable<jx>, Runnable {
    public l.hp hp = l.hp.NORMAL;

    /* renamed from: l, reason: collision with root package name */
    public String f24730l = UUID.randomUUID().toString() + "-" + String.valueOf(System.nanoTime());

    public l.hp hp() {
        return this.hp;
    }

    @Override // java.lang.Comparable
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public int compareTo(jx jxVar) {
        if (hp().hp() < jxVar.hp().hp()) {
            return 1;
        }
        return hp().hp() > jxVar.hp().hp() ? -1 : 0;
    }
}
