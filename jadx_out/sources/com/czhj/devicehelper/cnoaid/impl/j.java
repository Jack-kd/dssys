package com.czhj.devicehelper.cnoaid.impl;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.anythink.core.common.f.f;
import java.util.Objects;

/* loaded from: classes3.dex */
class j implements com.czhj.devicehelper.cnoaid.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f29159a;

    public j(Context context) {
        this.f29159a = context;
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public void a(com.czhj.devicehelper.cnoaid.c cVar) {
        if (this.f29159a == null || cVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.f29159a.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
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
        Context context = this.f29159a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().resolveContentProvider("com.meizu.flyme.openidsdk", 0) != null;
        } catch (Exception e2) {
            com.czhj.devicehelper.cnoaid.g.a(e2);
            return false;
        }
    }
}
