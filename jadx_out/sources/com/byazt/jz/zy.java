package com.byazt.jz;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes.dex */
public interface zy extends IInterface {
    void hp() throws RemoteException;

    void hp(Bundle bundle) throws RemoteException;

    void j() throws RemoteException;

    void jx() throws RemoteException;

    void l() throws RemoteException;

    void w() throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 40, 312})
    public static abstract class hp extends Binder implements zy {
        public hp() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
        }

        public static zy a() {
            return C0294hp.hp;
        }

        public static zy hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zy)) ? new C0294hp(iBinder) : (zy) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1598968902) {
                parcel2.writeString("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
                    hp();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
                    hp(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
                    l();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
                    jx();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
                    j();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
                    w();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }

        @com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_BACKGROUND_STATUS})
        /* renamed from: com.byazt.jz.zy$hp$hp, reason: collision with other inner class name */
        public static class C0294hp implements zy {
            public static zy hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f21999l;

            public C0294hp(IBinder iBinder) {
                this.f21999l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f21999l;
            }

            @Override // com.byazt.jz.zy
            public void hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
                    if (this.f21999l.transact(1, parcelObtain, parcelObtain2, 0) || hp.a() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.a().hp();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.zy
            public void j() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
                    if (this.f21999l.transact(5, parcelObtain, parcelObtain2, 0) || hp.a() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.a().j();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.zy
            public void jx() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
                    if (this.f21999l.transact(4, parcelObtain, parcelObtain2, 0) || hp.a() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.a().jx();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.zy
            public void l() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
                    if (this.f21999l.transact(3, parcelObtain, parcelObtain2, 0) || hp.a() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.a().l();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.zy
            public void w() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
                    if (this.f21999l.transact(6, parcelObtain, parcelObtain2, 0) || hp.a() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.a().w();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.zy
            public void hp(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IFullScreenVideoAdInteractionListener");
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f21999l.transact(2, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        hp.a().hp(bundle);
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
        }
    }
}
