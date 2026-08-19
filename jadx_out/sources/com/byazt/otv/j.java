package com.byazt.otv;

import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 2145, 38})
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public boolean f24182a;
    public final jx hp;

    /* renamed from: j, reason: collision with root package name */
    public Long f24183j;
    public Long jx;

    /* renamed from: l, reason: collision with root package name */
    public List<String> f24184l;

    /* renamed from: w, reason: collision with root package name */
    public final long f24185w;

    public j(jx jxVar, long j2, boolean z2) {
        this(jxVar, j2, null, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            j jVar = (j) obj;
            if (this.f24185w == jVar.f24185w && this.hp.equals(jVar.hp)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((int) this.f24185w) * 31) + this.hp.hashCode();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp() {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.otv.j.hp():void");
    }

    public jx l() {
        return this.hp;
    }

    public j(jx jxVar, long j2, List<String> list, boolean z2) {
        if (jxVar == null) {
            throw new IllegalArgumentException("message cannot be null");
        }
        this.f24185w = j2;
        this.hp = jxVar;
        this.f24184l = list;
        if (z2) {
            hp();
        }
    }
}
