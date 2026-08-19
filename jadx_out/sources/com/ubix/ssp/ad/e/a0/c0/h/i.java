package com.ubix.ssp.ad.e.a0.c0.h;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.anythink.core.common.f.f;
import java.util.Objects;

/* loaded from: classes5.dex */
class i implements com.ubix.ssp.ad.e.a0.c0.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46175a;

    public i(Context context) {
        this.f46175a = context;
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public void a(com.ubix.ssp.ad.e.a0.c0.c cVar) {
        if (this.f46175a == null || cVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.f46175a.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
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
        Context context = this.f46175a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().resolveContentProvider("com.meizu.flyme.openidsdk", 0) != null;
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
            return false;
        }
    }
}
