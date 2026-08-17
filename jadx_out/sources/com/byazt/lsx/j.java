package com.byazt.lsx;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 310, 38})
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public String f22769a;

    /* renamed from: e, reason: collision with root package name */
    public long f22771e;
    public String eb;
    public long ec;
    public String gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f22772j;
    public String jl;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public String f22773k;

    /* renamed from: l, reason: collision with root package name */
    public String f22774l;
    public String ns;

    /* renamed from: q, reason: collision with root package name */
    public String f22776q;

    /* renamed from: s, reason: collision with root package name */
    public String f22777s;

    /* renamed from: u, reason: collision with root package name */
    public String f22778u;

    /* renamed from: v, reason: collision with root package name */
    public int f22779v;
    public int vv;

    /* renamed from: w, reason: collision with root package name */
    public String f22780w;
    public String xs;
    public String zy;
    public int sz = -1;

    /* renamed from: n, reason: collision with root package name */
    public int f22775n = -1;
    public Map<String, Object> cx = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public long f22770b = -1;

    public j a(String str) {
        this.f22772j = str;
        return this;
    }

    public j e(String str) {
        this.f22777s = str;
        return this;
    }

    public j eb(String str) {
        this.f22780w = str;
        return this;
    }

    public j gu(String str) {
        this.jl = str;
        return this;
    }

    public j hp(int i2) {
        this.f22773k = String.valueOf(i2);
        return this;
    }

    public j j(String str) {
        this.f22774l = str;
        return this;
    }

    public j jl(String str) {
        this.ns = str;
        return this;
    }

    public j jx(String str) {
        this.gu = str;
        return this;
    }

    public j l(String str) {
        this.f22776q = str;
        return this;
    }

    public j q(String str) {
        this.eb = str;
        return this;
    }

    public j s(String str) {
        this.f22769a = str;
        return this;
    }

    public j setResult(int i2) {
        this.sz = i2;
        return this;
    }

    public j w(String str) {
        this.jx = str;
        return this;
    }

    public j a(int i2) {
        this.f22775n = i2;
        return this;
    }

    public j hp(long j2) {
        this.ec = j2;
        return this;
    }

    public j j(int i2) {
        this.xs = String.valueOf(i2);
        return this;
    }

    public j jx(int i2) {
        this.f22778u = String.valueOf(i2);
        return this;
    }

    public j l(long j2) {
        this.f22771e = j2;
        return this;
    }

    public j w(int i2) {
        this.vv = i2;
        return this;
    }

    public j hp(String str) {
        this.hp = str;
        return this;
    }

    public j jx(long j2) {
        this.f22770b = j2;
        return this;
    }

    public j l(int i2) {
        this.f22779v = i2;
        return this;
    }

    public static j jx() {
        j jVar = new j();
        jVar.jx(System.currentTimeMillis());
        return jVar;
    }

    public static j l() {
        return new j();
    }

    public j hp(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            this.cx.put(str, obj);
        }
        return this;
    }

    public j hp(Map<String, Object> map) {
        if (map != null && map.size() > 0) {
            this.cx.putAll(map);
        }
        return this;
    }

    public long hp() {
        return this.f22770b;
    }
}
