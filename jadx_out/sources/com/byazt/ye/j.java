package com.byazt.ye;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public interface j extends IInterface {
    void hp(String str, int i2, String str2) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 786, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static abstract class hp extends Binder implements j {

        @com.byazt.kj.hp(hp = {0, 1, 786, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_VOICE_IN_PREPARE})
        /* renamed from: com.byazt.ye.j$hp$hp, reason: collision with other inner class name */
        public static class C0416hp implements j {
            public static j hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f27888l;

            public C0416hp(IBinder iBinder) {
                this.f27888l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f27888l;
            }

            @Override // com.byazt.ye.j
            public void hp(String str, int i2, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IPluginInstallListener");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    if (this.f27888l.transact(1, parcelObtain, parcelObtain2, 0) || hp.hp() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.hp().hp(str, i2, str2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public hp() {
            attachInterface(this, "com.bytedance.pangle.IPluginInstallListener");
        }

        public static j hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.pangle.IPluginInstallListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof j)) ? new C0416hp(iBinder) : (j) iInterfaceQueryLocalInterface;
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
                parcel2.writeString("com.bytedance.pangle.IPluginInstallListener");
                return true;
            }
            parcel.enforceInterface("com.bytedance.pangle.IPluginInstallListener");
            hp(parcel.readString(), parcel.readInt(), parcel.readString());
            parcel2.writeNoException();
            return true;
        }

        public static j hp() {
            return C0416hp.hp;
        }
    }
}
