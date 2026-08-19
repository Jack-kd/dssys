package com.ubix.ssp.ad.e.a0.c0.h;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.ubix.ssp.ad.e.a0.c0.h.m;
import com.ubix.ssp.ad.e.a0.c0.i.d.b;

/* loaded from: classes5.dex */
class h implements com.ubix.ssp.ad.e.a0.c0.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46173a;

    public class a implements m.a {
        public a() {
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.h.m.a
        public String a(IBinder iBinder) {
            com.ubix.ssp.ad.e.a0.c0.i.d.b bVarA = b.a.a(iBinder);
            if (bVarA == null) {
                throw new com.ubix.ssp.ad.e.a0.c0.e("IDeviceidInterface is null");
            }
            if (bVarA.f()) {
                return bVarA.a();
            }
            throw new com.ubix.ssp.ad.e.a0.c0.e("IDeviceidInterface#isSupport return false");
        }
    }

    public h(Context context) {
        this.f46173a = context;
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public void a(com.ubix.ssp.ad.e.a0.c0.c cVar) {
        if (this.f46173a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        m.a(this.f46173a, intent, cVar, new a());
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public boolean a() {
        Context context = this.f46173a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.zui.deviceidservice", 0) != null;
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
            return false;
        }
    }
}
