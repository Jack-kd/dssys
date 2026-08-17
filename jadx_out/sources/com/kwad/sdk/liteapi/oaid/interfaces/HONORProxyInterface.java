package com.kwad.sdk.liteapi.oaid.interfaces;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.annotation.Keep;
import com.anythink.odopt.a.a.i;

@Keep
/* loaded from: classes4.dex */
public interface HONORProxyInterface extends IInterface {

    public static abstract class a extends Binder implements HONORProxyInterface {
        public a() {
            attachInterface(this, i.f10577a);
        }

        public abstract void a(int i2, long j2, boolean z2, float f2, double d2, String str);

        public abstract void a(int i2, Bundle bundle);

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(i.f10577a);
                a(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(i.f10577a);
                a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(i.f10577a);
            return true;
        }
    }

    void a(int i2, long j2, boolean z2, float f2, double d2, String str);

    void a(int i2, Bundle bundle);
}
