package com.smartdigimkt.r0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final b[] f42926a;

    public c(b... bVarArr) {
        this.f42926a = bVarArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f42926a, ((c) obj).f42926a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f42926a);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f42926a.length);
        for (b bVar : this.f42926a) {
            parcel.writeParcelable(bVar, 0);
        }
    }

    public c(ArrayList arrayList) {
        b[] bVarArr = new b[arrayList.size()];
        this.f42926a = bVarArr;
        arrayList.toArray(bVarArr);
    }

    public c(Parcel parcel) {
        this.f42926a = new b[parcel.readInt()];
        int i2 = 0;
        while (true) {
            b[] bVarArr = this.f42926a;
            if (i2 >= bVarArr.length) {
                return;
            }
            bVarArr[i2] = (b) parcel.readParcelable(b.class.getClassLoader());
            i2++;
        }
    }
}
