package com.byazt.fu;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 677, 30})
/* loaded from: classes2.dex */
public class jx implements Parcelable, Comparable {
    public static final Parcelable.Creator<jx> CREATOR = new Parcelable.Creator<jx>() { // from class: com.byazt.fu.jx.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public jx createFromParcel(Parcel parcel) {
            return new jx(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public jx[] newArray(int i2) {
            return new jx[i2];
        }
    };
    public final String hp;

    /* renamed from: l, reason: collision with root package name */
    public final String f20122l;

    public jx(String str, String str2) {
        this.hp = str;
        this.f20122l = str2;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (!(obj instanceof jx)) {
            return 1;
        }
        jx jxVar = (jx) obj;
        if (TextUtils.equals(this.hp, jxVar.hp())) {
            return 0;
        }
        String str = this.hp;
        if (str == null) {
            return -1;
        }
        int iCompareTo = str.compareTo(jxVar.hp());
        if (iCompareTo > 0) {
            return 1;
        }
        return iCompareTo < 0 ? -1 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            jx jxVar = (jx) obj;
            if (TextUtils.equals(this.hp, jxVar.hp) && TextUtils.equals(this.f20122l, jxVar.f20122l)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.hp;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f20122l;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String hp() {
        return this.hp;
    }

    public String l() {
        return this.f20122l;
    }

    public String toString() {
        return "HttpHeader{name='" + this.hp + "', value='" + this.f20122l + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.hp);
        parcel.writeString(this.f20122l);
    }

    public jx(Parcel parcel) {
        this.hp = parcel.readString();
        this.f20122l = parcel.readString();
    }
}
