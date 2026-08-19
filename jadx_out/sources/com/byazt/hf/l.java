package com.byazt.hf;

import java.text.SimpleDateFormat;
import java.util.Date;

@com.byazt.kj.hp(hp = {0, 1, 751, 34})
/* loaded from: classes2.dex */
public class l {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f20692j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f20693l;

    /* renamed from: w, reason: collision with root package name */
    public long f20694w;

    public void hp(String str) {
        this.hp = str;
    }

    public void j(String str) {
        this.f20692j = str;
    }

    public void jx(String str) {
        this.jx = str;
    }

    public void l(String str) {
        this.f20693l = str;
    }

    public String toString() {
        return "MediationBehaviorDbData{primeRit='" + this.hp + "', adnRit='" + this.f20693l + "', adnName='" + this.jx + "', adAction='" + this.f20692j + "', timeStamp=" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(this.f20694w)) + '}';
    }

    public String hp() {
        return this.f20692j;
    }

    public void hp(long j2) {
        this.f20694w = j2;
    }
}
