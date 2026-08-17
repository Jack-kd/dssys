package com.byazt.pd;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.byazt.jz.d;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DECODE_SEI_ONCE, 38})
/* loaded from: classes3.dex */
public class j {

    /* renamed from: l, reason: collision with root package name */
    public static final Object f24347l = new Object();
    public SQLiteDatabase hp = null;

    /* renamed from: j, reason: collision with root package name */
    public final String f24348j;
    public final Context jx;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DECODE_SEI_ONCE, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public class hp extends AbstractCursor {
        private hp() {
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String[] getColumnNames() {
            return new String[0];
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getCount() {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public double getDouble(int i2) {
            return 0.0d;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public float getFloat(int i2) {
            return 0.0f;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getInt(int i2) {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public long getLong(int i2) {
            return 0L;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public short getShort(int i2) {
            return (short) 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String getString(int i2) {
            return null;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public boolean isNull(int i2) {
            return true;
        }
    }

    public j(Context context, String str) {
        this.jx = context;
        this.f24348j = str;
    }

    private boolean a() {
        SQLiteDatabase sQLiteDatabase = this.hp;
        return sQLiteDatabase != null && sQLiteDatabase.inTransaction();
    }

    public int delete(String str, String str2, String[] strArr) throws Exception {
        try {
            hp();
            return this.hp.delete(str, str2, strArr);
        } catch (Exception e2) {
            if (a()) {
                throw e2;
            }
            return 0;
        }
    }

    public void hp() {
        boolean zA;
        SQLiteOpenHelper hpVar;
        try {
            SQLiteDatabase sQLiteDatabase = this.hp;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                return;
            }
            synchronized (f24347l) {
                try {
                    SQLiteDatabase sQLiteDatabase2 = this.hp;
                    if (sQLiteDatabase2 == null || !sQLiteDatabase2.isOpen()) {
                        if (TextUtils.equals(this.f24348j, "ttopensdk.db")) {
                            hpVar = new com.byazt.hfs.l(this.jx, d.f21856j >= 7100 ? 13 : 12);
                        } else {
                            hpVar = TextUtils.equals(this.f24348j, "ttopensdk2.db") ? new com.byazt.hfs.hp(this.jx) : null;
                        }
                        if (hpVar != null) {
                            this.hp = hpVar.getWritableDatabase();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } finally {
            if (!zA) {
            }
        }
    }

    public long insert(String str, String str2, ContentValues contentValues) throws Exception {
        try {
            hp();
            return this.hp.insert(str, str2, contentValues);
        } catch (Exception e2) {
            if (a()) {
                throw e2;
            }
            return -1L;
        }
    }

    public void j() {
        hp();
        SQLiteDatabase sQLiteDatabase = this.hp;
        if (sQLiteDatabase == null) {
            return;
        }
        sQLiteDatabase.setTransactionSuccessful();
    }

    public void jx() {
        hp();
        SQLiteDatabase sQLiteDatabase = this.hp;
        if (sQLiteDatabase == null) {
            return;
        }
        sQLiteDatabase.beginTransaction();
    }

    public SQLiteDatabase l() {
        return this.hp;
    }

    public Cursor query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        try {
            hp();
            return this.hp.query(str, strArr, str2, strArr2, str3, str4, str5);
        } catch (Throwable th) {
            hp hpVar = new hp();
            if (a()) {
                throw th;
            }
            return hpVar;
        }
    }

    public int update(String str, ContentValues contentValues, String str2, String[] strArr) throws Exception {
        try {
            hp();
            return this.hp.update(str, contentValues, str2, strArr);
        } catch (Exception e2) {
            if (a()) {
                throw e2;
            }
            return 0;
        }
    }

    public void w() {
        hp();
        SQLiteDatabase sQLiteDatabase = this.hp;
        if (sQLiteDatabase == null) {
            return;
        }
        sQLiteDatabase.endTransaction();
    }

    public void hp(String str) throws SQLException {
        try {
            hp();
            this.hp.execSQL(str);
        } catch (Throwable th) {
            if (a()) {
                throw th;
            }
        }
    }
}
