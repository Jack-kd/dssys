package com.smartdigimkt.y0;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.smartdigimkt.a1.t;
import com.smartdigimkt.w0.k0;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class d implements Parcelable {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f45131a;

    /* renamed from: b, reason: collision with root package name */
    public final SparseBooleanArray f45132b;

    /* renamed from: c, reason: collision with root package name */
    public final String f45133c;

    /* renamed from: d, reason: collision with root package name */
    public final String f45134d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f45135e;

    /* renamed from: f, reason: collision with root package name */
    public final int f45136f;

    /* renamed from: g, reason: collision with root package name */
    public final int f45137g;

    /* renamed from: h, reason: collision with root package name */
    public final int f45138h;

    /* renamed from: i, reason: collision with root package name */
    public final int f45139i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f45140j;

    /* renamed from: k, reason: collision with root package name */
    public final int f45141k;

    /* renamed from: l, reason: collision with root package name */
    public final int f45142l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f45143m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f45144n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f45145o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f45146p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f45147q;

    /* renamed from: r, reason: collision with root package name */
    public final int f45148r;

    /* renamed from: s, reason: collision with root package name */
    public static final d f45130s = new d();
    public static final Parcelable.Creator<d> CREATOR = new c();

    public d() {
        SparseArray sparseArray = new SparseArray();
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f45131a = sparseArray;
        this.f45132b = sparseBooleanArray;
        this.f45133c = t.b(null);
        this.f45134d = t.b(null);
        this.f45135e = false;
        this.f45136f = 0;
        this.f45144n = false;
        this.f45145o = false;
        this.f45146p = true;
        this.f45137g = Integer.MAX_VALUE;
        this.f45138h = Integer.MAX_VALUE;
        this.f45139i = Integer.MAX_VALUE;
        this.f45140j = true;
        this.f45147q = true;
        this.f45141k = Integer.MAX_VALUE;
        this.f45142l = Integer.MAX_VALUE;
        this.f45143m = true;
        this.f45148r = 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && d.class == obj.getClass()) {
            d dVar = (d) obj;
            if (this.f45135e == dVar.f45135e && this.f45136f == dVar.f45136f && this.f45144n == dVar.f45144n && this.f45145o == dVar.f45145o && this.f45146p == dVar.f45146p && this.f45137g == dVar.f45137g && this.f45138h == dVar.f45138h && this.f45140j == dVar.f45140j && this.f45147q == dVar.f45147q && this.f45143m == dVar.f45143m && this.f45141k == dVar.f45141k && this.f45142l == dVar.f45142l && this.f45139i == dVar.f45139i && this.f45148r == dVar.f45148r && TextUtils.equals(this.f45133c, dVar.f45133c) && TextUtils.equals(this.f45134d, dVar.f45134d)) {
                SparseBooleanArray sparseBooleanArray = this.f45132b;
                SparseBooleanArray sparseBooleanArray2 = dVar.f45132b;
                int size = sparseBooleanArray.size();
                if (sparseBooleanArray2.size() == size) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            SparseArray sparseArray = this.f45131a;
                            SparseArray sparseArray2 = dVar.f45131a;
                            int size2 = sparseArray.size();
                            if (sparseArray2.size() == size2) {
                                for (int i3 = 0; i3 < size2; i3++) {
                                    int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i3));
                                    if (iIndexOfKey >= 0) {
                                        Map map = (Map) sparseArray.valueAt(i3);
                                        Map map2 = (Map) sparseArray2.valueAt(iIndexOfKey);
                                        if (map2.size() == map.size()) {
                                            for (Map.Entry entry : map.entrySet()) {
                                                k0 k0Var = (k0) entry.getKey();
                                                if (!map2.containsKey(k0Var) || !t.a(entry.getValue(), map2.get(k0Var))) {
                                                }
                                            }
                                        }
                                    }
                                }
                                return true;
                            }
                        } else {
                            if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i2)) < 0) {
                                break;
                            }
                            i2++;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (((((((((((((((((((((((((((this.f45135e ? 1 : 0) * 31) + this.f45136f) * 31) + (this.f45144n ? 1 : 0)) * 31) + (this.f45145o ? 1 : 0)) * 31) + (this.f45146p ? 1 : 0)) * 31) + this.f45137g) * 31) + this.f45138h) * 31) + (this.f45140j ? 1 : 0)) * 31) + (this.f45147q ? 1 : 0)) * 31) + (this.f45143m ? 1 : 0)) * 31) + this.f45141k) * 31) + this.f45142l) * 31) + this.f45139i) * 31) + this.f45148r) * 31;
        String str = this.f45133c;
        int iHashCode = (i2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f45134d;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        SparseArray sparseArray = this.f45131a;
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            int iKeyAt = sparseArray.keyAt(i3);
            Map map = (Map) sparseArray.valueAt(i3);
            int size2 = map.size();
            parcel.writeInt(iKeyAt);
            parcel.writeInt(size2);
            for (Map.Entry entry : map.entrySet()) {
                parcel.writeParcelable((Parcelable) entry.getKey(), 0);
                parcel.writeParcelable((Parcelable) entry.getValue(), 0);
            }
        }
        parcel.writeSparseBooleanArray(this.f45132b);
        parcel.writeString(this.f45133c);
        parcel.writeString(this.f45134d);
        parcel.writeInt(this.f45135e ? 1 : 0);
        parcel.writeInt(this.f45136f);
        parcel.writeInt(this.f45144n ? 1 : 0);
        parcel.writeInt(this.f45145o ? 1 : 0);
        parcel.writeInt(this.f45146p ? 1 : 0);
        parcel.writeInt(this.f45137g);
        parcel.writeInt(this.f45138h);
        parcel.writeInt(this.f45139i);
        parcel.writeInt(this.f45140j ? 1 : 0);
        parcel.writeInt(this.f45147q ? 1 : 0);
        parcel.writeInt(this.f45141k);
        parcel.writeInt(this.f45142l);
        parcel.writeInt(this.f45143m ? 1 : 0);
        parcel.writeInt(this.f45148r);
    }

    public d(Parcel parcel) {
        int i2 = parcel.readInt();
        SparseArray sparseArray = new SparseArray(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = parcel.readInt();
            int i5 = parcel.readInt();
            HashMap map = new HashMap(i5);
            for (int i6 = 0; i6 < i5; i6++) {
                map.put((k0) parcel.readParcelable(k0.class.getClassLoader()), (f) parcel.readParcelable(f.class.getClassLoader()));
            }
            sparseArray.put(i4, map);
        }
        this.f45131a = sparseArray;
        this.f45132b = parcel.readSparseBooleanArray();
        this.f45133c = parcel.readString();
        this.f45134d = parcel.readString();
        this.f45135e = parcel.readInt() != 0;
        this.f45136f = parcel.readInt();
        this.f45144n = parcel.readInt() != 0;
        this.f45145o = parcel.readInt() != 0;
        this.f45146p = parcel.readInt() != 0;
        this.f45137g = parcel.readInt();
        this.f45138h = parcel.readInt();
        this.f45139i = parcel.readInt();
        this.f45140j = parcel.readInt() != 0;
        this.f45147q = parcel.readInt() != 0;
        this.f45141k = parcel.readInt();
        this.f45142l = parcel.readInt();
        this.f45143m = parcel.readInt() != 0;
        this.f45148r = parcel.readInt();
    }
}
