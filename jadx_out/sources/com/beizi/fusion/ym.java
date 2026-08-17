package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.beizi.fusion.ek;
import com.beizi.fusion.zb;

/* loaded from: classes2.dex */
class ym implements ae {

    /* renamed from: a, reason: collision with root package name */
    private final Context f17701a;

    public class a implements ek.a {
        public a() {
        }

        @Override // com.beizi.fusion.ek.a
        public String a(IBinder iBinder) {
            zb zbVarA = zb.a.a(iBinder);
            if (zbVarA != null) {
                return zbVarA.getOAID();
            }
            throw new wj("IDeviceIdService is null");
        }
    }

    public ym(Context context) {
        this.f17701a = context;
    }

    @Override // com.beizi.fusion.ae
    public boolean a() {
        Context context = this.f17701a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.samsung.android.deviceidservice", 0) != null;
        } catch (Exception e2) {
            bk.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.ae
    public void a(mc mcVar) {
        if (this.f17701a == null || mcVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
        ek.a(this.f17701a, intent, mcVar, new a());
    }
}
