package com.anythink.odopt.a.a;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.f.f;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    private Context f10598a;

    public m(Context context) {
        this.f10598a = context;
    }

    public final void a(com.anythink.odopt.a.a aVar) {
        String message;
        String string = null;
        try {
            Cursor cursorQuery = this.f10598a.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.moveToFirst();
                int columnIndex = cursorQuery.getColumnIndex(f.a.f3244d);
                if (columnIndex > 0) {
                    string = cursorQuery.getString(columnIndex);
                }
            }
            aVar.a(string, false);
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Exception unused) {
                }
            }
            message = "Empty";
        } catch (Throwable th) {
            message = th.getMessage();
        }
        if (TextUtils.isEmpty(string)) {
            aVar.a(message);
        }
    }
}
