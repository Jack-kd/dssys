package com.smartdigimkt.n0;

import android.os.Parcel;
import android.os.Parcelable;
import com.smartdigimkt.a1.t;
import java.util.Arrays;
import java.util.Comparator;
import java.util.UUID;

/* loaded from: classes5.dex */
public final class d implements Comparator, Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final c[] f42156a;

    /* renamed from: b, reason: collision with root package name */
    public int f42157b;

    /* renamed from: c, reason: collision with root package name */
    public final String f42158c;

    /* renamed from: d, reason: collision with root package name */
    public final int f42159d;

    public d(String str, c... cVarArr) {
        this.f42158c = str;
        Arrays.sort(cVarArr, this);
        this.f42156a = cVarArr;
        this.f42159d = cVarArr.length;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        c cVar = (c) obj;
        c cVar2 = (c) obj2;
        UUID uuid = com.smartdigimkt.j0.b.f40856b;
        return uuid.equals(cVar.f42151b) ? uuid.equals(cVar2.f42151b) ? 0 : 1 : cVar.f42151b.compareTo(cVar2.f42151b);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && d.class == obj.getClass()) {
            d dVar = (d) obj;
            if (t.a(this.f42158c, dVar.f42158c) && Arrays.equals(this.f42156a, dVar.f42156a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f42157b == 0) {
            String str = this.f42158c;
            this.f42157b = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f42156a);
        }
        return this.f42157b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f42158c);
        parcel.writeTypedArray(this.f42156a, 0);
    }

    public d(Parcel parcel) {
        this.f42158c = parcel.readString();
        c[] cVarArr = (c[]) parcel.createTypedArray(c.CREATOR);
        this.f42156a = cVarArr;
        this.f42159d = cVarArr.length;
    }
}
