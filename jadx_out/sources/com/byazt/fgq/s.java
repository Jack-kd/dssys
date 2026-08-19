package com.byazt.fgq;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 819, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s extends SQLiteOpenHelper {
    public s(Context context, String str, int i2) {
        super(new com.byazt.rz.hp(context), str, (SQLiteDatabase.CursorFactory) null, i2);
        com.byazt.aw.l.hp("DBHelper", "DatabaseHelper ........");
    }

    private void hp(SQLiteDatabase sQLiteDatabase) {
        com.byazt.aw.l.hp("DBHelper", "initDB........");
        try {
            sQLiteDatabase.execSQL(hp());
        } catch (Throwable unused) {
        }
        try {
            sQLiteDatabase.execSQL(l());
        } catch (Throwable unused2) {
        }
    }

    private static String j() {
        return "ALTER TABLE adevent_applog ADD COLUMN encrypt INTEGER default 0";
    }

    private static String jx() {
        return "ALTER TABLE adevent ADD COLUMN encrypt INTEGER default 0";
    }

    private static String l() {
        return "CREATE TABLE IF NOT EXISTS adevent_applog (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0, encrypt INTEGER default 0)";
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
            com.byazt.aw.l.hp("DBHelper", "onUpgrade....数据库版本升级.....");
            if (i2 == 1 || i2 == 2) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'ad_video_info';");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'show_freqctl';");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'show_pacing';");
            } else if (i2 != 3) {
                return;
            }
            sQLiteDatabase.execSQL(l());
            hp(sQLiteDatabase, i2, i3);
        } catch (Throwable unused) {
        }
    }

    private void hp(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        try {
            sQLiteDatabase.execSQL(jx());
        } catch (Throwable unused) {
        }
        try {
            sQLiteDatabase.execSQL(j());
        } catch (Throwable unused2) {
        }
    }

    private static String hp() {
        return "CREATE TABLE IF NOT EXISTS adevent (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0, encrypt INTEGER default 0)";
    }
}
