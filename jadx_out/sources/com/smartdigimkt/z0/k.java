package com.smartdigimkt.z0;

import android.net.Uri;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f45374a;

    /* renamed from: b, reason: collision with root package name */
    public final long f45375b;

    /* renamed from: c, reason: collision with root package name */
    public final long f45376c;

    /* renamed from: d, reason: collision with root package name */
    public final String f45377d;

    public k(Uri uri, long j2, String str) {
        if (j2 < 0) {
            throw new IllegalArgumentException();
        }
        if (j2 < 0) {
            throw new IllegalArgumentException();
        }
        this.f45374a = uri;
        this.f45375b = j2;
        this.f45376c = j2;
        this.f45377d = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DataSpec[");
        sb.append(this.f45374a);
        sb.append(", ");
        sb.append(Arrays.toString((byte[]) null));
        sb.append(", ");
        sb.append(this.f45375b);
        sb.append(", ");
        sb.append(this.f45376c);
        sb.append(", -1, ");
        return com.smartdigimkt.f.i.a(sb, this.f45377d, ", 0]");
    }
}
