package com.smartdigimkt.t0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes5.dex */
public final class v implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new w(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i2) {
        return new w[i2];
    }
}
