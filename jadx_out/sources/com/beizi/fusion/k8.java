package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.beizi.fusion.ek;
import com.beizi.fusion.mf;

/* loaded from: classes2.dex */
public class k8 implements ae {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14721a;

    public class a implements ek.a {
        public a() {
        }

        @Override // com.beizi.fusion.ek.a
        public String a(IBinder iBinder) {
            mf mfVarA = mf.a.a(iBinder);
            if (mfVarA != null) {
                return mfVarA.getOAID();
            }
            throw new wj("IdsSupplier is null");
        }
    }

    public k8(Context context) {
        this.f14721a = context;
    }

    @Override // com.beizi.fusion.ae
    public boolean a() {
        Context context = this.f14721a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.android.creator", 0) != null;
        } catch (Exception e2) {
            bk.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.ae
    public void a(mc mcVar) {
        if (this.f14721a == null || mcVar == null) {
            return;
        }
        Intent intent = new Intent("android.service.action.msa");
        intent.setPackage("com.android.creator");
        ek.a(this.f14721a, intent, mcVar, new a());
    }
}
