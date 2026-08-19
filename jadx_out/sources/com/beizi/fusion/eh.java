package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.beizi.fusion.bc;
import com.beizi.fusion.ek;

/* loaded from: classes2.dex */
class eh implements ae {

    /* renamed from: a, reason: collision with root package name */
    private final Context f13713a;

    public class a implements ek.a {
        public a() {
        }

        @Override // com.beizi.fusion.ek.a
        public String a(IBinder iBinder) {
            bc bcVarA = bc.a.a(iBinder);
            if (bcVarA == null) {
                throw new wj("IDeviceidInterface is null");
            }
            if (bcVarA.isSupport()) {
                return bcVarA.getOAID();
            }
            throw new wj("IDeviceidInterface#isSupport return false");
        }
    }

    public eh(Context context) {
        this.f13713a = context;
    }

    @Override // com.beizi.fusion.ae
    public boolean a() {
        Context context = this.f13713a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.zui.deviceidservice", 0) != null;
        } catch (Exception e2) {
            bk.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.ae
    public void a(mc mcVar) {
        if (this.f13713a == null || mcVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        ek.a(this.f13713a, intent, mcVar, new a());
    }
}
