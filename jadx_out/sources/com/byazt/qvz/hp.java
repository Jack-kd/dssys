package com.byazt.qvz;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 236, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: l, reason: collision with root package name */
    public int f25059l = 0;
    public Map<Integer, Long> hp = new ConcurrentHashMap();

    public void hp() {
        this.f25059l = 0;
        try {
            this.hp.clear();
        } catch (Exception unused) {
        }
    }

    public boolean j(int i2) {
        return i2 == this.f25059l;
    }

    public void jx(int i2) {
        if (hp(i2)) {
            return;
        }
        this.f25059l |= i2;
        try {
            this.hp.put(Integer.valueOf(i2), Long.valueOf(System.currentTimeMillis()));
        } catch (Exception unused) {
        }
    }

    public Long l(int i2) {
        try {
            if (hp(i2)) {
                return this.hp.get(Integer.valueOf(i2));
            }
        } catch (Exception unused) {
        }
        return -1L;
    }

    public boolean hp(int i2) {
        return (this.f25059l & i2) == i2;
    }
}
