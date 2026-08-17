package com.beizi.fusion;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.anythink.core.common.f.f;
import java.util.Objects;

/* loaded from: classes2.dex */
class zh implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f17880a;

    public zh(Context context) {
        this.f17880a = context;
    }

    @Override // com.beizi.fusion.zd
    public boolean a() {
        Context context = this.f17880a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().resolveContentProvider("com.meizu.flyme.openidsdk", 0) != null;
        } catch (Exception e2) {
            ak.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) {
        if (this.f17880a == null || lcVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.f17880a.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
            try {
                Objects.requireNonNull(cursorQuery);
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(cursorQuery.getColumnIndex(f.a.f3244d));
                if (string != null && string.length() != 0) {
                    ak.a("OAID query success: " + string);
                    lcVar.a(string);
                    cursorQuery.close();
                    return;
                }
                throw new vj("OAID query failed");
            } finally {
            }
        } catch (Exception e2) {
            ak.a(e2);
            lcVar.a(e2);
        }
    }
}
