package com.octopus.ad.d.a.b;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.anythink.core.common.f.f;
import java.util.Objects;

/* loaded from: classes4.dex */
public class h implements com.octopus.ad.d.a.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f33980a;

    public h(Context context) {
        this.f33980a = context;
    }

    @Override // com.octopus.ad.d.a.d
    public boolean a() {
        Context context = this.f33980a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().resolveContentProvider("com.meizu.flyme.openidsdk", 0) != null;
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
            return false;
        }
    }

    @Override // com.octopus.ad.d.a.d
    public void a(com.octopus.ad.d.a.c cVar) {
        if (this.f33980a == null || cVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.f33980a.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
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
