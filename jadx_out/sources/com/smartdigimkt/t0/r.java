package com.smartdigimkt.t0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes5.dex */
public final class r implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new s(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i2) {
        return new s[i2];
    }
}
