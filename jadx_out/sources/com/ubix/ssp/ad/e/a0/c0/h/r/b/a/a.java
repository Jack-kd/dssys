package com.ubix.ssp.ad.e.a0.c0.h.r.b.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.anythink.odopt.a.a.i;

/* loaded from: classes5.dex */
public interface a extends IInterface {

    /* renamed from: com.ubix.ssp.ad.e.a0.c0.h.r.b.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0793a extends Binder implements a {
        public AbstractBinderC0793a() {
            attachInterface(this, i.f10577a);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(i.f10577a);
                int i4 = parcel.readInt();
                long j2 = parcel.readLong();
                boolean z2 = parcel.readInt() != 0;
                a(i4, j2, z2, parcel.readFloat(), parcel.readDouble(), parcel.readString());
            } else {
                if (i2 != 2) {
                    if (i2 != 1598968902) {
                        return super.onTransact(i2, parcel, parcel2, i3);
                    }
                    parcel2.writeString(i.f10577a);
                    return true;
                }
                parcel.enforceInterface(i.f10577a);
                a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void a(int i2, long j2, boolean z2, float f2, double d2, String str);

    void a(int i2, Bundle bundle);
}
