package com.ubix.ssp.ad.e.a0.c0.h;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import com.anythink.core.common.f.f;
import java.util.Objects;

/* loaded from: classes5.dex */
class p implements com.ubix.ssp.ad.e.a0.c0.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46188a;

    public p(Context context) {
        this.f46188a = context;
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public void a(com.ubix.ssp.ad.e.a0.c0.c cVar) {
        if (this.f46188a == null || cVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.f46188a.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
            try {
                Objects.requireNonNull(cursorQuery);
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(cursorQuery.getColumnIndex(f.a.f3244d));
                if (string == null || string.length() == 0) {
                    throw new com.ubix.ssp.ad.e.a0.c0.e("OAID query failed");
                }
                com.ubix.ssp.ad.e.a0.c0.f.a("OAID query success: " + string);
                cVar.a(string);
                cursorQuery.close();
            } finally {
            }
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
            cVar.a(e2);
        }
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public boolean a() {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        return com.ubix.ssp.ad.e.a0.c0.g.a("persist.sys.identifierid.supported", "0").equals("1");
    }
}
