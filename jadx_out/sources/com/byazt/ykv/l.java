package com.byazt.ykv;

import java.util.UUID;

@com.byazt.kj.hp(hp = {0, 1, 1151, 34})
/* loaded from: classes3.dex */
public abstract class l implements Comparable<l>, Runnable {
    public String jx;
    public int hp = 5;

    /* renamed from: l, reason: collision with root package name */
    public String f28043l = UUID.randomUUID().toString() + "-" + String.valueOf(System.nanoTime());

    public l(String str) {
        this.jx = str;
    }

    public void hp(int i2) {
        this.hp = i2;
    }

    public int hp() {
        return this.hp;
    }

    @Override // java.lang.Comparable
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public int compareTo(l lVar) {
        if (hp() < lVar.hp()) {
            return 1;
        }
        return hp() >= lVar.hp() ? -1 : 0;
    }
}
