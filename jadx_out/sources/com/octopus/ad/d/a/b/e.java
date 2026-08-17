package com.octopus.ad.d.a.b;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.octopus.ad.d.a.a.a.a.a.a;
import com.octopus.ad.d.a.b.l;

/* loaded from: classes4.dex */
public class e implements com.octopus.ad.d.a.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f33973a;

    public e(Context context) {
        this.f33973a = context;
    }

    @Override // com.octopus.ad.d.a.d
    public boolean a() {
        Context context = this.f33973a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.android.creator", 0) != null;
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
            return false;
        }
    }

    @Override // com.octopus.ad.d.a.d
    public void a(com.octopus.ad.d.a.c cVar) {
        if (this.f33973a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent("android.service.action.msa");
        intent.setPackage("com.android.creator");
        l.a(this.f33973a, intent, cVar, new l.a() { // from class: com.octopus.ad.d.a.b.e.1
            @Override // com.octopus.ad.d.a.b.l.a
            public String a(IBinder iBinder) throws RemoteException, com.octopus.ad.d.a.e {
                com.octopus.ad.d.a.a.a.a.a.a aVarA = a.AbstractBinderC0728a.a(iBinder);
                if (aVarA != null) {
                    return aVarA.b();
                }
                throw new com.octopus.ad.d.a.e("IdsSupplier is null");
            }
        });
    }
}
