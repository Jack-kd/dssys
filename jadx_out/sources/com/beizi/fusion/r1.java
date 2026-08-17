package com.beizi.fusion;

import android.content.Context;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class r1 {

    /* renamed from: b, reason: collision with root package name */
    private String f15841b;

    /* renamed from: l, reason: collision with root package name */
    private WeakReference f15851l;

    /* renamed from: a, reason: collision with root package name */
    private wh f15840a = wh.PREFETCH;

    /* renamed from: c, reason: collision with root package name */
    private int f15842c = 3;

    /* renamed from: d, reason: collision with root package name */
    private boolean f15843d = false;

    /* renamed from: e, reason: collision with root package name */
    private int f15844e = -1;

    /* renamed from: f, reason: collision with root package name */
    private int f15845f = -1;

    /* renamed from: g, reason: collision with root package name */
    private int f15846g = -1;

    /* renamed from: h, reason: collision with root package name */
    private int f15847h = -1;

    /* renamed from: i, reason: collision with root package name */
    private boolean f15848i = false;

    /* renamed from: j, reason: collision with root package name */
    private boolean f15849j = false;

    /* renamed from: k, reason: collision with root package name */
    private boolean f15850k = false;

    /* renamed from: m, reason: collision with root package name */
    private String f15852m = "";

    public r1(Context context) {
        this.f15851l = new WeakReference(context);
    }

    public void a(String str) {
        this.f15841b = str;
    }

    public void b(String str) {
        this.f15852m = str;
    }

    public void a(wh whVar) {
        this.f15840a = whVar;
    }

    public wh a() {
        return this.f15840a;
    }
}
