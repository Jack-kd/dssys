package com.smartdigimkt.r;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.f.f;

/* loaded from: classes5.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public final Context f42919a;

    public w(Context context) {
        this.f42919a = context;
    }

    public final void a(com.smartdigimkt.q.b bVar) {
        String message;
        String string = null;
        try {
            Cursor cursorQuery = this.f42919a.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.moveToFirst();
                int columnIndex = cursorQuery.getColumnIndex(f.a.f3244d);
                if (columnIndex > 0) {
                    string = cursorQuery.getString(columnIndex);
                }
            }
            bVar.a(string, false);
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
            bVar.a(message);
        }
    }
}
