package com.byazt.yv;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.byazt.jw.w;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1455, 28})
/* loaded from: classes3.dex */
public class hp {

    @SuppressLint({"StaticFieldLeak"})
    public static volatile hp jx;
    public l hp;

    /* renamed from: l, reason: collision with root package name */
    public Context f28318l;

    @com.byazt.kj.hp(hp = {0, 1, 1455, 170})
    /* renamed from: com.byazt.yv.hp$hp, reason: collision with other inner class name */
    public class C0434hp extends AbstractCursor {
        private C0434hp() {
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

    private hp(Context context) {
        try {
            this.f28318l = context.getApplicationContext();
            if (this.hp == null) {
                this.hp = new l();
            }
        } catch (Throwable unused) {
        }
    }

    private Context getContext() {
        return this.f28318l;
    }

    public static hp hp(Context context) {
        if (jx == null) {
            synchronized (hp.class) {
                try {
                    if (jx == null) {
                        jx = new hp(context);
                    }
                } finally {
                }
            }
        }
        return jx;
    }

    @com.byazt.kj.hp(hp = {0, 1, 1455, 255})
    public class l {
        public l() {
        }

        private SQLiteDatabase hp(w wVar) {
            boolean zL;
            try {
                SQLiteDatabase sQLiteDatabaseHp = wVar.l().hp(wVar.getContext());
                if (sQLiteDatabaseHp == null || !sQLiteDatabaseHp.isOpen()) {
                    return null;
                }
                sQLiteDatabaseHp.setLockingEnabled(false);
                return sQLiteDatabaseHp;
            } finally {
                if (!zL) {
                }
            }
        }

        private boolean l(w wVar) {
            SQLiteDatabase sQLiteDatabaseHp = hp(wVar);
            return sQLiteDatabaseHp != null && sQLiteDatabaseHp.inTransaction();
        }

        public int delete(w wVar, String str, String str2, String[] strArr) throws Exception {
            try {
                SQLiteDatabase sQLiteDatabaseHp = hp(wVar);
                if (sQLiteDatabaseHp != null) {
                    return sQLiteDatabaseHp.delete(str, str2, strArr);
                }
                return 0;
            } catch (Exception e2) {
                if (l(wVar)) {
                    throw e2;
                }
                return 0;
            }
        }

        public long insert(w wVar, String str, String str2, ContentValues contentValues) throws Exception {
            try {
                SQLiteDatabase sQLiteDatabaseHp = hp(wVar);
                if (sQLiteDatabaseHp != null) {
                    return sQLiteDatabaseHp.insert(str, str2, contentValues);
                }
                return -1L;
            } catch (Exception e2) {
                if (l(wVar)) {
                    throw e2;
                }
                return -1L;
            }
        }

        public Cursor query(w wVar, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            try {
                SQLiteDatabase sQLiteDatabaseHp = hp(wVar);
                if (sQLiteDatabaseHp != null) {
                    return sQLiteDatabaseHp.query(str, strArr, str2, strArr2, str3, str4, str5);
                }
                return null;
            } catch (Throwable th) {
                C0434hp c0434hp = new C0434hp();
                if (l(wVar)) {
                    throw th;
                }
                return c0434hp;
            }
        }

        public int update(w wVar, String str, ContentValues contentValues, String str2, String[] strArr) throws Exception {
            try {
                SQLiteDatabase sQLiteDatabaseHp = hp(wVar);
                if (sQLiteDatabaseHp != null) {
                    return sQLiteDatabaseHp.update(str, contentValues, str2, strArr);
                }
                return 0;
            } catch (Exception e2) {
                if (l(wVar)) {
                    throw e2;
                }
                return 0;
            }
        }

        public synchronized void insert(w wVar, String str, String str2, List<com.byazt.jw.l> list) {
            JSONObject jSONObjectEb;
            SQLiteDatabase sQLiteDatabaseHp = null;
            try {
                try {
                    sQLiteDatabaseHp = hp(wVar);
                    if (sQLiteDatabaseHp != null) {
                        sQLiteDatabaseHp.beginTransaction();
                        ContentValues contentValues = new ContentValues();
                        for (int i2 = 0; i2 < list.size(); i2++) {
                            com.byazt.jw.l lVar = list.get(i2);
                            if (lVar != null && (jSONObjectEb = lVar.eb()) != null) {
                                contentValues.put("id", lVar.jx());
                                String strL = wVar.j().l(jSONObjectEb.toString());
                                if (!TextUtils.isEmpty(strL)) {
                                    contentValues.put(f.a.f3244d, strL);
                                    contentValues.put("gen_time", Long.valueOf(System.currentTimeMillis()));
                                    contentValues.put("retry", (Integer) 0);
                                    contentValues.put("encrypt", (Integer) 1);
                                    sQLiteDatabaseHp.insert(str, str2, contentValues);
                                }
                                contentValues.clear();
                            }
                        }
                        sQLiteDatabaseHp.setTransactionSuccessful();
                        list.size();
                    }
                    if (sQLiteDatabaseHp != null) {
                        sQLiteDatabaseHp.endTransaction();
                    }
                } catch (Exception e2) {
                    list.size();
                    if (l(wVar)) {
                        throw e2;
                    }
                    if (sQLiteDatabaseHp != null) {
                        sQLiteDatabaseHp.endTransaction();
                    }
                }
            } catch (Throwable th) {
                if (sQLiteDatabaseHp != null) {
                    sQLiteDatabaseHp.endTransaction();
                }
                throw th;
            }
        }

        public void hp(w wVar, String str) throws SQLException {
            boolean zL;
            try {
                SQLiteDatabase sQLiteDatabaseHp = hp(wVar);
                if (sQLiteDatabaseHp != null) {
                    sQLiteDatabaseHp.execSQL(str);
                }
            } finally {
                if (!zL) {
                }
            }
        }
    }

    public l hp() {
        return this.hp;
    }
}
