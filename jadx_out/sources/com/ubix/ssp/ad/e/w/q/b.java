package com.ubix.ssp.ad.e.w.q;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.ubix.ssp.ad.e.a0.u;

/* loaded from: classes5.dex */
public class b extends SQLiteOpenHelper {
    public b(Context context) {
        super(context, "UbixSdk.db", (SQLiteDatabase.CursorFactory) null, 10001);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE t_ubixad_admeta_cache(id INTEGER PRIMARY KEY ,ad_id VARCHAR(255), request_id VARCHAR(255), ad_type INTEGER, ad_appid VARCHAR(48), ad_slotid VARCHAR(48), ad_data TEXT, expirationTimestamp LONG, status INTEGER, createTime LONG)");
        sQLiteDatabase.execSQL("CREATE TABLE t_ubixinit_admeta_cache(id INTEGER PRIMARY KEY ,ad_appid VARCHAR(48), init_data TEXT, createTime LONG)");
        sQLiteDatabase.execSQL("CREATE TABLE t_ubixad_dp_admeta_predict(tag_id INTEGER PRIMARY KEY ,is_popup INTEGER, is_allowed INTEGER, is_launched INTEGER, is_returned INTEGER, predict_value TEXT, extra TEXT, duration LONG, update_time LONG)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        try {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS t_ubixad_admeta_cache");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS t_ubixinit_admeta_cache");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS t_ubixad_dp_admeta_predict");
            onCreate(sQLiteDatabase);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        if (i2 == i3) {
            u.b("onUpgrade", " not " + i2);
            return;
        }
        u.b("onUpgrade", " " + i2);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS t_ubixad_admeta_cache");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS t_ubixinit_admeta_cache");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS t_ubixad_dp_admeta_predict");
        onCreate(sQLiteDatabase);
    }
}
