package com.smartdigimkt.t0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class f extends o {
    public static final Parcelable.Creator<f> CREATOR = new e();

    /* renamed from: b, reason: collision with root package name */
    public final String f44159b;

    /* renamed from: c, reason: collision with root package name */
    public final int f44160c;

    /* renamed from: d, reason: collision with root package name */
    public final int f44161d;

    /* renamed from: e, reason: collision with root package name */
    public final long f44162e;

    /* renamed from: f, reason: collision with root package name */
    public final long f44163f;

    /* renamed from: g, reason: collision with root package name */
    public final o[] f44164g;

    public f(String str, int i2, int i3, long j2, long j3, o[] oVarArr) {
        super("CHAP");
        this.f44159b = str;
        this.f44160c = i2;
        this.f44161d = i3;
        this.f44162e = j2;
        this.f44163f = j3;
        this.f44164g = oVarArr;
    }

    @Override // com.smartdigimkt.t0.o, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && f.class == obj.getClass()) {
            f fVar = (f) obj;
            if (this.f44160c == fVar.f44160c && this.f44161d == fVar.f44161d && this.f44162e == fVar.f44162e && this.f44163f == fVar.f44163f && com.smartdigimkt.a1.t.a(this.f44159b, fVar.f44159b) && Arrays.equals(this.f44164g, fVar.f44164g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (((((((this.f44160c + 527) * 31) + this.f44161d) * 31) + ((int) this.f44162e)) * 31) + ((int) this.f44163f)) * 31;
        String str = this.f44159b;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f44159b);
        parcel.writeInt(this.f44160c);
        parcel.writeInt(this.f44161d);
        parcel.writeLong(this.f44162e);
        parcel.writeLong(this.f44163f);
        parcel.writeInt(this.f44164g.length);
        for (o oVar : this.f44164g) {
            parcel.writeParcelable(oVar, 0);
        }
    }

    public f(Parcel parcel) {
        super("CHAP");
        this.f44159b = parcel.readString();
        this.f44160c = parcel.readInt();
        this.f44161d = parcel.readInt();
        this.f44162e = parcel.readLong();
        this.f44163f = parcel.readLong();
        int i2 = parcel.readInt();
        this.f44164g = new o[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.f44164g[i3] = (o) parcel.readParcelable(o.class.getClassLoader());
        }
    }
}
