package com.czhj.devicehelper.honor.oaid;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public interface a extends IInterface {

    /* renamed from: com.czhj.devicehelper.honor.oaid.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0451a extends Binder implements a {

        /* renamed from: a, reason: collision with root package name */
        private static final String f29195a = "com.hihonor.cloudservice.oaid.IOAIDCallBack";

        public AbstractBinderC0451a() {
            attachInterface(this, "com.hihonor.cloudservice.oaid.IOAIDCallBack");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDCallBack");
                int i4 = parcel.readInt();
                long j2 = parcel.readLong();
                boolean z2 = parcel.readInt() != 0;
                a(i4, j2, z2, parcel.readFloat(), parcel.readDouble(), parcel.readString());
            } else {
                if (i2 != 2) {
                    if (i2 != 1598968902) {
                        return super.onTransact(i2, parcel, parcel2, i3);
                    }
                    parcel2.writeString("com.hihonor.cloudservice.oaid.IOAIDCallBack");
                    return true;
                }
                parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDCallBack");
                a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void a(int i2, long j2, boolean z2, float f2, double d2, String str);

    void a(int i2, Bundle bundle);
}
