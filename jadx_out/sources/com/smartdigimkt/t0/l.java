package com.smartdigimkt.t0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class l extends o {
    public static final Parcelable.Creator<l> CREATOR = new k();

    /* renamed from: b, reason: collision with root package name */
    public final String f44173b;

    /* renamed from: c, reason: collision with root package name */
    public final String f44174c;

    /* renamed from: d, reason: collision with root package name */
    public final String f44175d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f44176e;

    public l(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f44173b = str;
        this.f44174c = str2;
        this.f44175d = str3;
        this.f44176e = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && l.class == obj.getClass()) {
            l lVar = (l) obj;
            if (com.smartdigimkt.a1.t.a(this.f44173b, lVar.f44173b) && com.smartdigimkt.a1.t.a(this.f44174c, lVar.f44174c) && com.smartdigimkt.a1.t.a(this.f44175d, lVar.f44175d) && Arrays.equals(this.f44176e, lVar.f44176e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f44173b;
        int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.f44174c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f44175d;
        return Arrays.hashCode(this.f44176e) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    @Override // com.smartdigimkt.t0.o
    public final String toString() {
        return this.f44181a + ": mimeType=" + this.f44173b + ", filename=" + this.f44174c + ", description=" + this.f44175d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f44173b);
        parcel.writeString(this.f44174c);
        parcel.writeString(this.f44175d);
        parcel.writeByteArray(this.f44176e);
    }

    public l(Parcel parcel) {
        super("GEOB");
        this.f44173b = parcel.readString();
        this.f44174c = parcel.readString();
        this.f44175d = parcel.readString();
        this.f44176e = parcel.createByteArray();
    }
}
