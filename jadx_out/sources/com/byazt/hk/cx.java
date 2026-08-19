package com.byazt.hk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public interface cx extends IInterface {

    @com.byazt.kj.hp(hp = {0, 1, 227, 2111})
    public static abstract class hp extends Binder implements cx {

        @com.byazt.kj.hp(hp = {0, 1, 227, 2453})
        /* renamed from: com.byazt.hk.cx$hp$hp, reason: collision with other inner class name */
        public static class C0266hp implements cx {
            public IBinder hp;

            public C0266hp(IBinder iBinder) {
                this.hp = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.hp;
            }

            @Override // com.byazt.hk.cx
            public String hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    this.hp.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.hk.cx
            public boolean l() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    this.hp.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static cx hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof cx)) ? new C0266hp(iBinder) : (cx) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                String strHp = hp();
                parcel2.writeNoException();
                parcel2.writeString(strHp);
                return true;
            }
            if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                return true;
            }
            parcel.enforceInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            boolean zL = l();
            parcel2.writeNoException();
            parcel2.writeInt(zL ? 1 : 0);
            return true;
        }
    }

    String hp() throws RemoteException;

    boolean l() throws RemoteException;
}
