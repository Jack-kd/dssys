package com.byazt.ye;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.byazt.ye.j;

/* loaded from: classes3.dex */
public interface jx extends IInterface {
    void hp(int i2) throws RemoteException;

    void hp(int i2, j jVar) throws RemoteException;

    boolean hp(String str) throws RemoteException;

    boolean hp(String str, String str2) throws RemoteException;

    int l(String str) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 786, 219})
    public static abstract class hp extends Binder implements jx {
        public hp() {
            attachInterface(this, "com.bytedance.pangle.IPackageManager");
        }

        public static jx hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.pangle.IPackageManager");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof jx)) ? new C0417hp(iBinder) : (jx) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.bytedance.pangle.IPackageManager");
                boolean zHp = hp(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zHp ? 1 : 0);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("com.bytedance.pangle.IPackageManager");
                int iL = l(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(iL);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface("com.bytedance.pangle.IPackageManager");
                boolean zHp2 = hp(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zHp2 ? 1 : 0);
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface("com.bytedance.pangle.IPackageManager");
                hp(parcel.readInt(), j.hp.hp(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 5) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.bytedance.pangle.IPackageManager");
                return true;
            }
            parcel.enforceInterface("com.bytedance.pangle.IPackageManager");
            hp(parcel.readInt());
            parcel2.writeNoException();
            return true;
        }

        public static jx hp() {
            return C0417hp.hp;
        }

        @com.byazt.kj.hp(hp = {0, 1, 786, 1144})
        /* renamed from: com.byazt.ye.jx$hp$hp, reason: collision with other inner class name */
        public static class C0417hp implements jx {
            public static jx hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f27889l;

            public C0417hp(IBinder iBinder) {
                this.f27889l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f27889l;
            }

            @Override // com.byazt.ye.jx
            public boolean hp(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IPackageManager");
                    parcelObtain.writeString(str);
                    if (!this.f27889l.transact(1, parcelObtain, parcelObtain2, 0) && hp.hp() != null) {
                        return hp.hp().hp(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.ye.jx
            public int l(String str) throws RemoteException {
                int iL;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IPackageManager");
                    parcelObtain.writeString(str);
                    if (this.f27889l.transact(2, parcelObtain, parcelObtain2, 0) || hp.hp() == null) {
                        parcelObtain2.readException();
                        iL = parcelObtain2.readInt();
                    } else {
                        iL = hp.hp().l(str);
                    }
                    return iL;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.ye.jx
            public boolean hp(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IPackageManager");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.f27889l.transact(3, parcelObtain, parcelObtain2, 0) && hp.hp() != null) {
                        return hp.hp().hp(str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.ye.jx
            public void hp(int i2, j jVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IPackageManager");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(jVar != null ? jVar.asBinder() : null);
                    if (!this.f27889l.transact(4, parcelObtain, parcelObtain2, 0) && hp.hp() != null) {
                        hp.hp().hp(i2, jVar);
                    } else {
                        parcelObtain2.readException();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.ye.jx
            public void hp(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IPackageManager");
                    parcelObtain.writeInt(i2);
                    if (!this.f27889l.transact(5, parcelObtain, parcelObtain2, 0) && hp.hp() != null) {
                        hp.hp().hp(i2);
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
