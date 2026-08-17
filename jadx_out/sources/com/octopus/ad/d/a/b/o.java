package com.octopus.ad.d.a.b;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import com.anythink.core.common.f.f;
import java.util.Objects;

/* loaded from: classes4.dex */
public class o implements com.octopus.ad.d.a.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f33993a;

    public o(Context context) {
        this.f33993a = context;
    }

    @Override // com.octopus.ad.d.a.d
    public boolean a() {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        return com.octopus.ad.d.a.g.a("persist.sys.identifierid.supported", "0").equals("1");
    }

    @Override // com.octopus.ad.d.a.d
    public void a(com.octopus.ad.d.a.c cVar) {
        if (this.f33993a == null || cVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.f33993a.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
            try {
                Objects.requireNonNull(cursorQuery);
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(cursorQuery.getColumnIndex(f.a.f3244d));
                if (string != null && string.length() != 0) {
                    com.octopus.ad.d.a.f.a("OAID query success: " + string);
                    cVar.a(string);
                    cursorQuery.close();
                    return;
                }
                throw new com.octopus.ad.d.a.e("OAID query failed");
            } finally {
            }
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
            cVar.a(e2);
        }
    }
}
