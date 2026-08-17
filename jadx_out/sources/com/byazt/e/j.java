package com.byazt.e;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.byazt.t.jl;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bv;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public interface j extends IInterface {

    @com.byazt.kj.hp(hp = {0, 1, 45, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static abstract class hp extends Binder implements j {
        public static String hp = "";

        @com.byazt.kj.hp(hp = {0, 1, 45, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_VOICE_IN_PREPARE})
        /* renamed from: com.byazt.e.j$hp$hp, reason: collision with other inner class name */
        public static class C0215hp implements j {
            public IBinder hp;

            public C0215hp(IBinder iBinder) {
                if (TextUtils.isEmpty(hp.hp)) {
                    JSONObject jSONObjectQ = jl.q();
                    String unused = hp.hp = com.byazt.wm.jx.hp(jSONObjectQ.optString(bv.aI), jSONObjectQ.optString("s"));
                }
                this.hp = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.hp;
            }

            @Override // com.byazt.e.j
            public void hp(l lVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(hp.hp);
                    if (lVar != null) {
                        parcelObtain.writeInt(1);
                        lVar.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.hp.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface(hp);
                hp(parcel.readInt() != 0 ? l.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(hp);
            return true;
        }

        public static j hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(hp);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof j)) {
                return (j) iInterfaceQueryLocalInterface;
            }
            return new C0215hp(iBinder);
        }
    }

    void hp(l lVar) throws RemoteException;
}
