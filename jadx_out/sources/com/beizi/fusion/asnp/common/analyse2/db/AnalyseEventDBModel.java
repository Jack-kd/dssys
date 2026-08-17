package com.beizi.fusion.asnp.common.analyse2.db;

import android.text.TextUtils;
import com.beizi.fusion.g3;
import com.beizi.fusion.ma;

/* loaded from: classes2.dex */
public class AnalyseEventDBModel extends ma {

    /* renamed from: e, reason: collision with root package name */
    private byte[] f13025e;

    /* renamed from: a, reason: collision with root package name */
    private String f13021a = "";

    /* renamed from: b, reason: collision with root package name */
    private String f13022b = "";

    /* renamed from: c, reason: collision with root package name */
    private String f13023c = "";

    /* renamed from: d, reason: collision with root package name */
    private String f13024d = "";

    /* renamed from: f, reason: collision with root package name */
    private boolean f13026f = false;

    public void a(byte[] bArr) {
        this.f13025e = bArr;
    }

    public void b(String str) {
        this.f13021a = str;
    }

    public String c() {
        return this.f13023c;
    }

    public byte[] d() {
        byte[] bArr = this.f13025e;
        if (bArr != null) {
            return bArr;
        }
        if (TextUtils.isEmpty(this.f13024d)) {
            return null;
        }
        return g3.a(this.f13024d);
    }

    public String e() {
        return this.f13021a;
    }

    public boolean f() {
        return this.f13026f;
    }

    public void setEventTime(String str) {
        this.f13022b = str;
    }

    public void a(String str) {
        this.f13023c = str;
    }

    public void b() {
        byte[] bArr = this.f13025e;
        if (bArr != null) {
            this.f13024d = g3.d(bArr);
            this.f13025e = null;
        }
    }

    public void a(boolean z2) {
        this.f13026f = z2;
    }
}
