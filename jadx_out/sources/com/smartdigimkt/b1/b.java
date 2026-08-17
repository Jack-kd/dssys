package com.smartdigimkt.b1;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final int f39471a;

    /* renamed from: b, reason: collision with root package name */
    public final int f39472b;

    /* renamed from: c, reason: collision with root package name */
    public final int f39473c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f39474d;

    /* renamed from: e, reason: collision with root package name */
    public int f39475e;

    public b(Parcel parcel) {
        this.f39471a = parcel.readInt();
        this.f39472b = parcel.readInt();
        this.f39473c = parcel.readInt();
        int i2 = com.smartdigimkt.a1.t.f39303a;
        this.f39474d = parcel.readInt() != 0 ? parcel.createByteArray() : null;
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
            if (this.f39471a == bVar.f39471a && this.f39472b == bVar.f39472b && this.f39473c == bVar.f39473c && Arrays.equals(this.f39474d, bVar.f39474d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f39475e == 0) {
            this.f39475e = Arrays.hashCode(this.f39474d) + ((((((this.f39471a + 527) * 31) + this.f39472b) * 31) + this.f39473c) * 31);
        }
        return this.f39475e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ColorInfo(");
        sb.append(this.f39471a);
        sb.append(", ");
        sb.append(this.f39472b);
        sb.append(", ");
        sb.append(this.f39473c);
        sb.append(", ");
        sb.append(this.f39474d != null);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f39471a);
        parcel.writeInt(this.f39472b);
        parcel.writeInt(this.f39473c);
        int i3 = this.f39474d != null ? 1 : 0;
        int i4 = com.smartdigimkt.a1.t.f39303a;
        parcel.writeInt(i3);
        byte[] bArr = this.f39474d;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
