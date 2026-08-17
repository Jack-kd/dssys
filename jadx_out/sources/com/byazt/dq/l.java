package com.byazt.dq;

import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsSpeedCoefficientValue, 34})
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public String f19250a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f19251j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f19252l;

    /* renamed from: w, reason: collision with root package name */
    public int f19253w;

    @Nullable
    public String a() {
        return this.f19250a;
    }

    @Nullable
    public String hp() {
        return this.f19251j;
    }

    @Nullable
    public String j() {
        return this.jx;
    }

    @Nullable
    public String jx() {
        return this.f19252l;
    }

    @Nullable
    public String l() {
        return this.hp;
    }

    public String toString() {
        return "{mediationRit='" + this.hp + "', adnName='" + this.f19252l + "', customAdnName='" + this.jx + "', adType='" + this.f19251j + "', errCode=" + this.f19253w + ", errMsg=" + this.f19250a + '}';
    }

    public int w() {
        return this.f19253w;
    }

    public l hp(String str) {
        this.f19251j = str;
        return this;
    }

    public l j(String str) {
        this.jx = str;
        return this;
    }

    public l jx(String str) {
        this.f19252l = str;
        return this;
    }

    public l l(String str) {
        this.hp = str;
        return this;
    }

    public l w(String str) {
        this.f19250a = str;
        return this;
    }

    public l hp(int i2) {
        this.f19253w = i2;
        return this;
    }
}
