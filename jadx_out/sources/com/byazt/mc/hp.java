package com.byazt.mc;

import android.os.Parcel;
import android.os.Parcelable;

@com.byazt.kj.hp(hp = {0, 1, 793, 28})
/* loaded from: classes3.dex */
public abstract class hp implements Parcelable {

    /* renamed from: l, reason: collision with root package name */
    public final Parcelable f22950l;
    public static final hp hp = new hp() { // from class: com.byazt.mc.hp.1
    };
    public static final Parcelable.Creator<hp> CREATOR = new Parcelable.ClassLoaderCreator<hp>() { // from class: com.byazt.mc.hp.2
        @Override // android.os.Parcelable.Creator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public hp createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public hp createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return hp.hp;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public hp[] newArray(int i2) {
            return new hp[i2];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Parcelable hp() {
        return this.f22950l;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.f22950l, i2);
    }

    private hp() {
        this.f22950l = null;
    }

    public hp(Parcelable parcelable) {
        if (parcelable != null) {
            this.f22950l = parcelable == hp ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public hp(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.f22950l = parcelable == null ? hp : parcelable;
    }
}
