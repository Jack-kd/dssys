package com.byazt.ka;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.byazt.bs.eb;
import com.byazt.bs.j;
import com.byazt.jw.a;
import java.util.ArrayList;

@com.byazt.kj.hp(hp = {0, 1, 673, 28})
/* loaded from: classes2.dex */
public class hp extends SQLiteOpenHelper {
    public final Context hp;

    /* renamed from: l, reason: collision with root package name */
    public a f22004l;

    public hp(Context context, a aVar) {
        super(new com.byazt.rz.hp(context), "ttadlog.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.hp = context;
        this.f22004l = aVar;
    }

    private void hp(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL(com.byazt.bs.a.j(this.f22004l.l()));
        sQLiteDatabase.execSQL(j.l(this.f22004l.hp()));
        sQLiteDatabase.execSQL(eb.j(this.f22004l.j()));
        sQLiteDatabase.execSQL(com.byazt.bs.hp.l(this.f22004l.w()));
        sQLiteDatabase.execSQL(com.byazt.hjr.a.l());
    }

    private ArrayList<String> jx(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("select name from sqlite_master where type='table' order by name", null);
            if (cursorRawQuery != null) {
                while (cursorRawQuery.moveToNext()) {
                    String string = cursorRawQuery.getString(0);
                    if (!string.equals("android_metadata") && !string.equals("sqlite_sequence")) {
                        arrayList.add(string);
                    }
                }
                cursorRawQuery.close();
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    private void l(SQLiteDatabase sQLiteDatabase) throws SQLException {
        ArrayList<String> arrayListJx = jx(sQLiteDatabase);
        if (arrayListJx == null || arrayListJx.size() <= 0) {
            return;
        }
        int size = arrayListJx.size();
        int i2 = 0;
        while (i2 < size) {
            String str = arrayListJx.get(i2);
            i2++;
            sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", str));
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            hp(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        try {
            if (i2 <= i3) {
                hp(sQLiteDatabase);
            } else {
                l(sQLiteDatabase);
                hp(sQLiteDatabase);
            }
        } catch (Throwable unused) {
        }
    }
}
