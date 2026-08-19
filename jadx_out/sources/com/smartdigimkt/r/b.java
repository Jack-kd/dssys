package com.smartdigimkt.r;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f42872a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue f42873b = new LinkedBlockingQueue(1);

    /* renamed from: c, reason: collision with root package name */
    public final a f42874c = new a(this);

    public b(Context context) {
        this.f42872a = context;
    }

    public final void a(com.smartdigimkt.q.b bVar) {
        String string;
        try {
            Intent intent = new Intent();
            intent.setAction("com.asus.msa.action.ACCESS_DID");
            intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
            if (!this.f42872a.bindService(intent, this.f42874c, 1)) {
                bVar.a("Empty");
                return;
            }
            try {
                try {
                    IBinder iBinder = (IBinder) this.f42873b.take();
                    Parcel parcelObtain = Parcel.obtain();
                    Parcel parcelObtain2 = Parcel.obtain();
                    try {
                        parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                        iBinder.transact(3, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } catch (Throwable th) {
                        parcelObtain.recycle();
                        parcelObtain2.recycle();
                        th.printStackTrace();
                        string = null;
                    }
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                    bVar.a(string, false);
                } catch (Exception e2) {
                    bVar.a(e2.getMessage());
                }
            } catch (Throwable th2) {
                bVar.a(th2.getMessage());
            }
        } catch (Throwable th3) {
            th3.printStackTrace();
        }
    }
}
