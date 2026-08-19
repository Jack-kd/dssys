package com.byazt.e;

import android.annotation.SuppressLint;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.byazt.e.j;
import com.byazt.t.jl;
import com.kuaishou.weapon.p0.t;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public interface jx extends IInterface {

    @com.byazt.kj.hp(hp = {0, 1, 45, 219})
    public static abstract class hp extends Binder implements jx {
        public static String hp = "";

        @com.byazt.kj.hp(hp = {0, 1, 45, 1144})
        /* renamed from: com.byazt.e.jx$hp$hp, reason: collision with other inner class name */
        public static class C0216hp implements jx {
            public IBinder hp;

            public C0216hp(IBinder iBinder) {
                if (TextUtils.isEmpty(hp.hp)) {
                    JSONObject jSONObjectQ = jl.q();
                    String unused = hp.hp = com.byazt.wm.jx.hp(jSONObjectQ.optString(t.f31269k), jSONObjectQ.optString("s"));
                }
                this.hp = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.hp;
            }

            @Override // com.byazt.e.jx
            public void hp(l lVar, j jVar) throws RemoteException {
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
                    parcelObtain.writeStrongBinder(jVar != null ? jVar.asBinder() : null);
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
        @SuppressLint({"WrongConstant"})
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1598968902) {
                parcel2.writeString(hp);
                return true;
            }
            if (i2 != 1) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel.enforceInterface(hp);
            hp(parcel.readInt() != 0 ? l.CREATOR.createFromParcel(parcel) : null, j.hp.hp(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        public static jx hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(hp);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof jx)) {
                return (jx) iInterfaceQueryLocalInterface;
            }
            return new C0216hp(iBinder);
        }
    }

    void hp(l lVar, j jVar) throws RemoteException;
}
