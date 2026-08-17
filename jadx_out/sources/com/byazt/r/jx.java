package com.byazt.r;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.byazt.t.jl;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 572, 30})
/* loaded from: classes3.dex */
public class jx {

    /* renamed from: l, reason: collision with root package name */
    public static volatile jx f25092l;
    public SQLiteDatabase hp;

    private jx() throws JSONException {
        try {
            this.hp = new l(jl.getContext()).getWritableDatabase();
        } catch (Throwable th) {
            com.byazt.u.jx.hp().hp(th, "ClickEventHelper");
        }
    }

    public static jx hp() {
        if (f25092l == null) {
            synchronized (jx.class) {
                try {
                    if (f25092l == null) {
                        f25092l = new jx();
                    }
                } finally {
                }
            }
        }
        return f25092l;
    }

    public boolean jx() {
        return com.byazt.jb.hp.jx().hp("click_event_switch", 0) == 2;
    }

    public boolean l() {
        return com.byazt.jb.hp.jx().hp("click_event_switch", 0) == 1;
    }

    private void jx(long j2, String str) {
        SQLiteDatabase sQLiteDatabase = this.hp;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j2 <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String strOptString = new JSONObject(str).optString("req_id");
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            this.hp.delete("click_event", "time < ? AND ad_id = ? AND req_id = ?", new String[]{String.valueOf(System.currentTimeMillis() - 1209600000), String.valueOf(j2), strOptString});
        } catch (Exception unused) {
        }
    }

    public boolean l(long j2, String str) {
        SQLiteDatabase sQLiteDatabase = this.hp;
        if (sQLiteDatabase != null && sQLiteDatabase.isOpen() && j2 > 0 && !TextUtils.isEmpty(str)) {
            Cursor cursorQuery = null;
            try {
                String strOptString = new JSONObject(str).optString("req_id");
                if (TextUtils.isEmpty(strOptString)) {
                    return false;
                }
                cursorQuery = this.hp.query("click_event", l.hp, "time > ? AND ad_id = ? AND req_id = ?", new String[]{String.valueOf(System.currentTimeMillis() - 1209600000), String.valueOf(j2), strOptString}, null, null, null, null);
                boolean z2 = cursorQuery.getCount() > 0;
                cursorQuery.close();
                return z2;
            } catch (Exception unused) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Throwable th) {
                if (cursorQuery == null) {
                    throw th;
                }
                cursorQuery.close();
                throw th;
            }
        }
        return false;
    }

    public void hp(long j2, String str) {
        String strOptString;
        SQLiteDatabase sQLiteDatabase = this.hp;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j2 <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            strOptString = new JSONObject(str).optString("req_id");
        } catch (Exception unused) {
        }
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("ad_id", Long.valueOf(j2));
        contentValues.put("req_id", strOptString);
        contentValues.put("time", Long.valueOf(System.currentTimeMillis()));
        this.hp.insert("click_event", null, contentValues);
        jx(j2, str);
    }
}
