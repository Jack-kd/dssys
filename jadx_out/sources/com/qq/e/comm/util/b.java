package com.qq.e.comm.util;

import android.os.SystemClock;

/* loaded from: classes4.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private long f35389a;

    /* renamed from: b, reason: collision with root package name */
    private final StringBuilder f35390b = new StringBuilder();

    /* renamed from: c, reason: collision with root package name */
    private long f35391c;

    public void a() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f35389a;
        this.f35391c += jElapsedRealtime;
        StringBuilder sb = this.f35390b;
        sb.append(jElapsedRealtime);
        sb.append(",");
    }

    public void b() {
        a();
        c();
    }

    public void c() {
        this.f35389a = SystemClock.elapsedRealtime();
    }

    public String toString() {
        int length = this.f35390b.length();
        if (length <= 0) {
            return "";
        }
        StringBuilder sbDeleteCharAt = this.f35390b.deleteCharAt(length - 1);
        sbDeleteCharAt.append(":");
        sbDeleteCharAt.append(this.f35391c);
        return sbDeleteCharAt.toString();
    }
}
