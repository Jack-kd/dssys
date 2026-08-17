package com.czhj.devicehelper.cnoaid.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.czhj.devicehelper.cnoaid.com.qiku.id.IOAIDInterface;
import com.czhj.devicehelper.cnoaid.com.qiku.id.QikuIdmanager;
import com.czhj.devicehelper.cnoaid.impl.n;

/* loaded from: classes3.dex */
public class q implements com.czhj.devicehelper.cnoaid.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f29175a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f29176b = true;

    public q(Context context) {
        this.f29175a = context;
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public void a(com.czhj.devicehelper.cnoaid.c cVar) {
        if (this.f29175a == null || cVar == null) {
            return;
        }
        if (this.f29176b) {
            Intent intent = new Intent("qiku.service.action.id");
            intent.setPackage("com.qiku.id");
            n.a(this.f29175a, intent, cVar, new n.a() { // from class: com.czhj.devicehelper.cnoaid.impl.q.1
                @Override // com.czhj.devicehelper.cnoaid.impl.n.a
                public String a(IBinder iBinder) throws com.czhj.devicehelper.cnoaid.f, RemoteException {
                    IOAIDInterface iOAIDInterfaceAsInterface = IOAIDInterface.Stub.asInterface(iBinder);
                    if (iOAIDInterfaceAsInterface != null) {
                        return iOAIDInterfaceAsInterface.getOAID();
                    }
                    throw new com.czhj.devicehelper.cnoaid.f("IdsSupplier is null");
                }
            });
            return;
        }
        try {
            String oaid = new QikuIdmanager().getOAID();
            if (oaid == null || oaid.length() == 0) {
                throw new com.czhj.devicehelper.cnoaid.f("OAID/AAID acquire failed");
            }
            cVar.a(oaid);
        } catch (Exception e2) {
            cVar.a(e2);
        }
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public boolean a() {
        Context context = this.f29175a;
        if (context == null) {
            return false;
        }
        try {
            if (context.getPackageManager().getPackageInfo("com.qiku.id", 0) != null) {
                return true;
            }
            this.f29176b = false;
            return new QikuIdmanager().isSupported();
        } catch (Exception e2) {
            com.czhj.devicehelper.cnoaid.g.a(e2);
            return false;
        }
    }
}
