package com.byazt.jz;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface e extends IInterface {
    IBinder hp(int i2) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 40, 773})
    public static abstract class hp extends Binder implements e {

        @com.byazt.kj.hp(hp = {0, 1, 40, 1966})
        /* renamed from: com.byazt.jz.e$hp$hp, reason: collision with other inner class name */
        public static class C0287hp implements e {
            public static e hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f21862l;

            public C0287hp(IBinder iBinder) {
                this.f21862l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f21862l;
            }

            @Override // com.byazt.jz.e
            public IBinder hp(int i2) throws RemoteException {
                IBinder strongBinder;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IBinderPool");
                    parcelObtain.writeInt(i2);
                    if (this.f21862l.transact(1, parcelObtain, parcelObtain2, 0) || hp.hp() == null) {
                        parcelObtain2.readException();
                        strongBinder = parcelObtain2.readStrongBinder();
                    } else {
                        strongBinder = hp.hp().hp(i2);
                    }
                    return strongBinder;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public hp() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.core.IBinderPool");
        }

        public static e hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.core.IBinderPool");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new C0287hp(iBinder) : (e) iInterfaceQueryLocalInterface;
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
                parcel2.writeString("com.bytedance.sdk.openadsdk.core.IBinderPool");
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IBinderPool");
            IBinder iBinderHp = hp(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeStrongBinder(iBinderHp);
            return true;
        }

        public static e hp() {
            return C0287hp.hp;
        }
    }
}
