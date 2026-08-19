package com.byazt.co;

import android.content.ContentValues;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.byazt.kw.e;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 2177, 34})
/* loaded from: classes2.dex */
public class l extends hp<com.byazt.gs.hp> {
    public l() {
        super("duplicatelog");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hp(android.database.sqlite.SQLiteDatabase r11, java.lang.String r12) {
        /*
            r10 = this;
            r1 = 0
            if (r11 == 0) goto L30
            boolean r0 = android.text.TextUtils.isEmpty(r12)
            if (r0 == 0) goto La
            goto L30
        La:
            java.lang.String r3 = r10.f18950l     // Catch: java.lang.Exception -> L26
            java.lang.String r5 = "path=?"
            java.lang.String[] r6 = new java.lang.String[]{r12}     // Catch: java.lang.Exception -> L26
            r8 = 0
            r9 = 0
            r4 = 0
            r7 = 0
            r2 = r11
            android.database.Cursor r11 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L26
            int r12 = r11.getCount()     // Catch: java.lang.Exception -> L26
            r11.close()     // Catch: java.lang.Exception -> L23
            goto L2c
        L23:
            r0 = move-exception
            r11 = r0
            goto L29
        L26:
            r0 = move-exception
            r11 = r0
            r12 = r1
        L29:
            com.byazt.kw.e.l(r11)
        L2c:
            if (r12 <= 0) goto L30
            r11 = 1
            return r11
        L30:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.co.l.hp(android.database.sqlite.SQLiteDatabase, java.lang.String):boolean");
    }

    @Override // com.byazt.co.hp
    public void insert(SQLiteDatabase sQLiteDatabase, com.byazt.gs.hp hpVar) throws SQLException {
        if (hpVar == null || hp(sQLiteDatabase, hpVar.hp)) {
            return;
        }
        super.insert(sQLiteDatabase, (SQLiteDatabase) hpVar);
        try {
            sQLiteDatabase.execSQL("delete from " + this.f18950l + " where _id in (select _id from " + this.f18950l + " order by insert_time desc limit 1000 offset 500)");
        } catch (Exception e2) {
            e.l(e2);
        }
    }

    @Override // com.byazt.co.hp
    public HashMap<String, String> hp() {
        HashMap<String, String> map = new HashMap<>();
        map.put("path", "TEXT");
        map.put("insert_time", "INTEGER");
        map.put("ext1", "TEXT");
        map.put("ext2", "TEXT");
        return map;
    }

    @Override // com.byazt.co.hp
    public ContentValues hp(com.byazt.gs.hp hpVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("path", hpVar.hp);
        contentValues.put("insert_time", Long.valueOf(hpVar.f20574l));
        return contentValues;
    }
}
