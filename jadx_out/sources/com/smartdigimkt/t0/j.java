package com.smartdigimkt.t0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes5.dex */
public final class j extends o {
    public static final Parcelable.Creator<j> CREATOR = new i();

    /* renamed from: b, reason: collision with root package name */
    public final String f44170b;

    /* renamed from: c, reason: collision with root package name */
    public final String f44171c;

    /* renamed from: d, reason: collision with root package name */
    public final String f44172d;

    public j(String str, String str2, String str3) {
        super("COMM");
        this.f44170b = str;
        this.f44171c = str2;
        this.f44172d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && j.class == obj.getClass()) {
            j jVar = (j) obj;
            if (com.smartdigimkt.a1.t.a(this.f44171c, jVar.f44171c) && com.smartdigimkt.a1.t.a(this.f44170b, jVar.f44170b) && com.smartdigimkt.a1.t.a(this.f44172d, jVar.f44172d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f44170b;
        int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.f44171c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f44172d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.smartdigimkt.t0.o
    public final String toString() {
        return this.f44181a + ": language=" + this.f44170b + ", description=" + this.f44171c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f44181a);
        parcel.writeString(this.f44170b);
        parcel.writeString(this.f44172d);
    }

    public j(Parcel parcel) {
        super("COMM");
        this.f44170b = parcel.readString();
        this.f44171c = parcel.readString();
        this.f44172d = parcel.readString();
    }
}
