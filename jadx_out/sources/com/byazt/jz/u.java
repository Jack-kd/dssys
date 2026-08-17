package com.byazt.jz;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes.dex */
public interface u extends IInterface {
    void a() throws RemoteException;

    void hp() throws RemoteException;

    void hp(Bundle bundle) throws RemoteException;

    void hp(boolean z2, int i2, Bundle bundle) throws RemoteException;

    void hp(boolean z2, int i2, String str, int i3, String str2) throws RemoteException;

    void j() throws RemoteException;

    void jx() throws RemoteException;

    void l() throws RemoteException;

    void w() throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_NO_BUFFERING_UPDATE})
    public static abstract class hp extends Binder implements u {
        public hp() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
        }

        public static u eb() {
            return C0291hp.hp;
        }

        public static u hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof u)) ? new C0291hp(iBinder) : (u) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1598968902) {
                parcel2.writeString("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    hp();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    hp(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    l();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    jx();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    j();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    w();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    hp(parcel.readInt() != 0, parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    hp(parcel.readInt() != 0, parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    a();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }

        @com.byazt.kj.hp(hp = {0, 1, 40, 1142})
        /* renamed from: com.byazt.jz.u$hp$hp, reason: collision with other inner class name */
        public static class C0291hp implements u {
            public static u hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f21960l;

            public C0291hp(IBinder iBinder) {
                this.f21960l = iBinder;
            }

            @Override // com.byazt.jz.u
            public void a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    if (this.f21960l.transact(9, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.eb().a();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f21960l;
            }

            @Override // com.byazt.jz.u
            public void hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    if (this.f21960l.transact(1, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.eb().hp();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.u
            public void j() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    if (this.f21960l.transact(5, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.eb().j();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.u
            public void jx() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    if (this.f21960l.transact(4, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.eb().jx();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.u
            public void l() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    if (this.f21960l.transact(3, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.eb().l();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.u
            public void w() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    if (this.f21960l.transact(6, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.eb().w();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.jz.u
            public void hp(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f21960l.transact(2, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(bundle);
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

            @Override // com.byazt.jz.u
            public void hp(boolean z2, int i2, String str, int i3, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str2);
                    if (!this.f21960l.transact(7, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(z2, i2, str, i3, str2);
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

            @Override // com.byazt.jz.u
            public void hp(boolean z2, int i2, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IRewardAdInteractionListener");
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f21960l.transact(8, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(z2, i2, bundle);
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
