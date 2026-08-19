package com.byazt.jz;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface xs extends IInterface {
    void hp() throws RemoteException;

    void hp(long j2, long j3, String str, String str2) throws RemoteException;

    void hp(long j2, String str, String str2) throws RemoteException;

    void hp(String str, String str2) throws RemoteException;

    void jx(long j2, long j3, String str, String str2) throws RemoteException;

    void l(long j2, long j3, String str, String str2) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 40, 672})
    public static abstract class hp extends Binder implements xs {
        public hp() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
        }

        public static xs hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof xs)) ? new C0293hp(iBinder) : (xs) iInterfaceQueryLocalInterface;
        }

        public static xs l() {
            return C0293hp.hp;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1598968902) {
                parcel2.writeString("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    hp();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    hp(parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    l(parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    jx(parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    hp(parcel.readLong(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    hp(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }

        @com.byazt.kj.hp(hp = {0, 1, 40, 2001})
        /* renamed from: com.byazt.jz.xs$hp$hp, reason: collision with other inner class name */
        public static class C0293hp implements xs {
            public static xs hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f21998l;

            public C0293hp(IBinder iBinder) {
                this.f21998l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f21998l;
            }

            @Override // com.byazt.jz.xs
            public void hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    if (this.f21998l.transact(1, parcelObtain, parcelObtain2, 0) || hp.l() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.l().hp();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.xs
            public void jx(long j2, long j3, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeLong(j3);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (this.f21998l.transact(4, parcelObtain, parcelObtain2, 0) || hp.l() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.l().jx(j2, j3, str, str2);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.jz.xs
            public void l(long j2, long j3, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeLong(j3);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (this.f21998l.transact(3, parcelObtain, parcelObtain2, 0) || hp.l() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.l().l(j2, j3, str, str2);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.jz.xs
            public void hp(long j2, long j3, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeLong(j3);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.f21998l.transact(2, parcelObtain, parcelObtain2, 0) && hp.l() != null) {
                        hp.l().hp(j2, j3, str, str2);
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

            @Override // com.byazt.jz.xs
            public void hp(long j2, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.f21998l.transact(5, parcelObtain, parcelObtain2, 0) && hp.l() != null) {
                        hp.l().hp(j2, str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.xs
            public void hp(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.f21998l.transact(6, parcelObtain, parcelObtain2, 0) && hp.l() != null) {
                        hp.l().hp(str, str2);
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
