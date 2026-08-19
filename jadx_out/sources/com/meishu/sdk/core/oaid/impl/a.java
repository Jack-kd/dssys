package com.meishu.sdk.core.oaid.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;
import com.meishu.sdk.core.oaid.OAIDException;
import com.meishu.sdk.core.oaid.impl.m;
import com.meishu.sdk.core.oaid.repeackage.com.asus.msa.SupplementaryDID.a;

/* loaded from: classes4.dex */
public class a implements com.meishu.sdk.core.oaid.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31686a;

    /* renamed from: com.meishu.sdk.core.oaid.impl.a$a, reason: collision with other inner class name */
    public class C0656a implements m.a {
        public C0656a(a aVar) {
        }

        @Override // com.meishu.sdk.core.oaid.impl.m.a
        public String a(IBinder iBinder) throws OAIDException, RemoteException {
            com.meishu.sdk.core.oaid.repeackage.com.asus.msa.SupplementaryDID.a c0660a;
            int i2 = a.AbstractBinderC0659a.f31713a;
            if (iBinder == null) {
                c0660a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IDidAidlInterface.Stub.DESCRIPTOR);
                c0660a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.meishu.sdk.core.oaid.repeackage.com.asus.msa.SupplementaryDID.a)) ? new a.AbstractBinderC0659a.C0660a(iBinder) : (com.meishu.sdk.core.oaid.repeackage.com.asus.msa.SupplementaryDID.a) iInterfaceQueryLocalInterface;
            }
            if (c0660a == null) {
                throw new OAIDException("IDidAidlInterface is null");
            }
            if (c0660a.b()) {
                return c0660a.a();
            }
            throw new OAIDException("IDidAidlInterface#isSupport return false");
        }
    }

    public a(Context context) {
        this.f31686a = context;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public boolean a() {
        Context context = this.f31686a;
        if (context == null) {
            return false;
        }
        return context.getPackageManager().getPackageInfo("com.asus.msa.SupplementaryDID", 0) != null;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) {
        if (this.f31686a == null || aVar == null) {
            return;
        }
        Intent intent = new Intent("com.asus.msa.action.ACCESS_DID");
        intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
        m.a(this.f31686a, intent, aVar, new C0656a(this));
    }
}
