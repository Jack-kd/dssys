package com.smartdigimkt.u0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class m extends c {
    public static final Parcelable.Creator<m> CREATOR = new j();

    /* renamed from: a, reason: collision with root package name */
    public final List f44376a;

    public m(ArrayList arrayList) {
        this.f44376a = Collections.unmodifiableList(arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int size = this.f44376a.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            l lVar = (l) this.f44376a.get(i3);
            parcel.writeLong(lVar.f44365a);
            parcel.writeByte(lVar.f44366b ? (byte) 1 : (byte) 0);
            parcel.writeByte(lVar.f44367c ? (byte) 1 : (byte) 0);
            parcel.writeByte(lVar.f44368d ? (byte) 1 : (byte) 0);
            int size2 = lVar.f44370f.size();
            parcel.writeInt(size2);
            for (int i4 = 0; i4 < size2; i4++) {
                k kVar = (k) lVar.f44370f.get(i4);
                parcel.writeInt(kVar.f44363a);
                parcel.writeLong(kVar.f44364b);
            }
            parcel.writeLong(lVar.f44369e);
            parcel.writeByte(lVar.f44371g ? (byte) 1 : (byte) 0);
            parcel.writeLong(lVar.f44372h);
            parcel.writeInt(lVar.f44373i);
            parcel.writeInt(lVar.f44374j);
            parcel.writeInt(lVar.f44375k);
        }
    }

    public m(Parcel parcel) {
        int i2 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(new l(parcel));
        }
        this.f44376a = Collections.unmodifiableList(arrayList);
    }
}
