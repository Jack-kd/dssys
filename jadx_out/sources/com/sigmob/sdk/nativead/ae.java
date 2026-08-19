package com.sigmob.sdk.nativead;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes4.dex */
public class ae implements Parcelable {
    public static final Parcelable.Creator<ae> CREATOR = new Parcelable.Creator<ae>() { // from class: com.sigmob.sdk.nativead.ae.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ae createFromParcel(Parcel parcel) {
            return new ae(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ae[] newArray(int i2) {
            return new ae[i2];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private int f38362a;

    /* renamed from: b, reason: collision with root package name */
    private int f38363b;

    /* renamed from: c, reason: collision with root package name */
    private int f38364c;

    /* renamed from: d, reason: collision with root package name */
    private int f38365d;

    public ae() {
    }

    public int a() {
        return this.f38362a;
    }

    public int b() {
        return this.f38363b;
    }

    public int c() {
        return this.f38364c;
    }

    public int d() {
        return this.f38365d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f38362a);
        parcel.writeInt(this.f38363b);
        parcel.writeInt(this.f38364c);
        parcel.writeInt(this.f38365d);
    }

    public ae(Parcel parcel) {
        this.f38362a = parcel.readInt();
        this.f38363b = parcel.readInt();
        this.f38364c = parcel.readInt();
        this.f38365d = parcel.readInt();
    }

    public void a(int i2) {
        this.f38362a = i2;
    }

    public void b(int i2) {
        this.f38363b = i2;
    }

    public void c(int i2) {
        this.f38364c = i2;
    }

    public void d(int i2) {
        this.f38365d = i2;
    }
}
