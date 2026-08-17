package com.smartdigimkt.u0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class g extends c {
    public static final Parcelable.Creator<g> CREATOR = new e();

    /* renamed from: a, reason: collision with root package name */
    public final long f44350a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f44351b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f44352c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f44353d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f44354e;

    /* renamed from: f, reason: collision with root package name */
    public final long f44355f;

    /* renamed from: g, reason: collision with root package name */
    public final long f44356g;

    /* renamed from: h, reason: collision with root package name */
    public final List f44357h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f44358i;

    /* renamed from: j, reason: collision with root package name */
    public final long f44359j;

    /* renamed from: k, reason: collision with root package name */
    public final int f44360k;

    /* renamed from: l, reason: collision with root package name */
    public final int f44361l;

    /* renamed from: m, reason: collision with root package name */
    public final int f44362m;

    public g(long j2, boolean z2, boolean z3, boolean z4, boolean z5, long j3, long j4, List list, boolean z6, long j5, int i2, int i3, int i4) {
        this.f44350a = j2;
        this.f44351b = z2;
        this.f44352c = z3;
        this.f44353d = z4;
        this.f44354e = z5;
        this.f44355f = j3;
        this.f44356g = j4;
        this.f44357h = Collections.unmodifiableList(list);
        this.f44358i = z6;
        this.f44359j = j5;
        this.f44360k = i2;
        this.f44361l = i3;
        this.f44362m = i4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f44350a);
        parcel.writeByte(this.f44351b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f44352c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f44353d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f44354e ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f44355f);
        parcel.writeLong(this.f44356g);
        int size = this.f44357h.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            f fVar = (f) this.f44357h.get(i3);
            parcel.writeInt(fVar.f44347a);
            parcel.writeLong(fVar.f44348b);
            parcel.writeLong(fVar.f44349c);
        }
        parcel.writeByte(this.f44358i ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f44359j);
        parcel.writeInt(this.f44360k);
        parcel.writeInt(this.f44361l);
        parcel.writeInt(this.f44362m);
    }

    public g(Parcel parcel) {
        this.f44350a = parcel.readLong();
        this.f44351b = parcel.readByte() == 1;
        this.f44352c = parcel.readByte() == 1;
        this.f44353d = parcel.readByte() == 1;
        this.f44354e = parcel.readByte() == 1;
        this.f44355f = parcel.readLong();
        this.f44356g = parcel.readLong();
        int i2 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(new f(parcel.readInt(), parcel.readLong(), parcel.readLong()));
        }
        this.f44357h = Collections.unmodifiableList(arrayList);
        this.f44358i = parcel.readByte() == 1;
        this.f44359j = parcel.readLong();
        this.f44360k = parcel.readInt();
        this.f44361l = parcel.readInt();
        this.f44362m = parcel.readInt();
    }
}
