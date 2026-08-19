package com.smartdigimkt.t0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class s extends o {
    public static final Parcelable.Creator<s> CREATOR = new r();

    /* renamed from: b, reason: collision with root package name */
    public final String f44185b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f44186c;

    public s(String str, byte[] bArr) {
        super("PRIV");
        this.f44185b = str;
        this.f44186c = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && s.class == obj.getClass()) {
            s sVar = (s) obj;
            if (com.smartdigimkt.a1.t.a(this.f44185b, sVar.f44185b) && Arrays.equals(this.f44186c, sVar.f44186c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f44185b;
        return Arrays.hashCode(this.f44186c) + (((str != null ? str.hashCode() : 0) + 527) * 31);
    }

    @Override // com.smartdigimkt.t0.o
    public final String toString() {
        return this.f44181a + ": owner=" + this.f44185b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f44185b);
        parcel.writeByteArray(this.f44186c);
    }

    public s(Parcel parcel) {
        super("PRIV");
        this.f44185b = parcel.readString();
        this.f44186c = parcel.createByteArray();
    }
}
