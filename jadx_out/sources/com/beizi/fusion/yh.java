package com.beizi.fusion;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import com.anythink.core.common.f.f;
import com.beizi.fusion.e7;

/* loaded from: classes2.dex */
public class yh {

    /* renamed from: a, reason: collision with root package name */
    private Context f17692a;

    public yh(Context context) {
        this.f17692a = context;
    }

    public void a(e7.a aVar) throws PackageManager.NameNotFoundException {
        try {
            this.f17692a.getPackageManager().getPackageInfo("com.meizu.flyme.openidsdk", 0);
        } catch (Exception e2) {
            rm.a(e2);
        }
        try {
            Cursor cursorQuery = this.f17692a.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
            String strA = a(cursorQuery);
            if (aVar != null) {
                aVar.a(strA);
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
