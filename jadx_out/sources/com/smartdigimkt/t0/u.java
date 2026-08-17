package com.smartdigimkt.t0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes5.dex */
public final class u extends o {
    public static final Parcelable.Creator<u> CREATOR = new t();

    /* renamed from: b, reason: collision with root package name */
    public final String f44187b;

    /* renamed from: c, reason: collision with root package name */
    public final String f44188c;

    public u(String str, String str2, String str3) {
        super(str);
        this.f44187b = str2;
        this.f44188c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && u.class == obj.getClass()) {
            u uVar = (u) obj;
            if (this.f44181a.equals(uVar.f44181a) && com.smartdigimkt.a1.t.a(this.f44187b, uVar.f44187b) && com.smartdigimkt.a1.t.a(this.f44188c, uVar.f44188c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f44181a.hashCode() + 527) * 31;
        String str = this.f44187b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f44188c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // com.smartdigimkt.t0.o
    public final String toString() {
        return this.f44181a + ": value=" + this.f44188c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f44181a);
        parcel.writeString(this.f44187b);
        parcel.writeString(this.f44188c);
    }

    public u(Parcel parcel) {
        super(parcel.readString());
        this.f44187b = parcel.readString();
        this.f44188c = parcel.readString();
    }
}
