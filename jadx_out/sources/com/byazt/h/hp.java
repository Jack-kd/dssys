package com.byazt.h;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.anythink.odopt.a.a.i;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes2.dex */
public interface hp extends IInterface {
    void hp(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException;

    void hp(int i2, Bundle bundle) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_EXPECT_BITRATE, 170})
    /* renamed from: com.byazt.h.hp$hp, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0263hp extends Binder implements hp {
        public AbstractBinderC0263hp() {
            attachInterface(this, i.f10577a);
        }

        public static hp hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(i.f10577a);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof hp)) ? new C0264hp(iBinder) : (hp) iInterfaceQueryLocalInterface;
        }

        public static hp l() {
            return C0264hp.hp;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface(i.f10577a);
                hp(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(i.f10577a);
                return true;
            }
            parcel.enforceInterface(i.f10577a);
            hp(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_EXPECT_BITRATE, TTAdConstant.IMAGE_URL_CODE})
        /* renamed from: com.byazt.h.hp$hp$hp, reason: collision with other inner class name */
        public static class C0264hp implements hp {
            public static hp hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20640l;

            public C0264hp(IBinder iBinder) {
                this.f20640l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20640l;
            }

            @Override // com.byazt.h.hp
            public void hp(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(i.f10577a);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeFloat(f2);
                    parcelObtain.writeDouble(d2);
                    parcelObtain.writeString(str);
                    if (this.f20640l.transact(1, parcelObtain, parcelObtain2, 0) || AbstractBinderC0263hp.l() == null) {
                        parcelObtain2.readException();
                    } else {
                        AbstractBinderC0263hp.l().hp(i2, j2, z2, f2, d2, str);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.h.hp
            public void hp(int i2, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(i.f10577a);
                    parcelObtain.writeInt(i2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f20640l.transact(2, parcelObtain, parcelObtain2, 0) && AbstractBinderC0263hp.l() != null) {
                        AbstractBinderC0263hp.l().hp(i2, bundle);
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
