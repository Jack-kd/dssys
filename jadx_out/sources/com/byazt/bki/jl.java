package com.byazt.bki;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 732, 19})
/* loaded from: classes2.dex */
public class jl {

    /* renamed from: a, reason: collision with root package name */
    public String[] f18586a;
    public String eb;
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f18587j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public int f18588l;

    /* renamed from: q, reason: collision with root package name */
    public String f18589q;

    /* renamed from: s, reason: collision with root package name */
    public Map<String, String> f18590s;

    /* renamed from: w, reason: collision with root package name */
    public int[] f18591w;

    @com.byazt.kj.hp(hp = {0, 1, 732, 757})
    public static class hp {
        public boolean hp = false;

        /* renamed from: l, reason: collision with root package name */
        public int f18594l = 0;
        public boolean jx = true;

        /* renamed from: j, reason: collision with root package name */
        public boolean f18593j = false;

        /* renamed from: w, reason: collision with root package name */
        public int[] f18597w = {4, 3, 5};

        /* renamed from: a, reason: collision with root package name */
        public String[] f18592a = new String[0];
        public String eb = "";

        /* renamed from: s, reason: collision with root package name */
        public final Map<String, String> f18596s = new HashMap();

        /* renamed from: q, reason: collision with root package name */
        public String f18595q = "";

        public hp hp(boolean z2) {
            this.hp = z2;
            return this;
        }

        public hp l(boolean z2) {
            this.jx = z2;
            return this;
        }

        public hp hp(int i2) {
            this.f18594l = i2;
            return this;
        }

        public hp l(@NonNull String str) {
            this.f18595q = str;
            return this;
        }

        public hp hp(@NonNull int... iArr) {
            this.f18597w = iArr;
            return this;
        }

        public hp hp(@NonNull String str) {
            this.eb = str;
            return this;
        }

        public hp hp(@NonNull Map<String, String> map) {
            this.f18596s.putAll(map);
            return this;
        }

        public jl hp() {
            return new jl(this);
        }
    }

    @Nullable
    public String[] a() {
        return this.f18586a;
    }

    @Nullable
    public String eb() {
        return this.eb;
    }

    public boolean hp() {
        return this.hp;
    }

    public boolean j() {
        return this.f18587j;
    }

    public boolean jx() {
        return this.jx;
    }

    public int l() {
        return this.f18588l;
    }

    @Nullable
    public String q() {
        return this.f18589q;
    }

    @NonNull
    public Map<String, String> s() {
        return this.f18590s;
    }

    public int[] w() {
        return this.f18591w;
    }

    private jl(hp hpVar) {
        this.hp = hpVar.hp;
        this.f18588l = hpVar.f18594l;
        this.jx = hpVar.jx;
        this.f18587j = hpVar.f18593j;
        this.f18591w = hpVar.f18597w;
        this.f18586a = hpVar.f18592a;
        this.eb = hpVar.eb;
        this.f18590s = hpVar.f18596s;
        this.f18589q = hpVar.f18595q;
    }
}
