package com.kwad.sdk.liteapi.oaid.interfaces;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.annotation.Keep;
import com.kwad.sdk.liteapi.LiteApiLogger;

@Keep
/* loaded from: classes4.dex */
public interface SamsungIDInterface extends IInterface {

    public static class a implements SamsungIDInterface {
        private IBinder aUR;

        public a(IBinder iBinder) {
            this.aUR = iBinder;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.aUR;
        }

        @Override // com.kwad.sdk.liteapi.oaid.interfaces.SamsungIDInterface
        public final String getID() {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                try {
                    parcelObtain.writeInterfaceToken("com.samsung.android.deviceidservice.IDeviceIdService");
                    this.aUR.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } catch (Exception e2) {
                    LiteApiLogger.printStackTrace(e2);
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return null;
                }
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }

    String getID();
}
