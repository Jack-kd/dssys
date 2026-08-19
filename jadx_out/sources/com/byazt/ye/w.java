package com.byazt.ye;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.byazt.ye.s;

/* loaded from: classes3.dex */
public interface w extends IInterface {
    boolean bindService(Intent intent, s sVar, int i2, String str) throws RemoteException;

    ComponentName startService(Intent intent, String str) throws RemoteException;

    boolean stopService(Intent intent, String str) throws RemoteException;

    void unbindService(s sVar) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 786, 8})
    public static abstract class hp extends Binder implements w {

        @com.byazt.kj.hp(hp = {0, 1, 786, 839})
        /* renamed from: com.byazt.ye.w$hp$hp, reason: collision with other inner class name */
        public static class C0419hp implements w {
            public static w hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f27894l;

            public C0419hp(IBinder iBinder) {
                this.f27894l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f27894l;
            }

            @Override // com.byazt.ye.w
            public boolean bindService(Intent intent, s sVar, int i2, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IServiceManager");
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(sVar != null ? sVar.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    if (!this.f27894l.transact(3, parcelObtain, parcelObtain2, 0) && hp.hp() != null) {
                        boolean zBindService = hp.hp().bindService(intent, sVar, i2, str);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return zBindService;
                    }
                    parcelObtain2.readException();
                    boolean z2 = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z2;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.ye.w
            public ComponentName startService(Intent intent, String str) throws RemoteException {
                ComponentName componentNameStartService;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IServiceManager");
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    if (this.f27894l.transact(1, parcelObtain, parcelObtain2, 0) || hp.hp() == null) {
                        parcelObtain2.readException();
                        componentNameStartService = parcelObtain2.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        componentNameStartService = hp.hp().startService(intent, str);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return componentNameStartService;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.ye.w
            public boolean stopService(Intent intent, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IServiceManager");
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    if (!this.f27894l.transact(2, parcelObtain, parcelObtain2, 0) && hp.hp() != null) {
                        boolean zStopService = hp.hp().stopService(intent, str);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return zStopService;
                    }
                    parcelObtain2.readException();
                    boolean z2 = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z2;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.ye.w
            public void unbindService(s sVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IServiceManager");
                    parcelObtain.writeStrongBinder(sVar != null ? sVar.asBinder() : null);
                    if (this.f27894l.transact(4, parcelObtain, parcelObtain2, 0) || hp.hp() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.hp().unbindService(sVar);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public hp() {
            attachInterface(this, "com.bytedance.pangle.IServiceManager");
        }

        public static w hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.pangle.IServiceManager");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof w)) ? new C0419hp(iBinder) : (w) iInterfaceQueryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.bytedance.pangle.IServiceManager");
                ComponentName componentNameStartService = startService(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                parcel2.writeNoException();
                if (componentNameStartService != null) {
                    parcel2.writeInt(1);
                    componentNameStartService.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("com.bytedance.pangle.IServiceManager");
                boolean zStopService = stopService(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zStopService ? 1 : 0);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface("com.bytedance.pangle.IServiceManager");
                boolean zBindService = bindService(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, s.hp.hp(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zBindService ? 1 : 0);
                return true;
            }
            if (i2 != 4) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.bytedance.pangle.IServiceManager");
                return true;
            }
            parcel.enforceInterface("com.bytedance.pangle.IServiceManager");
            unbindService(s.hp.hp(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        public static w hp() {
            return C0419hp.hp;
        }
    }
}
