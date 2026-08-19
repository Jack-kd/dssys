package com.beizi.fusion;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.beizi.fusion.cc;
import com.beizi.fusion.ek;

/* loaded from: classes2.dex */
class b3 implements ae {

    /* renamed from: a, reason: collision with root package name */
    private final Context f13033a;

    public class a implements ek.a {
        public a() {
        }

        @Override // com.beizi.fusion.ek.a
        public String a(IBinder iBinder) {
            cc ccVarA = cc.a.a(iBinder);
            if (ccVarA == null) {
                throw new wj("IDidAidlInterface is null");
            }
            if (ccVarA.isSupport()) {
                return ccVarA.getOAID();
            }
            throw new wj("IDidAidlInterface#isSupport return false");
        }
    }

    public b3(Context context) {
        this.f13033a = context;
    }

    @Override // com.beizi.fusion.ae
    public boolean a() {
        Context context = this.f13033a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.asus.msa.SupplementaryDID", 0) != null;
        } catch (Exception e2) {
            bk.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.ae
    public void a(mc mcVar) {
        if (this.f13033a == null || mcVar == null) {
            return;
        }
        Intent intent = new Intent("com.asus.msa.action.ACCESS_DID");
        intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
        ek.a(this.f13033a, intent, mcVar, new a());
    }
}
