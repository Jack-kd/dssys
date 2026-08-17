package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;

/* loaded from: classes4.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public int f31233a;

    /* renamed from: b, reason: collision with root package name */
    public int f31234b;

    /* renamed from: c, reason: collision with root package name */
    public String f31235c;

    /* renamed from: d, reason: collision with root package name */
    public String f31236d;

    /* renamed from: e, reason: collision with root package name */
    public String f31237e;

    /* renamed from: f, reason: collision with root package name */
    public Context f31238f;

    /* renamed from: g, reason: collision with root package name */
    public ClassLoader f31239g;

    /* renamed from: h, reason: collision with root package name */
    public String f31240h;

    /* renamed from: i, reason: collision with root package name */
    public String f31241i;

    /* renamed from: j, reason: collision with root package name */
    public String f31242j;

    /* renamed from: k, reason: collision with root package name */
    public String f31243k;

    /* renamed from: l, reason: collision with root package name */
    public ActivityInfo[] f31244l;

    /* renamed from: m, reason: collision with root package name */
    public String f31245m;

    /* renamed from: n, reason: collision with root package name */
    public String f31246n;

    /* renamed from: o, reason: collision with root package name */
    public String f31247o;

    /* renamed from: p, reason: collision with root package name */
    public int f31248p;

    /* renamed from: q, reason: collision with root package name */
    public int f31249q;

    /* renamed from: r, reason: collision with root package name */
    public PackageInfo f31250r;

    /* renamed from: s, reason: collision with root package name */
    public long f31251s;

    /* renamed from: t, reason: collision with root package name */
    public int f31252t;

    /* renamed from: u, reason: collision with root package name */
    public int f31253u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f31254v;

    /* renamed from: w, reason: collision with root package name */
    public int f31255w;

    /* renamed from: x, reason: collision with root package name */
    public int f31256x = -1;

    /* renamed from: y, reason: collision with root package name */
    public boolean f31257y;

    public s() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        String str = this.f31235c;
        if (str == null) {
            if (sVar.f31235c != null) {
                return false;
            }
        } else if (!str.equals(sVar.f31235c)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31235c;
        return (str == null ? 0 : str.hashCode()) + 31;
    }

    public s(PackageInfo packageInfo, int i2, String str, String str2, String str3, String str4) {
        this.f31250r = packageInfo;
        this.f31233a = i2;
        this.f31235c = str;
        this.f31236d = str2;
        this.f31241i = str3;
        this.f31242j = str4;
    }
}
