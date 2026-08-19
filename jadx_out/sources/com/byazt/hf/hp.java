package com.byazt.hf;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.annotation.Nullable;
import com.anythink.core.common.f.a;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

@com.byazt.kj.hp(hp = {0, 1, 751, 28})
/* loaded from: classes2.dex */
public class hp extends SQLiteOpenHelper {
    public static String hp = "hp";

    public hp(@Nullable Context context) {
        super(new com.byazt.rz.hp(context), "mediation_behavior.db", (SQLiteDatabase.CursorFactory) null, 1);
    }

    private void hp(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS gromore_prime_rit_adn_perform (id INTEGER PRIMARY KEY AUTOINCREMENT, adn_name TEXT NOT NULL , prime_rit TEXT NOT NULL , adn_rit TEXT NOT NULL ,ad_action TEXT NOT NULL ,time_stamp LONG DEFAULT 0)");
    }

    private void l(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS gromore_prime_rit_adn_perform ;");
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
            com.byazt.aw.l.hp(hp, "onUpgrade....Database version upgrade.....old:" + i2 + ",new:" + i3);
            if (i2 <= i3) {
                hp(sQLiteDatabase);
                return;
            }
            l(sQLiteDatabase);
            hp(sQLiteDatabase);
            com.byazt.aw.l.hp(hp, "onUpgrade...Reverse installation Database reset - create table.....");
        } catch (Throwable unused) {
        }
    }

    public void l(String str, String[] strArr) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("gromore_prime_rit_adn_perform", str, strArr);
        writableDatabase.close();
    }

    public void hp(ContentValues contentValues) {
        if (contentValues != null) {
            String asString = contentValues.getAsString(MediationConstant.EXTRA_ADN_NAME);
            String asString2 = contentValues.getAsString(MediationConstant.KEY_GM_PRIME_RIT);
            String asString3 = contentValues.getAsString("adn_rit");
            String asString4 = contentValues.getAsString("ad_action");
            Long asLong = contentValues.getAsLong(a.C0051a.f3216m);
            asLong.longValue();
            SQLiteDatabase writableDatabase = getWritableDatabase();
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put(MediationConstant.EXTRA_ADN_NAME, asString);
            contentValues2.put(MediationConstant.KEY_GM_PRIME_RIT, asString2);
            contentValues2.put("adn_rit", asString3);
            contentValues2.put("ad_action", asString4);
            contentValues2.put(a.C0051a.f3216m, asLong);
            if (writableDatabase != null) {
                try {
                    if (writableDatabase.isOpen()) {
                        writableDatabase.insert("gromore_prime_rit_adn_perform", null, contentValues2);
                        writableDatabase.close();
                    }
                } catch (IllegalStateException unused) {
                }
            }
        }
    }

    public Cursor hp(String str, String[] strArr) {
        return getReadableDatabase().query("gromore_prime_rit_adn_perform", null, str, strArr, null, null, null);
    }
}
