package com.byazt.dq;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsSpeedCoefficientValue, 30})
/* loaded from: classes2.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public String f19240a;

    /* renamed from: e, reason: collision with root package name */
    public String f19241e;
    public int eb;
    public String gu;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public String f19242j;
    public String jl;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public String f19243k;

    /* renamed from: l, reason: collision with root package name */
    public String f19244l;

    /* renamed from: q, reason: collision with root package name */
    public String f19245q;

    /* renamed from: s, reason: collision with root package name */
    public String f19246s;

    /* renamed from: u, reason: collision with root package name */
    public String f19247u;

    /* renamed from: v, reason: collision with root package name */
    public String f19248v;
    public final Map<String, String> vv = new HashMap();

    /* renamed from: w, reason: collision with root package name */
    public String f19249w;
    public String xs;
    public String zy;

    @Nullable
    public String a() {
        return this.f19243k;
    }

    @Nullable
    public String e() {
        return this.jx;
    }

    @Nullable
    public String eb() {
        return this.f19248v;
    }

    @Nullable
    public String gu() {
        return this.f19242j;
    }

    public void hp(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        this.vv.clear();
        this.vv.putAll(map);
    }

    @Nullable
    public String j() {
        return this.jl;
    }

    @Nullable
    public String jl() {
        return TextUtils.isEmpty(this.jx) ? this.f19244l : this.jx;
    }

    @Nullable
    public String jx() {
        return this.gu;
    }

    public String k() {
        return this.xs;
    }

    @Nullable
    public String l() {
        return this.f19241e;
    }

    @Nullable
    public String q() {
        return this.f19244l;
    }

    @Nullable
    public String s() {
        return this.f19247u;
    }

    public String toString() {
        return "{mSdkNum='" + this.hp + "', mSlotId='" + this.f19242j + "', mLevelTag='" + this.f19249w + "', mEcpm=" + this.f19240a + ", mReqBiddingType=" + this.eb + "', mRequestId=" + this.f19245q + ", mSubRitType=" + this.gu + '}';
    }

    public int u() {
        return this.eb;
    }

    @Nullable
    public String v() {
        return this.f19249w;
    }

    @Nullable
    public String vv() {
        return this.f19245q;
    }

    @Nullable
    public String w() {
        return this.zy;
    }

    @Nullable
    public String xs() {
        return this.f19246s;
    }

    @Nullable
    public String zy() {
        return this.f19240a;
    }

    public void a(String str) {
        this.f19248v = str;
    }

    public void e(String str) {
        this.f19242j = str;
    }

    public void eb(String str) {
        this.f19247u = str;
    }

    public void gu(String str) {
        this.f19240a = str;
    }

    public void j(String str) {
        this.zy = str;
    }

    public void jl(String str) {
        this.xs = str;
    }

    public void jx(String str) {
        this.jl = str;
    }

    public void k(String str) {
        this.f19246s = str;
    }

    public void l(String str) {
        this.gu = str;
    }

    public void q(String str) {
        this.jx = str;
    }

    public void s(String str) {
        this.f19244l = str;
    }

    public void v(String str) {
        this.f19245q = str;
    }

    public void w(String str) {
        this.f19243k = str;
    }

    public void zy(String str) {
        this.f19249w = str;
    }

    public void l(int i2) {
        this.eb = i2;
    }

    public Map<String, String> hp() {
        return this.vv;
    }

    public void hp(String str) {
        this.f19241e = str;
    }

    public void hp(int i2) {
        this.hp = i2;
    }
}
