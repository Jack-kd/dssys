package com.smartdigimkt.t0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes5.dex */
public final class g implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new h(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i2) {
        return new h[i2];
    }
}
