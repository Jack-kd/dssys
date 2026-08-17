package com.smartdigimkt.y0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class f implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new e();

    /* renamed from: a, reason: collision with root package name */
    public final int f45149a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f45150b;

    /* renamed from: c, reason: collision with root package name */
    public final int f45151c;

    public f(Parcel parcel) {
        this.f45149a = parcel.readInt();
        int i2 = parcel.readByte();
        this.f45151c = i2;
        int[] iArr = new int[i2];
        this.f45150b = iArr;
        parcel.readIntArray(iArr);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && f.class == obj.getClass()) {
            f fVar = (f) obj;
            if (this.f45149a == fVar.f45149a && Arrays.equals(this.f45150b, fVar.f45150b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f45150b) + (this.f45149a * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f45149a);
        parcel.writeInt(this.f45150b.length);
        parcel.writeIntArray(this.f45150b);
    }
}
