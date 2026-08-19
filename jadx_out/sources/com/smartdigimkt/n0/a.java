package com.smartdigimkt.n0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes5.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new d(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i2) {
        return new d[i2];
    }
}
