package com.smartdigimkt.s0;

import android.os.Parcel;
import android.os.Parcelable;
import com.smartdigimkt.a1.t;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.r0.b {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final String f43094a;

    /* renamed from: b, reason: collision with root package name */
    public final String f43095b;

    /* renamed from: c, reason: collision with root package name */
    public final long f43096c;

    /* renamed from: d, reason: collision with root package name */
    public final long f43097d;

    /* renamed from: e, reason: collision with root package name */
    public final long f43098e;

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f43099f;

    /* renamed from: g, reason: collision with root package name */
    public int f43100g;

    public b(String str, String str2, long j2, long j3, byte[] bArr, long j4) {
        this.f43094a = str;
        this.f43095b = str2;
        this.f43096c = j2;
        this.f43098e = j3;
        this.f43099f = bArr;
        this.f43097d = j4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && b.class == obj.getClass()) {
            b bVar = (b) obj;
            if (this.f43097d == bVar.f43097d && this.f43096c == bVar.f43096c && this.f43098e == bVar.f43098e && t.a(this.f43094a, bVar.f43094a) && t.a(this.f43095b, bVar.f43095b) && Arrays.equals(this.f43099f, bVar.f43099f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f43100g == 0) {
            String str = this.f43094a;
            int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
            String str2 = this.f43095b;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            long j2 = this.f43097d;
            int i2 = (iHashCode2 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.f43096c;
            int i3 = (i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31;
            long j4 = this.f43098e;
            this.f43100g = Arrays.hashCode(this.f43099f) + ((i3 + ((int) (j4 ^ (j4 >>> 32)))) * 31);
        }
        return this.f43100g;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.f43094a + ", id=" + this.f43098e + ", value=" + this.f43095b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f43094a);
        parcel.writeString(this.f43095b);
        parcel.writeLong(this.f43097d);
        parcel.writeLong(this.f43096c);
        parcel.writeLong(this.f43098e);
        parcel.writeByteArray(this.f43099f);
    }

    public b(Parcel parcel) {
        this.f43094a = parcel.readString();
        this.f43095b = parcel.readString();
        this.f43097d = parcel.readLong();
        this.f43096c = parcel.readLong();
        this.f43098e = parcel.readLong();
        this.f43099f = parcel.createByteArray();
    }
}
