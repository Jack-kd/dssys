package com.smartdigimkt.n0;

import android.os.Parcel;
import android.os.Parcelable;
import com.smartdigimkt.a1.t;
import java.util.Arrays;
import java.util.UUID;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;

/* loaded from: classes5.dex */
public final class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new b();

    /* renamed from: a, reason: collision with root package name */
    public int f42150a;

    /* renamed from: b, reason: collision with root package name */
    public final UUID f42151b;

    /* renamed from: c, reason: collision with root package name */
    public final String f42152c;

    /* renamed from: d, reason: collision with root package name */
    public final String f42153d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f42154e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f42155f;

    public c(UUID uuid, byte[] bArr) {
        this.f42151b = uuid;
        this.f42152c = null;
        this.f42153d = DLNAProfiles.DLNAMimeTypes.MIME_VIDEO_MPEG_4;
        this.f42154e = bArr;
        this.f42155f = false;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        c cVar = (c) obj;
        return t.a(this.f42152c, cVar.f42152c) && t.a(this.f42153d, cVar.f42153d) && t.a(this.f42151b, cVar.f42151b) && Arrays.equals(this.f42154e, cVar.f42154e);
    }

    public final int hashCode() {
        if (this.f42150a == 0) {
            int iHashCode = this.f42151b.hashCode() * 31;
            String str = this.f42152c;
            this.f42150a = Arrays.hashCode(this.f42154e) + ((this.f42153d.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31);
        }
        return this.f42150a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f42151b.getMostSignificantBits());
        parcel.writeLong(this.f42151b.getLeastSignificantBits());
        parcel.writeString(this.f42152c);
        parcel.writeString(this.f42153d);
        parcel.writeByteArray(this.f42154e);
        parcel.writeByte(this.f42155f ? (byte) 1 : (byte) 0);
    }

    public c(Parcel parcel) {
        this.f42151b = new UUID(parcel.readLong(), parcel.readLong());
        this.f42152c = parcel.readString();
        this.f42153d = parcel.readString();
        this.f42154e = parcel.createByteArray();
        this.f42155f = parcel.readByte() != 0;
    }
}
