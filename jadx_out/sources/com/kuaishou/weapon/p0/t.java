package com.kuaishou.weapon.p0;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class t {

    /* renamed from: E, reason: collision with root package name */
    private static t f31258E = null;

    /* renamed from: a, reason: collision with root package name */
    public static final String f31259a = "k";

    /* renamed from: b, reason: collision with root package name */
    public static final String f31260b = "p";

    /* renamed from: c, reason: collision with root package name */
    public static final String f31261c = "v";

    /* renamed from: d, reason: collision with root package name */
    public static final String f31262d = "l";

    /* renamed from: e, reason: collision with root package name */
    public static final String f31263e = "i";

    /* renamed from: f, reason: collision with root package name */
    public static final String f31264f = "a";

    /* renamed from: g, reason: collision with root package name */
    public static final String f31265g = "s";

    /* renamed from: h, reason: collision with root package name */
    public static final String f31266h = "n";

    /* renamed from: i, reason: collision with root package name */
    public static final String f31267i = "u";

    /* renamed from: j, reason: collision with root package name */
    public static final String f31268j = "c";

    /* renamed from: k, reason: collision with root package name */
    public static final String f31269k = "r";

    /* renamed from: l, reason: collision with root package name */
    public static final String f31270l = "b";

    /* renamed from: m, reason: collision with root package name */
    public static final String f31271m = "m";

    /* renamed from: n, reason: collision with root package name */
    public static final String f31272n = "el";

    /* renamed from: o, reason: collision with root package name */
    public static final String f31273o = "ail";

    /* renamed from: p, reason: collision with root package name */
    public static final String f31274p = "aps";

    /* renamed from: q, reason: collision with root package name */
    public static final String f31275q = "dp";

    /* renamed from: r, reason: collision with root package name */
    public static final String f31276r = "pcn";

    /* renamed from: s, reason: collision with root package name */
    public static final String f31277s = "pst";

    /* renamed from: t, reason: collision with root package name */
    public static final String f31278t = "d";

    /* renamed from: u, reason: collision with root package name */
    public static final String f31279u = "at";

    /* renamed from: v, reason: collision with root package name */
    public static final String f31280v = "dm";

    /* renamed from: w, reason: collision with root package name */
    public static final String f31281w = "rm";

    /* renamed from: x, reason: collision with root package name */
    public static final String f31282x = "pc";

    /* renamed from: y, reason: collision with root package name */
    public static final String f31283y = "cbl";

    /* renamed from: B, reason: collision with root package name */
    private a f31285B;

    /* renamed from: C, reason: collision with root package name */
    private SQLiteDatabase f31286C;

    /* renamed from: D, reason: collision with root package name */
    private Context f31287D;

    /* renamed from: z, reason: collision with root package name */
    private int f31288z = 1;

    /* renamed from: A, reason: collision with root package name */
    private String f31284A = "create table wp(k INTEGER PRIMARY KEY ON CONFLICT ABORT,p TEXT UNIQUE ON CONFLICT ABORT,v TEXT,n INTEGER,s INTEGER,i INTEGER,u INTEGER,el INTEGER,c INTEGER,r INTEGER,aps INTEGER,dp TEXT,pcn TEXT,b TEXT,m TEXT,ail BLOB,pst INTEGER,d INTEGER,at INTEGER,dm TEXT,rm INTEGER,l TEXT,pc INTEGER DEFAULT -1,a TEXT,cbl INTEGER)";

    public class a extends SQLiteOpenHelper {
        public a(Context context) {
            super(context, bg.f30870p, (SQLiteDatabase.CursorFactory) null, t.this.f31288z);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.execSQL(t.this.f31284A);
            } catch (Throwable unused) {
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
            if (i2 >= 3 || i3 < 3) {
                return;
            }
            try {
                sQLiteDatabase.beginTransaction();
                try {
                    sQLiteDatabase.execSQL("ALTER TABLE wp ADD COLUMN pc INTEGER  DEFAULT -1");
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                } catch (Throwable unused) {
                    sQLiteDatabase.endTransaction();
                }
            } catch (Throwable unused2) {
            }
        }
    }

    private t(Context context) {
        this.f31287D = context.getApplicationContext();
        this.f31285B = new a(context.getApplicationContext());
        try {
            if (context.getFilesDir().getParentFile().exists()) {
                this.f31286C = this.f31285B.getWritableDatabase();
            }
        } catch (Throwable unused) {
        }
    }

    public int c(int i2) {
        Cursor cursorQuery;
        int i3 = 0;
        try {
            cursorQuery = this.f31286C.query(bg.f30871q, new String[]{"n"}, "k=" + i2, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        i3 = cursorQuery.getInt(cursorQuery.getColumnIndex("n"));
                    }
                } catch (Throwable unused) {
                    if (cursorQuery != null && !cursorQuery.isClosed()) {
                        cursorQuery.close();
                    }
                    return 0;
                }
            }
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
            return i3;
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
    }

    public boolean d(int i2) {
        Cursor cursorQuery;
        boolean z2 = false;
        try {
            cursorQuery = this.f31286C.query(bg.f30871q, new String[]{"s"}, "k=" + i2, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        if (cursorQuery.getInt(cursorQuery.getColumnIndex("s")) == 1) {
                            z2 = true;
                        }
                    }
                } catch (Throwable unused) {
                    if (cursorQuery != null && !cursorQuery.isClosed()) {
                        cursorQuery.close();
                    }
                    return false;
                }
            }
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
            return z2;
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
    }

    public static synchronized t a(Context context) {
        try {
            if (f31258E == null) {
                f31258E = new t(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f31258E;
    }

    public boolean b(int i2) {
        Cursor cursorQuery;
        boolean z2 = false;
        try {
            cursorQuery = this.f31286C.query(bg.f30871q, new String[]{"p"}, "k=" + i2, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        z2 = true;
                    }
                } catch (Throwable unused) {
                    if (cursorQuery != null && !cursorQuery.isClosed()) {
                        cursorQuery.close();
                    }
                    return false;
                }
            }
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
            return z2;
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
    }

    public long a(s sVar) {
        if (sVar == null) {
            return 0L;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("n", Integer.valueOf(sVar.f31234b));
        contentValues.put(f31274p, Integer.valueOf(sVar.f31248p));
        contentValues.put("p", sVar.f31235c);
        contentValues.put("a", sVar.f31237e);
        contentValues.put("l", sVar.f31240h);
        contentValues.put("v", sVar.f31236d);
        contentValues.put(f31275q, sVar.f31246n);
        contentValues.put("a", sVar.f31237e);
        contentValues.put(f31276r, sVar.f31247o);
        contentValues.put(f31277s, Long.valueOf(sVar.f31251s));
        contentValues.put(f31281w, Integer.valueOf(sVar.f31255w));
        contentValues.put("at", Integer.valueOf(sVar.f31249q));
        contentValues.put(f31282x, Integer.valueOf(sVar.f31256x));
        contentValues.put(f31283y, Integer.valueOf(sVar.f31257y ? 1 : 0));
        if (!TextUtils.isEmpty(sVar.f31242j)) {
            contentValues.put(f31280v, sVar.f31242j);
        }
        try {
            if (b(sVar.f31233a)) {
                SQLiteDatabase sQLiteDatabase = this.f31286C;
                return sQLiteDatabase.update(bg.f30871q, contentValues, "k=" + sVar.f31233a, null);
            }
            contentValues.put("k", Integer.valueOf(sVar.f31233a));
            return this.f31286C.insert(bg.f30871q, null, contentValues);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public void b() {
        ArrayList arrayList = new ArrayList();
        for (s sVar : a()) {
            if (!dl.a(sVar.f31237e)) {
                arrayList.add(sVar);
            }
        }
        try {
            r rVarA = r.a();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                s sVar2 = (s) obj;
                if (rVarA != null) {
                    rVarA.a(sVar2.f31237e);
                }
                this.f31286C.delete(bg.f30871q, "k=" + sVar2.f31233a, null);
                List<Integer> list = r.f31225b;
                if (list != null && !list.contains(Integer.valueOf(sVar2.f31233a))) {
                    dl.c(this.f31287D.getFilesDir().getCanonicalPath() + bg.f30864j + sVar2.f31233a);
                }
                if (rVarA.b() != null && rVarA.b().get(sVar2.f31235c) != null) {
                    dl.c(this.f31287D.getFileStreamPath(sVar2.f31235c).getAbsolutePath());
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void c() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("n", (Integer) 0);
        try {
            this.f31286C.update(bg.f30871q, contentValues, "n=-1", null);
        } catch (Throwable unused) {
        }
    }

    public void d() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("u", (Integer) 0);
        try {
            this.f31286C.update(bg.f30871q, contentValues, "u=1", null);
        } catch (Throwable unused) {
        }
    }

    public void c(int i2, int i3) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(f31282x, Integer.valueOf(i3));
            this.f31286C.update(bg.f30871q, contentValues, "k=" + i2, null);
        } catch (Throwable unused) {
        }
    }

    public List<s> a() {
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        try {
            cursorQuery = this.f31286C.query(bg.f30871q, null, null, null, null, null, null);
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    try {
                        s sVar = new s();
                        sVar.f31233a = cursorQuery.getInt(cursorQuery.getColumnIndex("k"));
                        sVar.f31235c = cursorQuery.getString(cursorQuery.getColumnIndex("p"));
                        sVar.f31237e = cursorQuery.getString(cursorQuery.getColumnIndex("a"));
                        sVar.f31240h = cursorQuery.getString(cursorQuery.getColumnIndex("l"));
                        sVar.f31236d = cursorQuery.getString(cursorQuery.getColumnIndex("v"));
                        sVar.f31251s = cursorQuery.getLong(cursorQuery.getColumnIndex(f31277s));
                        sVar.f31252t = cursorQuery.getInt(cursorQuery.getColumnIndex("d"));
                        sVar.f31255w = cursorQuery.getInt(cursorQuery.getColumnIndex(f31281w));
                        sVar.f31256x = cursorQuery.getInt(cursorQuery.getColumnIndex(f31282x));
                        boolean z2 = true;
                        if (cursorQuery.getInt(cursorQuery.getColumnIndex(f31283y)) != 1) {
                            z2 = false;
                        }
                        sVar.f31257y = z2;
                        arrayList.add(sVar);
                    } catch (Throwable unused) {
                        if (cursorQuery != null && !cursorQuery.isClosed()) {
                            cursorQuery.close();
                        }
                        return arrayList;
                    }
                }
            }
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
                return arrayList;
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        return arrayList;
    }

    public void b(int i2, int i3) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("n", Integer.valueOf(i3));
            this.f31286C.update(bg.f30871q, contentValues, "k=" + i2, null);
        } catch (Throwable unused) {
        }
    }

    public s b(String str) {
        s sVar;
        Cursor cursor = null;
        sVar = null;
        s sVar2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Cursor cursorQuery = this.f31286C.query(bg.f30871q, null, "p=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        sVar = new s();
                        try {
                            sVar.f31233a = cursorQuery.getInt(cursorQuery.getColumnIndex("k"));
                            sVar.f31234b = cursorQuery.getInt(cursorQuery.getColumnIndex("n"));
                            sVar.f31235c = cursorQuery.getString(cursorQuery.getColumnIndex("p"));
                            sVar.f31237e = cursorQuery.getString(cursorQuery.getColumnIndex("a"));
                            sVar.f31240h = cursorQuery.getString(cursorQuery.getColumnIndex("l"));
                            sVar.f31236d = cursorQuery.getString(cursorQuery.getColumnIndex("v"));
                            sVar.f31246n = cursorQuery.getString(cursorQuery.getColumnIndex(f31275q));
                            sVar.f31248p = cursorQuery.getInt(cursorQuery.getColumnIndex(f31274p));
                            sVar.f31247o = cursorQuery.getString(cursorQuery.getColumnIndex(f31276r));
                            sVar.f31249q = cursorQuery.getInt(cursorQuery.getColumnIndex("at"));
                            sVar.f31251s = cursorQuery.getLong(cursorQuery.getColumnIndex(f31277s));
                            sVar.f31252t = cursorQuery.getInt(cursorQuery.getColumnIndex("d"));
                            sVar.f31255w = cursorQuery.getInt(cursorQuery.getColumnIndex(f31281w));
                            sVar.f31242j = cursorQuery.getString(cursorQuery.getColumnIndex(f31280v));
                            sVar.f31256x = cursorQuery.getInt(cursorQuery.getColumnIndex(f31282x));
                            boolean z2 = true;
                            if (cursorQuery.getInt(cursorQuery.getColumnIndex(f31283y)) != 1) {
                                z2 = false;
                            }
                            sVar.f31257y = z2;
                            sVar2 = sVar;
                        } catch (Throwable unused) {
                            cursor = cursorQuery;
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            return sVar;
                        }
                    }
                } catch (Throwable unused2) {
                    sVar = null;
                }
            }
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
            return sVar2;
        } catch (Throwable unused3) {
            sVar = null;
        }
    }

    public s a(int i2) {
        s sVar;
        Cursor cursor = null;
        sVar = null;
        s sVar2 = null;
        try {
            Cursor cursorQuery = this.f31286C.query(bg.f30871q, null, "k=" + i2, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        sVar = new s();
                        try {
                            sVar.f31233a = i2;
                            sVar.f31234b = cursorQuery.getInt(cursorQuery.getColumnIndex("n"));
                            sVar.f31235c = cursorQuery.getString(cursorQuery.getColumnIndex("p"));
                            sVar.f31237e = cursorQuery.getString(cursorQuery.getColumnIndex("a"));
                            sVar.f31240h = cursorQuery.getString(cursorQuery.getColumnIndex("l"));
                            sVar.f31236d = cursorQuery.getString(cursorQuery.getColumnIndex("v"));
                            sVar.f31246n = cursorQuery.getString(cursorQuery.getColumnIndex(f31275q));
                            sVar.f31248p = cursorQuery.getInt(cursorQuery.getColumnIndex(f31274p));
                            sVar.f31247o = cursorQuery.getString(cursorQuery.getColumnIndex(f31276r));
                            sVar.f31249q = cursorQuery.getInt(cursorQuery.getColumnIndex("at"));
                            sVar.f31251s = cursorQuery.getLong(cursorQuery.getColumnIndex(f31277s));
                            sVar.f31252t = cursorQuery.getInt(cursorQuery.getColumnIndex("d"));
                            sVar.f31255w = cursorQuery.getInt(cursorQuery.getColumnIndex(f31281w));
                            sVar.f31242j = cursorQuery.getString(cursorQuery.getColumnIndex(f31280v));
                            sVar.f31256x = cursorQuery.getInt(cursorQuery.getColumnIndex(f31282x));
                            boolean z2 = true;
                            if (cursorQuery.getInt(cursorQuery.getColumnIndex(f31283y)) != 1) {
                                z2 = false;
                            }
                            sVar.f31257y = z2;
                            sVar2 = sVar;
                        } catch (Throwable unused) {
                            cursor = cursorQuery;
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            return sVar;
                        }
                    }
                } catch (Throwable unused2) {
                    sVar = null;
                }
            }
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
            return sVar2;
        } catch (Throwable unused3) {
            sVar = null;
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f31286C.delete(bg.f30871q, "p=?", new String[]{str});
        } catch (Throwable unused) {
        }
    }

    public int a(int i2, int i3) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("u", Integer.valueOf(i3));
            return this.f31286C.update(bg.f30871q, contentValues, "k=" + i2, null);
        } catch (Throwable unused) {
            return 0;
        }
    }
}
