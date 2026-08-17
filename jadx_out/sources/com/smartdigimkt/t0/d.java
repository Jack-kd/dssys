package com.smartdigimkt.t0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class d extends o {
    public static final Parcelable.Creator<d> CREATOR = new c();

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f44158b;

    public d(String str, byte[] bArr) {
        super(str);
        this.f44158b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && d.class == obj.getClass()) {
            d dVar = (d) obj;
            if (this.f44181a.equals(dVar.f44181a) && Arrays.equals(this.f44158b, dVar.f44158b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f44158b) + ((this.f44181a.hashCode() + 527) * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f44181a);
        parcel.writeByteArray(this.f44158b);
    }

    public d(Parcel parcel) {
        super(parcel.readString());
        this.f44158b = parcel.createByteArray();
    }
}
