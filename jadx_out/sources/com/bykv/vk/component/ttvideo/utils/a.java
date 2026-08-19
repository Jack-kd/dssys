package com.bykv.vk.component.ttvideo.utils;

import android.os.SystemClock;

/* loaded from: classes3.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private int f28831a = 1;

    /* renamed from: b, reason: collision with root package name */
    private int f28832b = 2;

    /* renamed from: c, reason: collision with root package name */
    private int f28833c = 2;

    /* renamed from: d, reason: collision with root package name */
    private int f28834d = 0;

    /* renamed from: e, reason: collision with root package name */
    private long f28835e = 0;

    public void a() {
        this.f28834d = 0;
        if (this.f28833c == this.f28831a) {
            this.f28835e = SystemClock.elapsedRealtime();
        }
    }

    public int b() {
        if (this.f28833c == this.f28831a) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            int i2 = (int) (jElapsedRealtime - this.f28835e);
            if (i2 >= 0) {
                this.f28834d += i2;
            }
            this.f28835e = jElapsedRealtime;
        }
        return this.f28834d;
    }

    public void c() {
        this.f28833c = this.f28832b;
        this.f28834d = 0;
        this.f28835e = 0L;
    }

    public void d() {
        if (this.f28833c == this.f28832b) {
            this.f28833c = this.f28831a;
            this.f28835e = SystemClock.elapsedRealtime();
        }
    }

    public void e() {
        if (this.f28833c == this.f28831a) {
            this.f28833c = this.f28832b;
            int iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - this.f28835e);
            if (iElapsedRealtime >= 0) {
                this.f28834d += iElapsedRealtime;
            }
        }
    }
}
