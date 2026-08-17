package com.byazt.vh;

import android.content.ContentValues;
import android.database.Cursor;
import com.byazt.dnb.s;
import com.byazt.jz.sz;
import com.byazt.uid.eb;
import com.byazt.xci.cx;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1071, 28})
/* loaded from: classes3.dex */
public class hp {
    public static JSONObject hp() throws JSONException {
        int i2;
        int i3;
        if (cx.hp() <= 0 || cx.l() <= 0) {
            return new JSONObject();
        }
        int iHp = cx.hp();
        Cursor cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "dpl_status_record", null, "create_time >= ?", new String[]{String.valueOf(System.currentTimeMillis() - (iHp * 60000))}, null, null, null);
        int i4 = 0;
        if (cursorQuery == null || !cursorQuery.moveToFirst()) {
            i2 = 0;
            i3 = 0;
        } else {
            i2 = 0;
            i3 = 0;
            do {
                int i5 = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                if (i5 == 1) {
                    i4++;
                } else if (i5 == 2) {
                    i2++;
                } else if (i5 == 3) {
                    i3++;
                }
            } while (cursorQuery.moveToNext());
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("minute", iHp);
            jSONObject.put("trigger_count", i4);
            jSONObject.put("dialog_count", i2);
            jSONObject.put("reject_count", i3);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void l() {
        try {
            com.byazt.jnq.hp.delete(sz.getContext(), "dpl_status_record", "create_time < ?", new String[]{String.valueOf(System.currentTimeMillis() - 604800000)});
        } catch (Throwable unused) {
        }
    }

    public static void hp(final int i2) {
        if (cx.hp() <= 0 || cx.l() <= 0) {
            return;
        }
        s.hp(new eb("recordStatus") { // from class: com.byazt.vh.hp.1
            @Override // java.lang.Runnable
            public void run() {
                ContentValues contentValues = new ContentValues();
                contentValues.put("create_time", Long.valueOf(System.currentTimeMillis()));
                contentValues.put("status", Integer.valueOf(i2));
                com.byazt.jnq.hp.insert(sz.getContext(), "dpl_status_record", contentValues);
            }
        });
    }

    public static void hp(JSONObject jSONObject) throws JSONException {
        if (cx.hp() <= 0 || cx.l() <= 0) {
            return;
        }
        try {
            jSONObject.put("dpl_status_counter", hp());
        } catch (JSONException unused) {
        }
    }
}
