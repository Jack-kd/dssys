package com.byazt.kc;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

@com.byazt.kj.hp(hp = {0, 1, 228, 28})
/* loaded from: classes2.dex */
public class hp implements Parcelable {
    public static final Parcelable.Creator<hp> CREATOR = new Parcelable.Creator<hp>() { // from class: com.byazt.kc.hp.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public hp createFromParcel(Parcel parcel) {
            return new hp(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public hp[] newArray(int i2) {
            return new hp[i2];
        }
    };
    public final IBinder hp;

    public hp(Parcel parcel) {
        this.hp = parcel.readStrongBinder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public IBinder hp() {
        return this.hp;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStrongBinder(this.hp);
    }

    public hp(IBinder iBinder) {
        this.hp = iBinder;
    }
}
