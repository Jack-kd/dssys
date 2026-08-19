package com.smartdigimkt.w0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class i0 implements Parcelable {
    public static final Parcelable.Creator<i0> CREATOR = new h0();

    /* renamed from: a, reason: collision with root package name */
    public final int f44826a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.j0.s[] f44827b;

    /* renamed from: c, reason: collision with root package name */
    public int f44828c;

    public i0(com.smartdigimkt.j0.s... sVarArr) {
        if (sVarArr.length <= 0) {
            throw new IllegalStateException();
        }
        this.f44827b = sVarArr;
        this.f44826a = sVarArr.length;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && i0.class == obj.getClass()) {
            i0 i0Var = (i0) obj;
            if (this.f44826a == i0Var.f44826a && Arrays.equals(this.f44827b, i0Var.f44827b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f44828c == 0) {
            this.f44828c = Arrays.hashCode(this.f44827b) + 527;
        }
        return this.f44828c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f44826a);
        for (int i3 = 0; i3 < this.f44826a; i3++) {
            parcel.writeParcelable(this.f44827b[i3], 0);
        }
    }

    public i0(Parcel parcel) {
        int i2 = parcel.readInt();
        this.f44826a = i2;
        this.f44827b = new com.smartdigimkt.j0.s[i2];
        for (int i3 = 0; i3 < this.f44826a; i3++) {
            this.f44827b[i3] = (com.smartdigimkt.j0.s) parcel.readParcelable(com.smartdigimkt.j0.s.class.getClassLoader());
        }
    }
}
