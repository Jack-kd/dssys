package com.byazt.mw;

import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 512, 30})
/* loaded from: classes3.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public hp f23301a;

    /* renamed from: e, reason: collision with root package name */
    public JSONObject f23302e;
    public String eb;
    public Map<String, TreeMap<Float, String>> hp;

    /* renamed from: j, reason: collision with root package name */
    public String f23303j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public long f23304l;

    /* renamed from: q, reason: collision with root package name */
    public int f23305q = 1;

    /* renamed from: s, reason: collision with root package name */
    public String f23306s;

    /* renamed from: w, reason: collision with root package name */
    public long f23307w;

    @com.byazt.kj.hp(hp = {0, 1, 512, 219})
    public static class hp {
        public String hp;

        /* renamed from: l, reason: collision with root package name */
        public String f23308l;
    }

    public long a() {
        return this.f23307w;
    }

    public int e() {
        return this.f23305q;
    }

    public hp eb() {
        return this.f23301a;
    }

    public JSONObject hp() {
        return this.f23302e;
    }

    public int j() {
        return this.jx;
    }

    public long jx() {
        return this.f23304l;
    }

    public Map<String, TreeMap<Float, String>> l() {
        return this.hp;
    }

    public String q() {
        return this.f23306s;
    }

    public String s() {
        return this.eb;
    }

    public String toString() {
        return "AnimationModel{mKeyFramesMap=" + this.hp + ", mDuration=" + this.f23304l + ", mPlayCount=" + this.jx + ", mPlayDirection=" + this.f23303j + ", mDelay=" + this.f23307w + ", mName=" + this.f23306s + ", mPlayState=" + this.f23305q + ", mTransformOrigin='" + this.f23301a + "', mTimingFunction='" + this.eb + "'}";
    }

    public String w() {
        return this.f23303j;
    }

    public void hp(JSONObject jSONObject) {
        this.f23302e = jSONObject;
    }

    public void jx(String str) {
        this.f23306s = str;
    }

    public void l(long j2) {
        this.f23307w = j2;
    }

    public void hp(Map<String, TreeMap<Float, String>> map) {
        this.hp = map;
    }

    public void l(String str) {
        this.eb = str;
    }

    public void hp(long j2) {
        this.f23304l = j2;
    }

    public void l(int i2) {
        this.f23305q = i2;
    }

    public void hp(int i2) {
        this.jx = i2;
    }

    public void hp(String str) {
        this.f23303j = str;
    }

    public void hp(hp hpVar) {
        this.f23301a = hpVar;
    }
}
