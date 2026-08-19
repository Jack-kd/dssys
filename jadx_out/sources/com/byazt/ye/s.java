package com.byazt.ye;

import android.content.ComponentName;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public interface s extends IInterface {
    int hp() throws RemoteException;

    void hp(ComponentName componentName, IBinder iBinder) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 786, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public static abstract class hp extends Binder implements s {
        public hp() {
            attachInterface(this, "com.bytedance.pangle.ServiceConnection");
        }

        public static s hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.pangle.ServiceConnection");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof s)) ? new C0418hp(iBinder) : (s) iInterfaceQueryLocalInterface;
        }

        public static s l() {
            return C0418hp.hp;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.bytedance.pangle.ServiceConnection");
                hp(parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readStrongBinder());
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.bytedance.pangle.ServiceConnection");
                return true;
            }
            parcel.enforceInterface("com.bytedance.pangle.ServiceConnection");
            int iHp = hp();
            parcel2.writeNoException();
            parcel2.writeInt(iHp);
            return true;
        }

        @com.byazt.kj.hp(hp = {0, 1, 786, 1324})
        /* renamed from: com.byazt.ye.s$hp$hp, reason: collision with other inner class name */
        public static class C0418hp implements s {
            public static s hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f27893l;

            public C0418hp(IBinder iBinder) {
                this.f27893l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f27893l;
            }

            @Override // com.byazt.ye.s
            public void hp(ComponentName componentName, IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.ServiceConnection");
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iBinder);
                    if (this.f27893l.transact(1, parcelObtain, parcelObtain2, 0) || hp.l() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.l().hp(componentName, iBinder);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.ye.s
            public int hp() throws RemoteException {
                int iHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.ServiceConnection");
                    if (!this.f27893l.transact(2, parcelObtain, parcelObtain2, 0) && hp.l() != null) {
                        iHp = hp.l().hp();
                    } else {
                        parcelObtain2.readException();
                        iHp = parcelObtain2.readInt();
                    }
                    return iHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
