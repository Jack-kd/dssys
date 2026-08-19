package com.smartdigimkt.t0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class b extends o {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: b, reason: collision with root package name */
    public final String f44154b;

    /* renamed from: c, reason: collision with root package name */
    public final String f44155c;

    /* renamed from: d, reason: collision with root package name */
    public final int f44156d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f44157e;

    public b(String str, String str2, int i2, byte[] bArr) {
        super("APIC");
        this.f44154b = str;
        this.f44155c = str2;
        this.f44156d = i2;
        this.f44157e = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && b.class == obj.getClass()) {
            b bVar = (b) obj;
            if (this.f44156d == bVar.f44156d && com.smartdigimkt.a1.t.a(this.f44154b, bVar.f44154b) && com.smartdigimkt.a1.t.a(this.f44155c, bVar.f44155c) && Arrays.equals(this.f44157e, bVar.f44157e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (this.f44156d + 527) * 31;
        String str = this.f44154b;
        int iHashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f44155c;
        return Arrays.hashCode(this.f44157e) + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // com.smartdigimkt.t0.o
    public final String toString() {
        return this.f44181a + ": mimeType=" + this.f44154b + ", description=" + this.f44155c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f44154b);
        parcel.writeString(this.f44155c);
        parcel.writeInt(this.f44156d);
        parcel.writeByteArray(this.f44157e);
    }

    public b(Parcel parcel) {
        super("APIC");
        this.f44154b = parcel.readString();
        this.f44155c = parcel.readString();
        this.f44156d = parcel.readInt();
        this.f44157e = parcel.createByteArray();
    }
}
