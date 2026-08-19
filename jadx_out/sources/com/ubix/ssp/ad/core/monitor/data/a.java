package com.ubix.ssp.ad.core.monitor.data;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.ubix.ssp.ad.e.w.h;
import com.umeng.analytics.pro.g;

/* loaded from: classes5.dex */
public class a extends SQLiteOpenHelper {

    /* renamed from: a, reason: collision with root package name */
    private static final String f45711a = String.format("CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER NOT NULL);", g.ax, "data", "created_at");

    /* renamed from: b, reason: collision with root package name */
    private static final String f45712b = String.format("CREATE INDEX IF NOT EXISTS time_idx ON %s (%s);", g.ax, "created_at");

    /* renamed from: c, reason: collision with root package name */
    private static final String f45713c = String.format("CREATE TABLE %s (%s TEXT PRIMARY KEY, %s INTEGER)", "t_channel", "event_name", "result");

    public a(Context context) {
        super(context, "ubix_sdk", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        h.b("----.SQLiteOpenHelper", "Creating a new UbixDataDBHelper Analytics DB");
        sQLiteDatabase.execSQL(f45711a);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }
}
