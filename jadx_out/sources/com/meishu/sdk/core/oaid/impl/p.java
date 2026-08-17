package com.meishu.sdk.core.oaid.impl;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import com.anythink.core.common.f.f;
import com.meishu.sdk.core.oaid.OAIDException;
import java.util.Objects;

/* loaded from: classes4.dex */
public class p implements com.meishu.sdk.core.oaid.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31707a;

    public p(Context context) {
        this.f31707a = context;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public boolean a() {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        return com.meishu.sdk.core.oaid.c.a("persist.sys.identifierid.supported", "0").equals("1");
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) {
        if (this.f31707a == null || aVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.f31707a.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
            try {
                Objects.requireNonNull(cursorQuery);
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(cursorQuery.getColumnIndex(f.a.f3244d));
                if (string != null && string.length() != 0) {
                    ((com.meishu.sdk.core.utils.l) aVar).a(string);
                    cursorQuery.close();
                    return;
                }
                throw new OAIDException("OAID query failed");
            } finally {
            }
        } catch (Exception e2) {
            ((com.meishu.sdk.core.utils.l) aVar).a(e2);
        }
    }
}
