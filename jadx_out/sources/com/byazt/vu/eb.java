package com.byazt.vu;

import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 874, 94})
/* loaded from: classes3.dex */
public class eb extends hp {

    /* renamed from: a, reason: collision with root package name */
    public boolean f26673a;

    /* renamed from: e, reason: collision with root package name */
    public long f26674e;
    public int eb;
    public int gu;

    /* renamed from: j, reason: collision with root package name */
    public int f26675j;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.qt.l f26676q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f26677s;

    /* renamed from: w, reason: collision with root package name */
    public String f26678w;

    public eb() {
        this.f26675j = -1;
        this.f26678w = "unknown";
        this.f26673a = false;
        this.f26677s = false;
        this.gu = -1;
    }

    public boolean a() {
        return this.f26673a;
    }

    public int eb() {
        return this.eb;
    }

    public void hp(String str) {
        this.f26678w = str;
    }

    public int j() {
        return this.f26675j;
    }

    public void jx(int i2) {
        this.gu = i2;
    }

    public void l(int i2) {
        this.f26675j = i2;
    }

    public com.byazt.qt.l q() {
        return this.f26676q;
    }

    public boolean s() {
        return this.f26677s;
    }

    public String w() {
        return TextUtils.isEmpty(this.f26678w) ? "unknown" : this.f26678w;
    }

    public void hp(boolean z2) {
        this.f26673a = z2;
    }

    public void j(int i2) {
        this.eb = i2;
    }

    @Override // com.byazt.vu.hp
    public long jx() {
        return this.f26674e;
    }

    public void l(boolean z2) {
        this.f26677s = z2;
    }

    public void hp(com.byazt.qt.l lVar) {
        this.f26676q = lVar;
    }

    @Override // com.byazt.vu.hp
    public void hp(long j2) {
        this.f26674e = j2;
    }

    public eb(int i2, String str, boolean z2) {
        this.f26673a = false;
        this.gu = -1;
        this.f26675j = i2;
        this.f26678w = str;
        this.f26677s = z2;
    }
}
