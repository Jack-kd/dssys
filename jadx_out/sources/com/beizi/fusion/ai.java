package com.beizi.fusion;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.anythink.core.common.f.f;
import java.util.Objects;

/* loaded from: classes2.dex */
class ai implements ae {

    /* renamed from: a, reason: collision with root package name */
    private final Context f12643a;

    public ai(Context context) {
        this.f12643a = context;
    }

    @Override // com.beizi.fusion.ae
    public boolean a() {
        Context context = this.f12643a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().resolveContentProvider("com.meizu.flyme.openidsdk", 0) != null;
        } catch (Exception e2) {
            bk.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.ae
    public void a(mc mcVar) {
        if (this.f12643a == null || mcVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.f12643a.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
            try {
                Objects.requireNonNull(cursorQuery);
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(cursorQuery.getColumnIndex(f.a.f3244d));
                if (string != null && string.length() != 0) {
                    bk.a("OAID query success: " + string);
                    mcVar.a(string);
                    cursorQuery.close();
                    return;
                }
                throw new wj("OAID query failed");
            } finally {
            }
        } catch (Exception e2) {
            bk.a(e2);
            mcVar.a(e2);
        }
    }
}
