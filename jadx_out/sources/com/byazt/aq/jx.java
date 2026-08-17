package com.byazt.aq;

import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 403, 30})
/* loaded from: classes2.dex */
public class jx {
    public boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public boolean f18078l = true;
    public Map<String, Integer> jx = null;

    /* renamed from: j, reason: collision with root package name */
    public Map<String, String> f18076j = null;

    /* renamed from: w, reason: collision with root package name */
    public int f18082w = 10;

    /* renamed from: a, reason: collision with root package name */
    public int f18074a = 1;
    public int eb = 1;

    /* renamed from: s, reason: collision with root package name */
    public int f18080s = 10;

    /* renamed from: q, reason: collision with root package name */
    public int f18079q = 1;

    /* renamed from: e, reason: collision with root package name */
    public int f18075e = 1;
    public int gu = 900;
    public int jl = 120;
    public String zy = null;

    /* renamed from: k, reason: collision with root package name */
    public int f18077k = 0;

    /* renamed from: v, reason: collision with root package name */
    public long f18081v = 0;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(" localEnable: ");
        sb.append(this.hp);
        sb.append(" probeEnable: ");
        sb.append(this.f18078l);
        sb.append(" hostFilter: ");
        Map<String, Integer> map = this.jx;
        sb.append(map != null ? map.size() : 0);
        sb.append(" hostMap: ");
        Map<String, String> map2 = this.f18076j;
        sb.append(map2 != null ? map2.size() : 0);
        sb.append(" reqTo: ");
        sb.append(this.f18082w);
        sb.append("#");
        sb.append(this.f18074a);
        sb.append("#");
        sb.append(this.eb);
        sb.append(" reqErr: ");
        sb.append(this.f18080s);
        sb.append("#");
        sb.append(this.f18079q);
        sb.append("#");
        sb.append(this.f18075e);
        sb.append(" updateInterval: ");
        sb.append(this.gu);
        sb.append(" updateRandom: ");
        sb.append(this.jl);
        sb.append(" httpBlack: ");
        sb.append(this.zy);
        return sb.toString();
    }
}
