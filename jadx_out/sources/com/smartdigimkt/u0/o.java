package com.smartdigimkt.u0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes5.dex */
public final class o extends c {
    public static final Parcelable.Creator<o> CREATOR = new n();

    /* renamed from: a, reason: collision with root package name */
    public final long f44377a;

    /* renamed from: b, reason: collision with root package name */
    public final long f44378b;

    public o(int i2, long j2, long j3) {
        this.f44377a = j2;
        this.f44378b = j3;
    }

    public static long a(com.smartdigimkt.a1.l lVar, long j2) {
        long jE = lVar.e();
        if ((128 & jE) != 0) {
            return com.sigmob.sdk.archives.tar.e.f35469m & ((((jE & 1) << 32) | lVar.f()) + j2);
        }
        return -9223372036854775807L;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f44377a);
        parcel.writeLong(this.f44378b);
    }

    public o(long j2, long j3) {
        this.f44377a = j2;
        this.f44378b = j3;
    }
}
