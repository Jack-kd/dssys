package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.beizi.fusion.fk;
import com.beizi.fusion.sm.repeackage.com.android.creator.IdsSupplier;

/* loaded from: classes2.dex */
public class j8 implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14653a;

    public class a implements fk.a {
        public a() {
        }

        @Override // com.beizi.fusion.fk.a
        public String a(IBinder iBinder) {
            IdsSupplier idsSupplierAsInterface = IdsSupplier.Stub.asInterface(iBinder);
            if (idsSupplierAsInterface != null) {
                return idsSupplierAsInterface.getOAID();
            }
            throw new vj("IdsSupplier is null");
        }
    }

    public j8(Context context) {
        this.f14653a = context;
    }

    @Override // com.beizi.fusion.zd
    public boolean a() {
        Context context = this.f14653a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.android.creator", 0) != null;
        } catch (Exception e2) {
            ak.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) {
        if (this.f14653a == null || lcVar == null) {
            return;
        }
        Intent intent = new Intent("android.service.action.msa");
        intent.setPackage("com.android.creator");
        fk.a(this.f14653a, intent, lcVar, new a());
    }
}
