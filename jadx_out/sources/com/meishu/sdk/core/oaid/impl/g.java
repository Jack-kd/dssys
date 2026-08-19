package com.meishu.sdk.core.oaid.impl;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.meishu.sdk.core.oaid.OAIDException;
import com.meishu.sdk.core.oaid.impl.m;

/* loaded from: classes4.dex */
public class g implements com.meishu.sdk.core.oaid.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31693a;

    /* renamed from: b, reason: collision with root package name */
    public String f31694b;

    public class a implements m.a {
        public a(g gVar) {
        }

        @Override // com.meishu.sdk.core.oaid.impl.m.a
        public String a(IBinder iBinder) throws OAIDException, RemoteException {
            String string;
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                iBinder.transact(1, parcelObtain, parcelObtain2, 0);
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
            return string;
        }
    }

    public g(Context context) {
        this.f31693a = context;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public boolean a() {
        PackageManager packageManager;
        Context context = this.f31693a;
        if (context == null) {
            return false;
        }
        try {
            packageManager = context.getPackageManager();
        } catch (Throwable unused) {
        }
        if (packageManager.getPackageInfo("com.huawei.hwid", 0) != null) {
            this.f31694b = "com.huawei.hwid";
        } else {
            if (packageManager.getPackageInfo("com.huawei.hwid.tv", 0) == null) {
                this.f31694b = "com.huawei.hms";
                return packageManager.getPackageInfo("com.huawei.hms", 0) != null;
            }
            this.f31694b = "com.huawei.hwid.tv";
        }
        return true;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) {
        if (this.f31693a == null || aVar == null) {
            return;
        }
        if (TextUtils.isEmpty(this.f31694b) && !a()) {
            ((com.meishu.sdk.core.utils.l) aVar).a(new OAIDException("Huawei Advertising ID not available"));
        } else {
            Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
            intent.setPackage(this.f31694b);
            m.a(this.f31693a, intent, aVar, new a(this));
        }
    }
}
