package com.czhj.devicehelper.cnoaid.impl;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import com.anythink.core.common.f.f;
import java.util.Objects;

/* loaded from: classes3.dex */
class s implements com.czhj.devicehelper.cnoaid.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f29180a;

    public s(Context context) {
        this.f29180a = context;
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public void a(com.czhj.devicehelper.cnoaid.c cVar) {
        if (this.f29180a == null || cVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.f29180a.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
            try {
                Objects.requireNonNull(cursorQuery);
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(cursorQuery.getColumnIndex(f.a.f3244d));
                if (string == null || string.length() == 0) {
                    throw new com.czhj.devicehelper.cnoaid.f("OAID query failed");
                }
                com.czhj.devicehelper.cnoaid.g.a("OAID query success: " + string);
                cVar.a(string);
                cursorQuery.close();
            } finally {
            }
        } catch (Exception e2) {
            com.czhj.devicehelper.cnoaid.g.a(e2);
            cVar.a(e2);
        }
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public boolean a() {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        return com.czhj.devicehelper.cnoaid.h.a("persist.sys.identifierid.supported", "0").equals("1");
    }
}
