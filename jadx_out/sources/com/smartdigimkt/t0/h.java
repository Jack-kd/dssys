package com.smartdigimkt.t0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class h extends o {
    public static final Parcelable.Creator<h> CREATOR = new g();

    /* renamed from: b, reason: collision with root package name */
    public final String f44165b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f44166c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f44167d;

    /* renamed from: e, reason: collision with root package name */
    public final String[] f44168e;

    /* renamed from: f, reason: collision with root package name */
    public final o[] f44169f;

    public h(String str, boolean z2, boolean z3, String[] strArr, o[] oVarArr) {
        super("CTOC");
        this.f44165b = str;
        this.f44166c = z2;
        this.f44167d = z3;
        this.f44168e = strArr;
        this.f44169f = oVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && h.class == obj.getClass()) {
            h hVar = (h) obj;
            if (this.f44166c == hVar.f44166c && this.f44167d == hVar.f44167d && com.smartdigimkt.a1.t.a(this.f44165b, hVar.f44165b) && Arrays.equals(this.f44168e, hVar.f44168e) && Arrays.equals(this.f44169f, hVar.f44169f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = ((((this.f44166c ? 1 : 0) + 527) * 31) + (this.f44167d ? 1 : 0)) * 31;
        String str = this.f44165b;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f44165b);
        parcel.writeByte(this.f44166c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f44167d ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f44168e);
        parcel.writeInt(this.f44169f.length);
        for (o oVar : this.f44169f) {
            parcel.writeParcelable(oVar, 0);
        }
    }

    public h(Parcel parcel) {
        super("CTOC");
        this.f44165b = parcel.readString();
        this.f44166c = parcel.readByte() != 0;
        this.f44167d = parcel.readByte() != 0;
        this.f44168e = parcel.createStringArray();
        int i2 = parcel.readInt();
        this.f44169f = new o[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.f44169f[i3] = (o) parcel.readParcelable(o.class.getClassLoader());
        }
    }
}
