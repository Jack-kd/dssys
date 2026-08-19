package com.smartdigimkt.u0;

/* loaded from: classes5.dex */
public abstract class c implements com.smartdigimkt.r0.b {
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "SCTE-35 splice command: type=".concat(getClass().getSimpleName());
    }
}
