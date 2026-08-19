package com.beizi.fusion;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import com.anythink.core.common.f.f;
import com.beizi.fusion.d7;

/* loaded from: classes2.dex */
public class xh {

    /* renamed from: a, reason: collision with root package name */
    private Context f17456a;

    public xh(Context context) {
        this.f17456a = context;
    }

    public void a(d7.b bVar) throws PackageManager.NameNotFoundException {
        try {
            this.f17456a.getPackageManager().getPackageInfo("com.meizu.flyme.openidsdk", 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            Cursor cursorQuery = this.f17456a.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
            String strA = a(cursorQuery);
            if (bVar != null) {
                bVar.a(strA);
            }
            cursorQuery.close();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private String a(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return null;
        }
        cursor.moveToFirst();
        int columnIndex = cursor.getColumnIndex(f.a.f3244d);
        String string = columnIndex > 0 ? cursor.getString(columnIndex) : null;
        int columnIndex2 = cursor.getColumnIndex("code");
        if (columnIndex2 > 0) {
            cursor.getInt(columnIndex2);
        }
        int columnIndex3 = cursor.getColumnIndex("expired");
        if (columnIndex3 > 0) {
            cursor.getLong(columnIndex3);
        }
        return string;
    }
}
