package com.smartdigimkt.u0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes5.dex */
public final class b extends c {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final long f44341a;

    /* renamed from: b, reason: collision with root package name */
    public final long f44342b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f44343c;

    public b(long j2, byte[] bArr, long j3) {
        this.f44341a = j3;
        this.f44342b = j2;
        this.f44343c = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f44341a);
        parcel.writeLong(this.f44342b);
        parcel.writeInt(this.f44343c.length);
        parcel.writeByteArray(this.f44343c);
    }

    public b(Parcel parcel) {
        this.f44341a = parcel.readLong();
        this.f44342b = parcel.readLong();
        byte[] bArr = new byte[parcel.readInt()];
        this.f44343c = bArr;
        parcel.readByteArray(bArr);
    }
}
