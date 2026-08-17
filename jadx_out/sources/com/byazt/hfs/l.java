package com.byazt.hfs;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.byazt.bs.eb;
import com.byazt.bs.j;
import com.byazt.hjr.a;
import com.byazt.ymw.u;

@com.byazt.kj.hp(hp = {0, 1, 1355, 34})
/* loaded from: classes2.dex */
public class l extends jx {

    /* renamed from: l, reason: collision with root package name */
    public final String f20696l;

    public l(Context context, int i2) {
        super(context, "ttopensdk.db", i2);
        this.f20696l = "OldSqliteDatabase";
    }

    private void jx(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        sQLiteDatabase.execSQL(a.jx());
        sQLiteDatabase.execSQL(a.j());
    }

    private void l(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        sQLiteDatabase.execSQL(com.byazt.bs.a.w("adevent"));
        sQLiteDatabase.execSQL(j.jx("loghighpriority"));
        sQLiteDatabase.execSQL(eb.w("logstats"));
        sQLiteDatabase.execSQL(com.byazt.bs.hp.jx("logstatsbatch"));
        jx(sQLiteDatabase, i2, i3);
    }

    @Override // com.byazt.hfs.jx
    public void hp(SQLiteDatabase sQLiteDatabase, Context context) throws SQLException {
        com.byazt.lf.l.jx.get();
        sQLiteDatabase.execSQL(com.byazt.bs.a.j("adevent"));
        sQLiteDatabase.execSQL(j.l("loghighpriority"));
        sQLiteDatabase.execSQL(eb.j("logstats"));
        sQLiteDatabase.execSQL(com.byazt.bs.hp.l("logstatsbatch"));
        sQLiteDatabase.execSQL(a.l());
        sQLiteDatabase.execSQL(com.byazt.ir.l.jx());
        sQLiteDatabase.execSQL(com.byazt.oz.jx.jx());
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS setting_base_info (_id INTEGER PRIMARY KEY,value TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS setting_global_info (_id INTEGER PRIMARY KEY,value TEXT)");
        sQLiteDatabase.execSQL(com.byazt.ca.jx.jx());
    }

    @Override // com.byazt.hfs.jx
    public void hp(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        while (i2 < i3) {
            switch (i2) {
                case 1:
                    l(sQLiteDatabase, i2, i3);
                    break;
                case 2:
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'ad_video_info';");
                    l(sQLiteDatabase, i2, i3);
                    break;
                case 3:
                    sQLiteDatabase.execSQL(eb.j("logstats"));
                    l(sQLiteDatabase, i2, i3);
                    break;
                case 4:
                    sQLiteDatabase.execSQL(com.byazt.ir.l.jx());
                    l(sQLiteDatabase, i2, i3);
                    break;
                case 5:
                    sQLiteDatabase.execSQL(com.byazt.bs.hp.l("logstatsbatch"));
                    l(sQLiteDatabase, i2, i3);
                    break;
                case 6:
                case 8:
                case 9:
                    l(sQLiteDatabase, i2, i3);
                    break;
                case 7:
                    sQLiteDatabase.execSQL(com.byazt.oz.jx.jx());
                    sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS setting_base_info (_id INTEGER PRIMARY KEY,value TEXT)");
                    sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS setting_global_info (_id INTEGER PRIMARY KEY,value TEXT)");
                    l(sQLiteDatabase, i2, i3);
                    break;
                case 10:
                case 11:
                    try {
                        jx(sQLiteDatabase, i2, i3);
                        break;
                    } catch (Exception e2) {
                        u.l("OldSqliteDatabase", "database onUpgrade error version: " + i2 + ", msg: " + e2.getMessage());
                        break;
                    }
            }
            i2++;
        }
    }
}
