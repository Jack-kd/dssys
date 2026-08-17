package com.byazt.hfs;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.byazt.ymw.u;
import java.util.ArrayList;

@com.byazt.kj.hp(hp = {0, 1, 1355, 30})
/* loaded from: classes2.dex */
public abstract class jx extends SQLiteOpenHelper {
    public final Context hp;

    /* renamed from: l, reason: collision with root package name */
    public final String f20695l;

    public jx(Context context, String str, int i2) {
        super(new com.byazt.rz.hp(context), str, (SQLiteDatabase.CursorFactory) null, i2);
        this.f20695l = "CSJSQLiteOpenHelper";
        this.hp = context;
    }

    private ArrayList<String> l(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("select name from sqlite_master where type='table' order by name", null);
            if (cursorRawQuery != null) {
                while (cursorRawQuery.moveToNext()) {
                    String string = cursorRawQuery.getString(0);
                    if (!TextUtils.equals(string, "android_metadata") && !TextUtils.equals(string, "sqlite_sequence")) {
                        arrayList.add(string);
                    }
                }
                cursorRawQuery.close();
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    public void hp(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            hp(sQLiteDatabase, this.hp);
        } catch (Throwable th) {
            u.l("CSJSQLiteOpenHelper", th.getMessage());
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        if (i2 > i3) {
            hp(sQLiteDatabase);
            hp(sQLiteDatabase, this.hp);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        if (i2 > i3) {
            try {
                hp(sQLiteDatabase);
            } catch (Throwable th) {
                u.l("CSJSQLiteOpenHelper", th.getMessage());
                return;
            }
        }
        hp(sQLiteDatabase, this.hp);
        hp(sQLiteDatabase, i2, i3);
    }

    public void hp(SQLiteDatabase sQLiteDatabase, Context context) {
    }

    public void hp(SQLiteDatabase sQLiteDatabase) throws SQLException {
        ArrayList<String> arrayListL = l(sQLiteDatabase);
        if (arrayListL == null || arrayListL.size() <= 0) {
            return;
        }
        int size = arrayListL.size();
        int i2 = 0;
        while (i2 < size) {
            String str = arrayListL.get(i2);
            i2++;
            sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", str));
        }
    }
}
