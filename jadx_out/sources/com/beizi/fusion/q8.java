package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.anythink.core.common.v.o;
import com.beizi.fusion.fk;
import com.beizi.fusion.sm.repeackage.com.google.android.gms.ads.identifier.internal.IAdvertisingIdService;

/* loaded from: classes2.dex */
class q8 implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15797a;

    public class a implements fk.a {
        public a() {
        }

        @Override // com.beizi.fusion.fk.a
        public String a(IBinder iBinder) {
            IAdvertisingIdService iAdvertisingIdServiceAsInterface = IAdvertisingIdService.Stub.asInterface(iBinder);
            if (iAdvertisingIdServiceAsInterface.isLimitAdTrackingEnabled(true)) {
                ak.a("User has disabled advertising identifier");
            }
            return iAdvertisingIdServiceAsInterface.getId();
        }
    }

    public q8(Context context) {
        this.f15797a = context;
    }

    @Override // com.beizi.fusion.zd
    public boolean a() {
        Context context = this.f15797a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo(o.a.f8258a, 0) != null;
        } catch (Exception e2) {
            ak.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) {
        if (this.f15797a == null || lcVar == null) {
            return;
        }
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        fk.a(this.f15797a, intent, lcVar, new a());
    }
}
