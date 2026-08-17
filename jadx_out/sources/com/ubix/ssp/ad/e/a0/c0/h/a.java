package com.ubix.ssp.ad.e.a0.c0.h;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.ubix.ssp.ad.e.a0.c0.h.m;
import com.ubix.ssp.ad.e.a0.c0.i.a.a;

/* loaded from: classes5.dex */
class a implements com.ubix.ssp.ad.e.a0.c0.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46152a;

    /* renamed from: com.ubix.ssp.ad.e.a0.c0.h.a$a, reason: collision with other inner class name */
    public class C0790a implements m.a {
        public C0790a() {
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.h.m.a
        public String a(IBinder iBinder) {
            com.ubix.ssp.ad.e.a0.c0.i.a.a aVarA = a.AbstractBinderC0794a.a(iBinder);
            if (aVarA == null) {
                throw new com.ubix.ssp.ad.e.a0.c0.e("IDidAidlInterface is null");
            }
            if (aVarA.f()) {
                return aVarA.a();
            }
            throw new com.ubix.ssp.ad.e.a0.c0.e("IDidAidlInterface#isSupport return false");
        }
    }

    public a(Context context) {
        this.f46152a = context;
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public void a(com.ubix.ssp.ad.e.a0.c0.c cVar) {
        if (this.f46152a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent("com.asus.msa.action.ACCESS_DID");
        intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
        m.a(this.f46152a, intent, cVar, new C0790a());
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public boolean a() {
        Context context = this.f46152a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.asus.msa.SupplementaryDID", 0) != null;
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
            return false;
        }
    }
}
