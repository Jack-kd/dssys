package com.meishu.sdk.core.oaid.impl;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.anythink.core.common.f.f;
import com.meishu.sdk.core.oaid.OAIDException;
import java.util.Objects;

/* loaded from: classes4.dex */
public class i implements com.meishu.sdk.core.oaid.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31696a;

    public i(Context context) {
        this.f31696a = context;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public boolean a() {
        Context context = this.f31696a;
        if (context == null) {
            return false;
        }
        return context.getPackageManager().resolveContentProvider("com.meizu.flyme.openidsdk", 0) != null;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) {
        if (this.f31696a == null || aVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.f31696a.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
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
