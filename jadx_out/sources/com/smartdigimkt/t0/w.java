package com.smartdigimkt.t0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes5.dex */
public final class w extends o {
    public static final Parcelable.Creator<w> CREATOR = new v();

    /* renamed from: b, reason: collision with root package name */
    public final String f44189b;

    /* renamed from: c, reason: collision with root package name */
    public final String f44190c;

    public w(String str, String str2, String str3) {
        super(str);
        this.f44189b = str2;
        this.f44190c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && w.class == obj.getClass()) {
            w wVar = (w) obj;
            if (this.f44181a.equals(wVar.f44181a) && com.smartdigimkt.a1.t.a(this.f44189b, wVar.f44189b) && com.smartdigimkt.a1.t.a(this.f44190c, wVar.f44190c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f44181a.hashCode() + 527) * 31;
        String str = this.f44189b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f44190c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // com.smartdigimkt.t0.o
    public final String toString() {
        return this.f44181a + ": url=" + this.f44190c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f44181a);
        parcel.writeString(this.f44189b);
        parcel.writeString(this.f44190c);
    }

    public w(Parcel parcel) {
        super(parcel.readString());
        this.f44189b = parcel.readString();
        this.f44190c = parcel.readString();
    }
}
