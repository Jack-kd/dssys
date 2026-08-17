package com.smartdigimkt.w0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class k0 implements Parcelable {

    /* renamed from: a, reason: collision with root package name */
    public final int f44844a;

    /* renamed from: b, reason: collision with root package name */
    public final i0[] f44845b;

    /* renamed from: c, reason: collision with root package name */
    public int f44846c;

    /* renamed from: d, reason: collision with root package name */
    public static final k0 f44843d = new k0(new i0[0]);
    public static final Parcelable.Creator<k0> CREATOR = new j0();

    public k0(i0... i0VarArr) {
        this.f44845b = i0VarArr;
        this.f44844a = i0VarArr.length;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && k0.class == obj.getClass()) {
            k0 k0Var = (k0) obj;
            if (this.f44844a == k0Var.f44844a && Arrays.equals(this.f44845b, k0Var.f44845b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f44846c == 0) {
            this.f44846c = Arrays.hashCode(this.f44845b);
        }
        return this.f44846c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f44844a);
        for (int i3 = 0; i3 < this.f44844a; i3++) {
            parcel.writeParcelable(this.f44845b[i3], 0);
        }
    }

    public k0(Parcel parcel) {
        int i2 = parcel.readInt();
        this.f44844a = i2;
        this.f44845b = new i0[i2];
        for (int i3 = 0; i3 < this.f44844a; i3++) {
            this.f44845b[i3] = (i0) parcel.readParcelable(i0.class.getClassLoader());
        }
    }
}
