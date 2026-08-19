package com.kwad.sdk.liteapi.oaid.interfaces;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.annotation.Keep;
import com.kwad.sdk.liteapi.LiteApiLogger;

@Keep
/* loaded from: classes4.dex */
public interface HWIDInterface extends IInterface {

    public static final class a implements HWIDInterface {
        private IBinder aUQ;

        public a(IBinder iBinder) {
            this.aUQ = iBinder;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.aUQ;
        }

        @Override // com.kwad.sdk.liteapi.oaid.interfaces.HWIDInterface
        public final boolean getBoos() {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            boolean z2 = false;
            try {
                try {
                    parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    this.aUQ.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() == 0) {
                        z2 = true;
                    }
                } catch (Exception e2) {
                    LiteApiLogger.printStackTrace(e2);
                }
                return z2;
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }

        @Override // com.kwad.sdk.liteapi.oaid.interfaces.HWIDInterface
        public final String getIDs() {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                try {
                    parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    this.aUQ.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } catch (Exception e2) {
                    LiteApiLogger.printStackTrace(e2);
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                    return null;
                }
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
    }

    boolean getBoos();

    String getIDs();
}
