package com.byazt.hfs;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;

@com.byazt.kj.hp(hp = {0, 1, 1355, 28})
/* loaded from: classes2.dex */
public class hp extends jx {
    public hp(Context context) {
        super(context, "ttopensdk2.db", 4);
    }

    @Override // com.byazt.hfs.jx
    public void hp(SQLiteDatabase sQLiteDatabase, Context context) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS sdk_launch (id INTEGER PRIMARY KEY AUTOINCREMENT,dev1 INTEGER,dev2 INTEGER,dev3 INTEGER,dev4 INTEGER,dev5 INTEGER,dev6 INTEGER,dev7 INTEGER,dev8 INTEGER)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS union_meta_cache (id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT,uuid TEXT,create_time TEXT,meta_data TEXT,save_version TEXT,expire_time TEXT,slot_type TEXT,is_using INTEGER,priority TEXT,ad_index INTEGER)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS meta_req_record_v1 (id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT,appid TEXT,slot_type TEXT,create_time TEXT,status TEXT,cache_type TEXT,event_type TEXT,request_count INTEGER,response_count INTEGER)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS dpl_status_record (id INTEGER PRIMARY KEY AUTOINCREMENT,create_time TEXT,status TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS union_tmax_record (id INTEGER PRIMARY KEY AUTOINCREMENT,load_id TEXT UNIQUE,ad_slot_type INTEGER,ad_slot_id TEXT,loaded_duration INTEGER DEFAULT 0,cached_duration INTEGER DEFAULT 0,shown_duration INTEGER DEFAULT 0,is_shown INTEGER DEFAULT 0,record_time INTEGER DEFAULT 0)");
    }

    @Override // com.byazt.hfs.jx, android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            hp(sQLiteDatabase, this.hp);
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.hfs.jx, android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }

    @Override // com.byazt.hfs.jx, android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        try {
            hp(sQLiteDatabase, this.hp);
        } catch (Exception unused) {
        }
    }
}
