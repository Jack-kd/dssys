package com.byazt.jz;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface v extends IInterface {
    Bundle hp(int i2) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 40, 709})
    public static abstract class hp extends Binder implements v {

        @com.byazt.kj.hp(hp = {0, 1, 40, 1704})
        /* renamed from: com.byazt.jz.v$hp$hp, reason: collision with other inner class name */
        public static class C0292hp implements v {
            public static v hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f21992l;

            public C0292hp(IBinder iBinder) {
                this.f21992l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f21992l;
            }

            @Override // com.byazt.jz.v
            public Bundle hp(int i2) throws RemoteException {
                Bundle bundleHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IRewardAdCustomPlayAgainListener");
                    parcelObtain.writeInt(i2);
                    if (this.f21992l.transact(1, parcelObtain, parcelObtain2, 0) || hp.hp() == null) {
                        parcelObtain2.readException();
                        bundleHp = parcelObtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        bundleHp = hp.hp().hp(i2);
                    }
                    return bundleHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public hp() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.core.IRewardAdCustomPlayAgainListener");
        }

        public static v hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.core.IRewardAdCustomPlayAgainListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof v)) ? new C0292hp(iBinder) : (v) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 != 1) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.bytedance.sdk.openadsdk.core.IRewardAdCustomPlayAgainListener");
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IRewardAdCustomPlayAgainListener");
            Bundle bundleHp = hp(parcel.readInt());
            parcel2.writeNoException();
            if (bundleHp != null) {
                parcel2.writeInt(1);
                bundleHp.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }

        public static v hp() {
            return C0292hp.hp;
        }
    }
}
