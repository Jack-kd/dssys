package com.octopus.ad.d.a.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.octopus.ad.d.a.a.a.b.a.a.a;
import com.octopus.ad.d.a.b.l;

/* loaded from: classes4.dex */
public class a implements com.octopus.ad.d.a.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f33967a;

    public a(Context context) {
        this.f33967a = context;
    }

    @Override // com.octopus.ad.d.a.d
    public boolean a() {
        Context context = this.f33967a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.asus.msa.SupplementaryDID", 0) != null;
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
            return false;
        }
    }

    @Override // com.octopus.ad.d.a.d
    public void a(com.octopus.ad.d.a.c cVar) {
        if (this.f33967a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent("com.asus.msa.action.ACCESS_DID");
        intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
        l.a(this.f33967a, intent, cVar, new l.a() { // from class: com.octopus.ad.d.a.b.a.1
            @Override // com.octopus.ad.d.a.b.l.a
            public String a(IBinder iBinder) throws RemoteException, com.octopus.ad.d.a.e {
                com.octopus.ad.d.a.a.a.b.a.a.a aVarA = a.AbstractBinderC0730a.a(iBinder);
                if (aVarA == null) {
                    throw new com.octopus.ad.d.a.e("IDidAidlInterface is null");
                }
                if (aVarA.a()) {
                    return aVarA.c();
                }
                throw new com.octopus.ad.d.a.e("IDidAidlInterface#isSupport return false");
            }
        });
    }
}
