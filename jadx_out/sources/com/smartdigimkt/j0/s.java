package com.smartdigimkt.j0;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.location.LocationRequestCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class s implements Parcelable {
    public static final Parcelable.Creator<s> CREATOR = new r();

    /* renamed from: A, reason: collision with root package name */
    public int f40985A;

    /* renamed from: a, reason: collision with root package name */
    public final String f40986a;

    /* renamed from: b, reason: collision with root package name */
    public final int f40987b;

    /* renamed from: c, reason: collision with root package name */
    public final String f40988c;

    /* renamed from: d, reason: collision with root package name */
    public final com.smartdigimkt.r0.c f40989d;

    /* renamed from: e, reason: collision with root package name */
    public final String f40990e;

    /* renamed from: f, reason: collision with root package name */
    public final String f40991f;

    /* renamed from: g, reason: collision with root package name */
    public final int f40992g;

    /* renamed from: h, reason: collision with root package name */
    public final List f40993h;

    /* renamed from: i, reason: collision with root package name */
    public final com.smartdigimkt.n0.d f40994i;

    /* renamed from: j, reason: collision with root package name */
    public final long f40995j;

    /* renamed from: k, reason: collision with root package name */
    public final int f40996k;

    /* renamed from: l, reason: collision with root package name */
    public final int f40997l;

    /* renamed from: m, reason: collision with root package name */
    public final float f40998m;

    /* renamed from: n, reason: collision with root package name */
    public final int f40999n;

    /* renamed from: o, reason: collision with root package name */
    public final float f41000o;

    /* renamed from: p, reason: collision with root package name */
    public final int f41001p;

    /* renamed from: q, reason: collision with root package name */
    public final byte[] f41002q;

    /* renamed from: r, reason: collision with root package name */
    public final com.smartdigimkt.b1.b f41003r;

    /* renamed from: s, reason: collision with root package name */
    public final int f41004s;

    /* renamed from: t, reason: collision with root package name */
    public final int f41005t;

    /* renamed from: u, reason: collision with root package name */
    public final int f41006u;

    /* renamed from: v, reason: collision with root package name */
    public final int f41007v;

    /* renamed from: w, reason: collision with root package name */
    public final int f41008w;

    /* renamed from: x, reason: collision with root package name */
    public final int f41009x;

    /* renamed from: y, reason: collision with root package name */
    public final String f41010y;

    /* renamed from: z, reason: collision with root package name */
    public final int f41011z;

    public s(String str, String str2, String str3, String str4, int i2, int i3, int i4, int i5, float f2, int i6, float f3, byte[] bArr, int i7, com.smartdigimkt.b1.b bVar, int i8, int i9, int i10, int i11, int i12, int i13, String str5, int i14, long j2, List list, com.smartdigimkt.n0.d dVar, com.smartdigimkt.r0.c cVar) {
        this.f40986a = str;
        this.f40990e = str2;
        this.f40991f = str3;
        this.f40988c = str4;
        this.f40987b = i2;
        this.f40992g = i3;
        this.f40996k = i4;
        this.f40997l = i5;
        this.f40998m = f2;
        this.f40999n = i6 == -1 ? 0 : i6;
        this.f41000o = f3 == -1.0f ? 1.0f : f3;
        this.f41002q = bArr;
        this.f41001p = i7;
        this.f41003r = bVar;
        this.f41004s = i8;
        this.f41005t = i9;
        this.f41006u = i10;
        int i15 = i11;
        this.f41007v = i15 == -1 ? 0 : i15;
        this.f41008w = i12 != -1 ? i12 : 0;
        this.f41009x = i13;
        this.f41010y = str5;
        this.f41011z = i14;
        this.f40995j = j2;
        this.f40993h = list == null ? Collections.EMPTY_LIST : list;
        this.f40994i = dVar;
        this.f40989d = cVar;
    }

    public static s a(String str, String str2, int i2, int i3, int i4, List list, com.smartdigimkt.n0.d dVar, String str3) {
        return new s(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i2, i3, i4, -1, -1, 0, str3, -1, LocationRequestCompat.PASSIVE_INTERVAL, list, dVar, null);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && s.class == obj.getClass()) {
            s sVar = (s) obj;
            if (this.f40987b == sVar.f40987b && this.f40992g == sVar.f40992g && this.f40996k == sVar.f40996k && this.f40997l == sVar.f40997l && this.f40998m == sVar.f40998m && this.f40999n == sVar.f40999n && this.f41000o == sVar.f41000o && this.f41001p == sVar.f41001p && this.f41004s == sVar.f41004s && this.f41005t == sVar.f41005t && this.f41006u == sVar.f41006u && this.f41007v == sVar.f41007v && this.f41008w == sVar.f41008w && this.f40995j == sVar.f40995j && this.f41009x == sVar.f41009x && com.smartdigimkt.a1.t.a(this.f40986a, sVar.f40986a) && com.smartdigimkt.a1.t.a(this.f41010y, sVar.f41010y) && this.f41011z == sVar.f41011z && com.smartdigimkt.a1.t.a(this.f40990e, sVar.f40990e) && com.smartdigimkt.a1.t.a(this.f40991f, sVar.f40991f) && com.smartdigimkt.a1.t.a(this.f40988c, sVar.f40988c) && com.smartdigimkt.a1.t.a(this.f40994i, sVar.f40994i) && com.smartdigimkt.a1.t.a(this.f40989d, sVar.f40989d) && com.smartdigimkt.a1.t.a(this.f41003r, sVar.f41003r) && Arrays.equals(this.f41002q, sVar.f41002q) && this.f40993h.size() == sVar.f40993h.size()) {
                for (int i2 = 0; i2 < this.f40993h.size(); i2++) {
                    if (Arrays.equals((byte[]) this.f40993h.get(i2), (byte[]) sVar.f40993h.get(i2))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f40985A == 0) {
            String str = this.f40986a;
            int iHashCode = ((str == null ? 0 : str.hashCode()) + 527) * 31;
            String str2 = this.f40990e;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.f40991f;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.f40988c;
            int iHashCode4 = (((((((((((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.f40987b) * 31) + this.f40996k) * 31) + this.f40997l) * 31) + this.f41004s) * 31) + this.f41005t) * 31;
            String str5 = this.f41010y;
            int iHashCode5 = (((iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.f41011z) * 31;
            com.smartdigimkt.n0.d dVar = this.f40994i;
            int iHashCode6 = (iHashCode5 + (dVar == null ? 0 : dVar.hashCode())) * 31;
            com.smartdigimkt.r0.c cVar = this.f40989d;
            this.f40985A = iHashCode6 + (cVar != null ? Arrays.hashCode(cVar.f42926a) : 0);
        }
        return this.f40985A;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Format(");
        sb.append(this.f40986a);
        sb.append(", ");
        sb.append(this.f40990e);
        sb.append(", ");
        sb.append(this.f40991f);
        sb.append(", ");
        sb.append(this.f40987b);
        sb.append(", ");
        sb.append(this.f41010y);
        sb.append(", [");
        sb.append(this.f40996k);
        sb.append(", ");
        sb.append(this.f40997l);
        sb.append(", ");
        sb.append(this.f40998m);
        sb.append("], [");
        sb.append(this.f41004s);
        sb.append(", ");
        return com.smartdigimkt.c0.g.a(sb, this.f41005t, "])");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f40986a);
        parcel.writeString(this.f40990e);
        parcel.writeString(this.f40991f);
        parcel.writeString(this.f40988c);
        parcel.writeInt(this.f40987b);
        parcel.writeInt(this.f40992g);
        parcel.writeInt(this.f40996k);
        parcel.writeInt(this.f40997l);
        parcel.writeFloat(this.f40998m);
        parcel.writeInt(this.f40999n);
        parcel.writeFloat(this.f41000o);
        int i3 = this.f41002q != null ? 1 : 0;
        int i4 = com.smartdigimkt.a1.t.f39303a;
        parcel.writeInt(i3);
        byte[] bArr = this.f41002q;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.f41001p);
        parcel.writeParcelable(this.f41003r, i2);
        parcel.writeInt(this.f41004s);
        parcel.writeInt(this.f41005t);
        parcel.writeInt(this.f41006u);
        parcel.writeInt(this.f41007v);
        parcel.writeInt(this.f41008w);
        parcel.writeInt(this.f41009x);
        parcel.writeString(this.f41010y);
        parcel.writeInt(this.f41011z);
        parcel.writeLong(this.f40995j);
        int size = this.f40993h.size();
        parcel.writeInt(size);
        for (int i5 = 0; i5 < size; i5++) {
            parcel.writeByteArray((byte[]) this.f40993h.get(i5));
        }
        parcel.writeParcelable(this.f40994i, 0);
        parcel.writeParcelable(this.f40989d, 0);
    }

    public s(Parcel parcel) {
        this.f40986a = parcel.readString();
        this.f40990e = parcel.readString();
        this.f40991f = parcel.readString();
        this.f40988c = parcel.readString();
        this.f40987b = parcel.readInt();
        this.f40992g = parcel.readInt();
        this.f40996k = parcel.readInt();
        this.f40997l = parcel.readInt();
        this.f40998m = parcel.readFloat();
        this.f40999n = parcel.readInt();
        this.f41000o = parcel.readFloat();
        int i2 = com.smartdigimkt.a1.t.f39303a;
        this.f41002q = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.f41001p = parcel.readInt();
        this.f41003r = (com.smartdigimkt.b1.b) parcel.readParcelable(com.smartdigimkt.b1.b.class.getClassLoader());
        this.f41004s = parcel.readInt();
        this.f41005t = parcel.readInt();
        this.f41006u = parcel.readInt();
        this.f41007v = parcel.readInt();
        this.f41008w = parcel.readInt();
        this.f41009x = parcel.readInt();
        this.f41010y = parcel.readString();
        this.f41011z = parcel.readInt();
        this.f40995j = parcel.readLong();
        int i3 = parcel.readInt();
        this.f40993h = new ArrayList(i3);
        for (int i4 = 0; i4 < i3; i4++) {
            this.f40993h.add(parcel.createByteArray());
        }
        this.f40994i = (com.smartdigimkt.n0.d) parcel.readParcelable(com.smartdigimkt.n0.d.class.getClassLoader());
        this.f40989d = (com.smartdigimkt.r0.c) parcel.readParcelable(com.smartdigimkt.r0.c.class.getClassLoader());
    }
}
