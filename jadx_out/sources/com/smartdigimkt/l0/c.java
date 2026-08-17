package com.smartdigimkt.l0;

import java.util.Arrays;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: c, reason: collision with root package name */
    public static final c f41456c = new c(new int[]{2}, 2);

    /* renamed from: a, reason: collision with root package name */
    public final int[] f41457a;

    /* renamed from: b, reason: collision with root package name */
    public final int f41458b;

    public c(int[] iArr, int i2) {
        if (iArr != null) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.f41457a = iArrCopyOf;
            Arrays.sort(iArrCopyOf);
        } else {
            this.f41457a = new int[0];
        }
        this.f41458b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Arrays.equals(this.f41457a, cVar.f41457a) && this.f41458b == cVar.f41458b;
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.f41457a) * 31) + this.f41458b;
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f41458b + ", supportedEncodings=" + Arrays.toString(this.f41457a) + "]";
    }
}
