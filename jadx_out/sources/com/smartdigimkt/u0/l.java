package com.smartdigimkt.u0;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final long f44365a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f44366b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f44367c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f44368d;

    /* renamed from: e, reason: collision with root package name */
    public final long f44369e;

    /* renamed from: f, reason: collision with root package name */
    public final List f44370f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f44371g;

    /* renamed from: h, reason: collision with root package name */
    public final long f44372h;

    /* renamed from: i, reason: collision with root package name */
    public final int f44373i;

    /* renamed from: j, reason: collision with root package name */
    public final int f44374j;

    /* renamed from: k, reason: collision with root package name */
    public final int f44375k;

    public l(long j2, boolean z2, boolean z3, boolean z4, ArrayList arrayList, long j3, boolean z5, long j4, int i2, int i3, int i4) {
        this.f44365a = j2;
        this.f44366b = z2;
        this.f44367c = z3;
        this.f44368d = z4;
        this.f44370f = Collections.unmodifiableList(arrayList);
        this.f44369e = j3;
        this.f44371g = z5;
        this.f44372h = j4;
        this.f44373i = i2;
        this.f44374j = i3;
        this.f44375k = i4;
    }

    public l(Parcel parcel) {
        this.f44365a = parcel.readLong();
        this.f44366b = parcel.readByte() == 1;
        this.f44367c = parcel.readByte() == 1;
        this.f44368d = parcel.readByte() == 1;
        int i2 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(new k(parcel.readInt(), parcel.readLong()));
        }
        this.f44370f = Collections.unmodifiableList(arrayList);
        this.f44369e = parcel.readLong();
        this.f44371g = parcel.readByte() == 1;
        this.f44372h = parcel.readLong();
        this.f44373i = parcel.readInt();
        this.f44374j = parcel.readInt();
        this.f44375k = parcel.readInt();
    }
}
