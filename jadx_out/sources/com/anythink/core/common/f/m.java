package com.anythink.core.common.f;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class m {
    private static void a() {
    }

    private static List<String> a(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = sQLiteDatabase.rawQuery("PRAGMA " + str + ".table_info(" + str2 + ")", null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    arrayList.add(cursorRawQuery.getString(1));
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
            return arrayList;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }
}
