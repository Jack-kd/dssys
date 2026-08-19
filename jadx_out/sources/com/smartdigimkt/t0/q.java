package com.smartdigimkt.t0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes5.dex */
public final class q extends o {
    public static final Parcelable.Creator<q> CREATOR = new p();

    /* renamed from: b, reason: collision with root package name */
    public final String f44182b;

    /* renamed from: c, reason: collision with root package name */
    public final String f44183c;

    /* renamed from: d, reason: collision with root package name */
    public final String f44184d;

    public q(String str, String str2, String str3) {
        super("----");
        this.f44182b = str;
        this.f44183c = str2;
        this.f44184d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && q.class == obj.getClass()) {
            q qVar = (q) obj;
            if (com.smartdigimkt.a1.t.a(this.f44183c, qVar.f44183c) && com.smartdigimkt.a1.t.a(this.f44182b, qVar.f44182b) && com.smartdigimkt.a1.t.a(this.f44184d, qVar.f44184d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f44182b;
        int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.f44183c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f44184d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.smartdigimkt.t0.o
    public final String toString() {
        return this.f44181a + ": domain=" + this.f44182b + ", description=" + this.f44183c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f44181a);
        parcel.writeString(this.f44182b);
        parcel.writeString(this.f44184d);
    }

    public q(Parcel parcel) {
        super("----");
        String string = parcel.readString();
        string.getClass();
        this.f44182b = string;
        String string2 = parcel.readString();
        string2.getClass();
        this.f44183c = string2;
        String string3 = parcel.readString();
        string3.getClass();
        this.f44184d = string3;
    }
}
