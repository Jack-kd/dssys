package com.byazt.jz;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface gu extends IInterface {

    @com.byazt.kj.hp(hp = {0, 1, 40, 1132})
    public static abstract class hp extends Binder implements gu {

        @com.byazt.kj.hp(hp = {0, 1, 40, 2179})
        /* renamed from: com.byazt.jz.gu$hp$hp, reason: collision with other inner class name */
        public static class C0288hp implements gu {
            public static gu hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f21888l;

            public C0288hp(IBinder iBinder) {
                this.f21888l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f21888l;
            }

            @Override // com.byazt.jz.gu
            public void hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
                    if (this.f21888l.transact(1, parcelObtain, parcelObtain2, 0) || hp.j() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.j().hp();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.gu
            public void jx() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
                    if (this.f21888l.transact(3, parcelObtain, parcelObtain2, 0) || hp.j() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.j().jx();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.gu
            public void l() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
                    if (this.f21888l.transact(2, parcelObtain, parcelObtain2, 0) || hp.j() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.j().l();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public hp() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
        }

        public static gu hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof gu)) ? new C0288hp(iBinder) : (gu) iInterfaceQueryLocalInterface;
        }

        public static gu j() {
            return C0288hp.hp;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
                hp();
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
                l();
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 3) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
            jx();
            parcel2.writeNoException();
            return true;
        }
    }

    void hp() throws RemoteException;

    void jx() throws RemoteException;

    void l() throws RemoteException;
}
