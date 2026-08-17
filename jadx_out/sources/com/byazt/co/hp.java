package com.byazt.co;

import android.content.ContentValues;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.byazt.kw.e;
import com.umeng.analytics.pro.bz;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 2177, 28})
/* loaded from: classes2.dex */
public abstract class hp<T> {
    public final String hp = bz.f48985d;

    /* renamed from: l, reason: collision with root package name */
    public final String f18950l;

    public hp(String str) {
        this.f18950l = str;
    }

    public abstract ContentValues hp(T t2);

    public abstract HashMap<String, String> hp();

    public void hp(SQLiteDatabase sQLiteDatabase) throws SQLException {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("CREATE TABLE ");
            sb.append(this.f18950l);
            sb.append(" (_id INTEGER PRIMARY KEY AUTOINCREMENT, ");
            HashMap<String, String> mapHp = hp();
            if (mapHp != null) {
                for (String str : mapHp.keySet()) {
                    sb.append(str);
                    sb.append(" ");
                    sb.append(mapHp.get(str));
                    sb.append(",");
                }
                sb.delete(sb.length() - 1, sb.length());
                sb.append(")");
                sQLiteDatabase.execSQL(sb.toString());
            }
        } catch (Exception unused) {
        }
    }

    public void insert(SQLiteDatabase sQLiteDatabase, T t2) {
        if (sQLiteDatabase == null || t2 == null) {
            return;
        }
        try {
            sQLiteDatabase.insert(this.f18950l, null, hp((hp<T>) t2));
        } catch (Exception e2) {
            e.l(e2);
        }
    }
}
