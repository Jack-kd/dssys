package com.baidu.mobads.sdk.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
class ca implements Parcelable.Creator<bz> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public bz createFromParcel(Parcel parcel) {
        return new bz(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public bz[] newArray(int i2) {
        return new bz[i2];
    }
}
