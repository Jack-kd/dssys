package com.beizi.fusion;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import com.anythink.core.common.f.f;
import java.util.Objects;

/* loaded from: classes2.dex */
class hq implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14391a;

    public hq(Context context) {
        this.f14391a = context;
    }

    @Override // com.beizi.fusion.zd
    public boolean a() {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        return ck.a("persist.sys.identifierid.supported", "0").equals("1");
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) {
        if (this.f14391a == null || lcVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.f14391a.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
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
