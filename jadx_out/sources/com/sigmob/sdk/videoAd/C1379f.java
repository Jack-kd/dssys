package com.sigmob.sdk.videoAd;

import com.sigmob.sdk.base.views.C1302n;
import java.io.Serializable;

/* renamed from: com.sigmob.sdk.videoAd.f, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1379f implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: a, reason: collision with root package name */
    private final int f38764a;

    /* renamed from: b, reason: collision with root package name */
    private final int f38765b;

    /* renamed from: c, reason: collision with root package name */
    private final C1302n f38766c;

    /* renamed from: d, reason: collision with root package name */
    private final int f38767d;

    /* renamed from: e, reason: collision with root package name */
    private String f38768e;

    /* renamed from: f, reason: collision with root package name */
    private String f38769f;

    /* renamed from: g, reason: collision with root package name */
    private String f38770g;

    /* renamed from: h, reason: collision with root package name */
    private int f38771h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f38772i = false;

    /* renamed from: j, reason: collision with root package name */
    private C1374a f38773j;

    public C1379f(int i2, int i3, int i4, String str, String str2, C1302n c1302n) {
        this.f38764a = i2;
        this.f38765b = i3;
        this.f38767d = i4;
        this.f38770g = str2;
        this.f38769f = str;
        this.f38766c = c1302n;
    }

    public C1302n a() {
        return this.f38766c;
    }

    public void a(int i2) {
        this.f38771h = i2;
    }

    public void a(C1374a c1374a) {
        this.f38773j = c1374a;
    }
}
