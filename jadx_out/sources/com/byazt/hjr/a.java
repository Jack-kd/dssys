package com.byazt.hjr;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1246, 54})
/* loaded from: classes2.dex */
public class a implements w {
    public com.byazt.jw.w hp;

    /* renamed from: l, reason: collision with root package name */
    public Context f20700l;

    public a(com.byazt.jw.w wVar) {
        this.f20700l = wVar.getContext();
        this.hp = wVar;
    }

    public static String j() {
        return "ALTER TABLE trackurl ADD COLUMN encrypt INTEGER default 0";
    }

    public static String jx() {
        return "ALTER TABLE trackurl ADD COLUMN extra TEXT";
    }

    public static String l() {
        return new StringBuilder("CREATE TABLE IF NOT EXISTS trackurl (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,url TEXT ,replaceholder INTEGER default 0,retry INTEGER default 0,extra TEXT ,encrypt INTEGER default 0)").toString();
    }

    @Override // com.byazt.hjr.w
    public void delete(j jVar) {
        com.byazt.yv.l.delete(this.f20700l, "trackurl", "id=?", new String[]{jVar.l()}, this.hp);
    }

    @Override // com.byazt.hjr.w
    public List<j> hp() {
        JSONObject jSONObject;
        LinkedList linkedList = new LinkedList();
        Cursor cursorQuery = com.byazt.yv.l.query(this.f20700l, "trackurl", null, null, null, null, null, null, this.hp);
        if (cursorQuery != null) {
            while (cursorQuery.moveToNext()) {
                try {
                    try {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("id"));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("url"));
                        boolean z2 = cursorQuery.getInt(cursorQuery.getColumnIndex("replaceholder")) > 0;
                        int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex("retry"));
                        String string3 = cursorQuery.getString(cursorQuery.getColumnIndex("extra"));
                        int i3 = cursorQuery.getInt(cursorQuery.getColumnIndex("encrypt"));
                        if (i3 > 0) {
                            string3 = com.byazt.ymw.hp.jx(string3);
                        }
                        try {
                            jSONObject = new JSONObject(string3);
                        } catch (Exception unused) {
                            jSONObject = null;
                        }
                        linkedList.add(new j(string, string2, z2, i2, jSONObject, i3));
                    } finally {
                        cursorQuery.close();
                    }
                } catch (Throwable unused2) {
                }
            }
        }
        return linkedList;
    }

    @Override // com.byazt.hjr.w
    public void insert(j jVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", jVar.l());
        contentValues.put("url", jVar.jx());
        contentValues.put("replaceholder", Integer.valueOf(jVar.j() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(jVar.w()));
        contentValues.put("extra", com.byazt.ymw.hp.l(jVar.hp().toString()));
        contentValues.put("encrypt", (Integer) 1);
        com.byazt.yv.l.insert(this.f20700l, "trackurl", contentValues, this.hp);
    }

    @Override // com.byazt.hjr.w
    public void update(j jVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", jVar.l());
        contentValues.put("url", jVar.jx());
        contentValues.put("replaceholder", Integer.valueOf(jVar.j() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(jVar.w()));
        contentValues.put("extra", com.byazt.ymw.hp.l(jVar.hp().toString()));
        contentValues.put("encrypt", (Integer) 1);
        com.byazt.yv.l.update(this.f20700l, "trackurl", contentValues, "id=?", new String[]{jVar.l()}, this.hp);
    }
}
