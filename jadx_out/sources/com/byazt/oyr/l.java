package com.byazt.oyr;

import com.byazt.uhg.gu;
import java.io.File;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 931, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public final long f24287a;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f24288e;
    public gu eb;
    public final int hp;

    /* renamed from: j, reason: collision with root package name */
    public final String f24289j;
    public final Map<String, String> jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f24290l;

    /* renamed from: s, reason: collision with root package name */
    public Throwable f24292s;

    /* renamed from: w, reason: collision with root package name */
    public final long f24293w;

    /* renamed from: q, reason: collision with root package name */
    public File f24291q = null;
    public byte[] gu = null;

    public l(boolean z2, int i2, String str, Map<String, String> map, String str2, long j2, long j3) {
        this.f24288e = z2;
        this.hp = i2;
        this.f24290l = str;
        this.jx = map;
        this.f24289j = str2;
        this.f24293w = j2;
        this.f24287a = j3;
    }

    public long a() {
        return this.f24293w;
    }

    public long e() {
        return this.f24293w - this.f24287a;
    }

    public long eb() {
        return this.f24287a;
    }

    public byte[] gu() {
        return this.gu;
    }

    public Throwable hp() {
        return this.f24292s;
    }

    public Map<String, String> j() {
        return this.jx;
    }

    public gu jl() {
        return this.eb;
    }

    public String jx() {
        return this.f24290l;
    }

    public int l() {
        return this.hp;
    }

    public boolean q() {
        return this.f24288e;
    }

    public File s() {
        return this.f24291q;
    }

    public String w() {
        return this.f24289j;
    }

    public void hp(File file) {
        this.f24291q = file;
    }

    public void hp(byte[] bArr) {
        this.gu = bArr;
    }

    public void hp(gu guVar) {
        this.eb = guVar;
    }

    public l(boolean z2, int i2, String str, Map<String, String> map, String str2, long j2, long j3, Throwable th) {
        this.f24288e = z2;
        this.hp = i2;
        this.f24290l = str;
        this.jx = map;
        this.f24289j = str2;
        this.f24293w = j2;
        this.f24287a = j3;
        this.f24292s = th;
    }
}
