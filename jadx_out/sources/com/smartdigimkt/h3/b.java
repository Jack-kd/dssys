package com.smartdigimkt.h3;

import com.smartdigimkt.c5.o;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f40547a;

    /* renamed from: b, reason: collision with root package name */
    public final long f40548b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f40549c;

    /* renamed from: d, reason: collision with root package name */
    public final String f40550d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f40551e;

    /* renamed from: f, reason: collision with root package name */
    public final String f40552f;

    public b(String str, String str2, boolean z2, long j2, boolean z3, String str3) {
        this.f40547a = str;
        this.f40552f = str2;
        this.f40551e = z2;
        this.f40548b = j2;
        this.f40549c = z3;
        this.f40550d = str3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(o.f39801g);
        sb.append("InspectResult{pkgName='");
        sb.append(this.f40547a);
        sb.append("', inspectTime=");
        sb.append(this.f40548b);
        sb.append(", inspectResult=");
        sb.append(this.f40549c);
        sb.append(", appVersion='");
        sb.append(this.f40550d);
        sb.append("', isRealTimeInspect=");
        sb.append(this.f40551e);
        sb.append(", uploadKey='");
        return com.smartdigimkt.f.i.a(sb, this.f40552f, "'}");
    }
}
