package com.byazt.e;

import android.os.Parcel;
import android.os.Parcelable;

@com.byazt.kj.hp(hp = {0, 1, 45, 34})
/* loaded from: classes2.dex */
public class l implements Parcelable {
    public static final Parcelable.Creator<l> CREATOR = new Parcelable.Creator<l>() { // from class: com.byazt.e.l.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public l createFromParcel(Parcel parcel) {
            return new l(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public l[] newArray(int i2) {
            return new l[i2];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public String f19384a;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f19385j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public int f19386l;

    /* renamed from: w, reason: collision with root package name */
    public String f19387w;

    public l() {
        this.jx = "";
        this.f19387w = "";
        this.f19384a = "";
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
            l lVar = (l) obj;
            if (this.hp == lVar.hp && this.f19386l == lVar.f19386l) {
                String str = this.jx;
                if (str != null) {
                    return str.equals(lVar.jx);
                }
                if (lVar.jx == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        int i2 = ((this.hp * 31) + this.f19386l) * 31;
        String str = this.jx;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.hp);
        parcel.writeInt(this.f19386l);
        parcel.writeString(this.jx);
        parcel.writeString(this.f19387w);
        parcel.writeString(this.f19384a);
        parcel.writeInt(this.f19385j);
    }

    public l(Parcel parcel) {
        this.jx = "";
        this.f19387w = "";
        this.f19384a = "";
        this.hp = parcel.readInt();
        this.f19386l = parcel.readInt();
        this.jx = parcel.readString();
        this.f19387w = parcel.readString();
        this.f19384a = parcel.readString();
        this.f19385j = parcel.readInt();
    }
}
