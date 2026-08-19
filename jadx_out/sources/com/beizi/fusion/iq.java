package com.beizi.fusion;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import com.anythink.core.common.f.f;
import java.util.Objects;

/* loaded from: classes2.dex */
class iq implements ae {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14510a;

    public iq(Context context) {
        this.f14510a = context;
    }

    @Override // com.beizi.fusion.ae
    public boolean a() {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        return dk.a("persist.sys.identifierid.supported", "0").equals("1");
    }

    @Override // com.beizi.fusion.ae
    public void a(mc mcVar) {
        if (this.f14510a == null || mcVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.f14510a.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
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
