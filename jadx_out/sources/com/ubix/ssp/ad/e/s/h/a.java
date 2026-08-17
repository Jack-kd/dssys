package com.ubix.ssp.ad.e.s.h;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private Context f47109a;

    /* renamed from: b, reason: collision with root package name */
    private SQLiteDatabase f47110b;

    public a(Context context) {
        this.f47109a = context;
        this.f47110b = new b(context).getWritableDatabase();
    }

    private boolean c(String str) {
        Cursor cursorQuery = this.f47110b.query("t_ubixad_download_info", null, " id = ? ", new String[]{str}, null, null, null);
        boolean zMoveToNext = cursorQuery.moveToNext();
        cursorQuery.close();
        return zMoveToNext;
    }

    public void a(com.ubix.ssp.ad.e.s.g.b bVar) {
        if (bVar == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", bVar.f());
        contentValues.put("downloadUrl", bVar.c());
        contentValues.put("filePath", bVar.e());
        contentValues.put("size", Long.valueOf(bVar.g()));
        contentValues.put("downloadLocation", Long.valueOf(bVar.a()));
        contentValues.put("downloadStatus", Integer.valueOf(bVar.b()));
        if (c(bVar.f())) {
            this.f47110b.update("t_ubixad_download_info", contentValues, "id = ?", new String[]{bVar.f()});
        } else {
            this.f47110b.insert("t_ubixad_download_info", null, contentValues);
        }
    }

    public com.ubix.ssp.ad.e.s.g.b b(String str) {
        Cursor cursorQuery = this.f47110b.query("t_ubixad_download_info", null, " id = ? ", new String[]{str}, null, null, null);
        com.ubix.ssp.ad.e.s.g.b bVar = null;
        while (cursorQuery.moveToNext()) {
            bVar = new com.ubix.ssp.ad.e.s.g.b();
            bVar.d(cursorQuery.getString(cursorQuery.getColumnIndex("id")));
            bVar.a(cursorQuery.getString(cursorQuery.getColumnIndex("downloadUrl")));
            bVar.c(cursorQuery.getString(cursorQuery.getColumnIndex("filePath")));
            bVar.b(cursorQuery.getLong(cursorQuery.getColumnIndex("size")));
            bVar.a(cursorQuery.getLong(cursorQuery.getColumnIndex("downloadLocation")));
            bVar.b(cursorQuery.getInt(cursorQuery.getColumnIndex("downloadStatus")));
            if (!new File(bVar.e()).exists()) {
                a(str);
                return null;
            }
        }
        cursorQuery.close();
        return bVar;
    }

    public void a(String str) {
        if (c(str)) {
            this.f47110b.delete("t_ubixad_download_info", "id = ?", new String[]{str});
        }
    }
}
