package com.byazt.h;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.anythink.odopt.a.a.j;
import com.byazt.h.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes2.dex */
public interface l extends IInterface {
    void hp(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException;

    void hp(com.byazt.h.hp hpVar) throws RemoteException;

    void l(com.byazt.h.hp hpVar) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_EXPECT_BITRATE, 123})
    public static abstract class hp extends Binder implements l {
        public static l hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(j.f10579a);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof l)) ? new C0265hp(iBinder) : (l) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface(j.f10579a);
                hp(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(j.f10579a);
                hp(hp.AbstractBinderC0263hp.hp(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 3) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(j.f10579a);
                return true;
            }
            parcel.enforceInterface(j.f10579a);
            l(hp.AbstractBinderC0263hp.hp(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        public static l hp() {
            return C0265hp.hp;
        }

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_EXPECT_BITRATE, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ALGORITHM})
        /* renamed from: com.byazt.h.l$hp$hp, reason: collision with other inner class name */
        public static class C0265hp implements l {
            public static l hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20641l;

            public C0265hp(IBinder iBinder) {
                this.f20641l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20641l;
            }

            @Override // com.byazt.h.l
            public void hp(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f10579a);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeFloat(f2);
                    parcelObtain.writeDouble(d2);
                    parcelObtain.writeString(str);
                    if (this.f20641l.transact(1, parcelObtain, parcelObtain2, 0) || hp.hp() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.hp().hp(i2, j2, z2, f2, d2, str);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.h.l
            public void l(com.byazt.h.hp hpVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f10579a);
                    parcelObtain.writeStrongBinder(hpVar != null ? hpVar.asBinder() : null);
                    if (this.f20641l.transact(3, parcelObtain, parcelObtain2, 0) || hp.hp() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.hp().l(hpVar);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.h.l
            public void hp(com.byazt.h.hp hpVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f10579a);
                    parcelObtain.writeStrongBinder(hpVar != null ? hpVar.asBinder() : null);
                    if (!this.f20641l.transact(2, parcelObtain, parcelObtain2, 0) && hp.hp() != null) {
                        hp.hp().hp(hpVar);
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
