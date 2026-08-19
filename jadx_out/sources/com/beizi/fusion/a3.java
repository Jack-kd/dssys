package com.beizi.fusion;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.beizi.fusion.fk;
import com.beizi.fusion.sm.repeackage.com.asus.msa.SupplementaryDID.IDidAidlInterface;

/* loaded from: classes2.dex */
class a3 implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f12602a;

    public class a implements fk.a {
        public a() {
        }

        @Override // com.beizi.fusion.fk.a
        public String a(IBinder iBinder) {
            IDidAidlInterface iDidAidlInterfaceAsInterface = IDidAidlInterface.Stub.asInterface(iBinder);
            if (iDidAidlInterfaceAsInterface == null) {
                throw new vj("IDidAidlInterface is null");
            }
            if (iDidAidlInterfaceAsInterface.isSupport()) {
                return iDidAidlInterfaceAsInterface.getOAID();
            }
            throw new vj("IDidAidlInterface#isSupport return false");
        }
    }

    public a3(Context context) {
        this.f12602a = context;
    }

    @Override // com.beizi.fusion.zd
    public boolean a() {
        Context context = this.f12602a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.asus.msa.SupplementaryDID", 0) != null;
        } catch (Exception e2) {
            ak.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) {
        if (this.f12602a == null || lcVar == null) {
            return;
        }
        Intent intent = new Intent("com.asus.msa.action.ACCESS_DID");
        intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
        fk.a(this.f12602a, intent, lcVar, new a());
    }
}
