package com.ubix.ssp.ad.e.a0.c0.h;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.ubix.ssp.ad.e.a0.c0.h.m;
import com.ubix.ssp.ad.e.a0.c0.i.c.a;

/* loaded from: classes5.dex */
public class e implements com.ubix.ssp.ad.e.a0.c0.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46158a;

    public class a implements m.a {
        public a() {
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.h.m.a
        public String a(IBinder iBinder) {
            com.ubix.ssp.ad.e.a0.c0.i.c.a aVarA = a.AbstractBinderC0798a.a(iBinder);
            if (aVarA != null) {
                return aVarA.a();
            }
            throw new com.ubix.ssp.ad.e.a0.c0.e("IdsSupplier is null");
        }
    }

    public e(Context context) {
        this.f46158a = context;
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public void a(com.ubix.ssp.ad.e.a0.c0.c cVar) {
        if (this.f46158a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent("android.service.action.msa");
        intent.setPackage("com.android.creator");
        m.a(this.f46158a, intent, cVar, new a());
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public boolean a() {
        Context context = this.f46158a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.android.creator", 0) != null;
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
            return false;
        }
    }
}
