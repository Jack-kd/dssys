package com.byazt.jz;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface jl extends IInterface {
    void hp() throws RemoteException;

    void hp(String str) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 40, 757})
    public static abstract class hp extends Binder implements jl {
        public hp() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
        }

        public static jl hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof jl)) ? new C0289hp(iBinder) : (jl) iInterfaceQueryLocalInterface;
        }

        public static jl l() {
            return C0289hp.hp;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
                hp();
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
            hp(parcel.readString());
            parcel2.writeNoException();
            return true;
        }

        @com.byazt.kj.hp(hp = {0, 1, 40, 1243})
        /* renamed from: com.byazt.jz.jl$hp$hp, reason: collision with other inner class name */
        public static class C0289hp implements jl {
            public static jl hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f21892l;

            public C0289hp(IBinder iBinder) {
                this.f21892l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f21892l;
            }

            @Override // com.byazt.jz.jl
            public void hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
                    if (this.f21892l.transact(1, parcelObtain, parcelObtain2, 0) || hp.l() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.l().hp();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.jl
            public void hp(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
                    parcelObtain.writeString(str);
                    if (!this.f21892l.transact(2, parcelObtain, parcelObtain2, 0) && hp.l() != null) {
                        hp.l().hp(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
