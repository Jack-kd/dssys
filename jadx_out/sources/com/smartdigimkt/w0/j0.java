package com.smartdigimkt.w0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes5.dex */
public final class j0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new k0(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i2) {
        return new k0[i2];
    }
}
