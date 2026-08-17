package com.beizi.fusion;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class na implements la {

    /* renamed from: a, reason: collision with root package name */
    private SQLiteDatabase f15294a;

    /* renamed from: b, reason: collision with root package name */
    private final String f15295b = g();

    /* renamed from: c, reason: collision with root package name */
    private final List f15296c;

    /* renamed from: d, reason: collision with root package name */
    private final Map f15297d;

    /* renamed from: e, reason: collision with root package name */
    private final b f15298e;

    public class b extends SQLiteOpenHelper {
        private void a(SQLiteDatabase sQLiteDatabase, Map map) {
            if (map == null || map.isEmpty()) {
                return;
            }
            rm.a("IBaseDbHelper", "建表..." + map.size());
            for (Map.Entry entry : map.entrySet()) {
                try {
                    ub ubVar = (ub) ((Class) entry.getKey()).newInstance();
                    if (ubVar.getColumns() != null) {
                        na.this.a(sQLiteDatabase, (String) entry.getValue(), ubVar.getColumns());
                    }
                } catch (IllegalAccessException | InstantiationException e2) {
                    rm.a(e2);
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            rm.a("IBaseDbHelper", "数据库创建...");
            a(sQLiteDatabase, na.this.f15297d);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
            rm.a("IBaseDbHelper", "数据库更新... old " + i2 + " new " + i3);
            if (i2 < i3) {
                a(sQLiteDatabase, na.this.f15297d);
            }
            na.this.a(sQLiteDatabase, i2, i3);
        }

        private b(Context context) {
            super(context, na.this.f15295b, na.this.f(), na.this.e());
            rm.a("IBaseDbHelper", "数据库版本 " + na.this.e() + " 名称 " + na.this.f15295b);
        }
    }

    public na(Context context) {
        Context applicationContext = context.getApplicationContext();
        List listA = a();
        this.f15296c = listA;
        this.f15297d = a(listA);
        b bVar = new b(applicationContext);
        this.f15298e = bVar;
        try {
            this.f15294a = bVar.getWritableDatabase();
        } catch (SQLException unused) {
        }
    }

    private boolean c(ub ubVar) {
        return (ubVar == null || ubVar.getContentValuesStruct() == null || ubVar.getContentValuesStruct().size() <= 0) ? false : true;
    }

    private String g() {
        StringBuilder sb = new StringBuilder();
        String strC = c();
        if (!TextUtils.isEmpty(strC) && strC.lastIndexOf(com.anythink.core.common.d.i.f2495E) > 0) {
            strC = strC.substring(strC.lastIndexOf(com.anythink.core.common.d.i.f2495E) + 1);
        }
        sb.append("scope_");
        sb.append(strC);
        sb.append("_");
        sb.append(com.umeng.analytics.process.a.f49717d);
        return sb.toString();
    }

    public abstract List a();

    public abstract String c();

    public void d() {
        SQLiteDatabase sQLiteDatabase = this.f15294a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.endTransaction();
        }
    }

    public int e() {
        return 4;
    }

    public SQLiteDatabase.CursorFactory f() {
        return null;
    }

    public void h() {
        SQLiteDatabase sQLiteDatabase = this.f15294a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.setTransactionSuccessful();
        }
    }

    public String b(Class cls) {
        return String.format("t_%s_%s", c(), cls.getSimpleName());
    }

    public synchronized int c(Class cls) {
        return a(cls, (String) null, (String[]) null, (String) null);
    }

    public String e(String str) {
        return String.format(" %s %s ? ", str, " < ");
    }

    private Map a(List list) {
        rm.a("IBaseDbHelper", "创建数据库映射..." + list.size());
        if (!list.isEmpty()) {
            HashMap map = new HashMap();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Class cls = (Class) it.next();
                map.put(cls, b(cls));
            }
            return map;
        }
        return new HashMap();
    }

    private boolean b(ub ubVar) {
        if (ubVar != null) {
            return a(ubVar.getClass());
        }
        return false;
    }

    public String c(String str) {
        return String.format("%s BETWEEN ? AND ? ", str);
    }

    public String d(String str) {
        return String.format(" %s %s ? ", str, " = ");
    }

    public void b() {
        SQLiteDatabase sQLiteDatabase = this.f15294a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.beginTransaction();
        }
    }

    public synchronized int b(Class cls, long[] jArr) {
        if (jArr != null) {
            try {
                if (jArr.length > 0) {
                    String[] strArr = new String[jArr.length];
                    for (int i2 = 0; i2 < jArr.length; i2++) {
                        strArr[i2] = String.valueOf(jArr[i2]);
                    }
                    return a(cls, a("id", jArr.length), strArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return -1;
    }

    private boolean a(Class cls) {
        List list;
        return (this.f15294a == null || (list = this.f15296c) == null || !list.contains(cls)) ? false : true;
    }

    @Override // com.beizi.fusion.la
    public synchronized long a(ub ubVar) {
        SQLiteDatabase sQLiteDatabase;
        if (b(ubVar) && c(ubVar) && (sQLiteDatabase = this.f15294a) != null) {
            return sQLiteDatabase.insert((String) this.f15297d.get(ubVar.getClass()), null, ubVar.getContentValuesStruct());
        }
        return -1L;
    }

    public int a(Class cls, String[] strArr, String[] strArr2, List list) {
        if (!a(cls) || list == null || list.isEmpty() || this.f15294a == null) {
            return 0;
        }
        ContentValues contentValues = new ContentValues();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            contentValues.put(strArr[i2], strArr2[i2]);
        }
        String str = "id IN (" + TextUtils.join(",", Collections.nCopies(list.size(), "?")) + ")";
        String[] strArr3 = new String[list.size()];
        for (int i3 = 0; i3 < list.size(); i3++) {
            strArr3[i3] = String.valueOf(list.get(i3));
        }
        return this.f15294a.update((String) this.f15297d.get(cls), contentValues, str, strArr3);
    }

    public String b(String str) {
        return str + " desc";
    }

    public synchronized int a(Class cls, String str, String[] strArr) {
        SQLiteDatabase sQLiteDatabase;
        if (!a(cls) || (sQLiteDatabase = this.f15294a) == null) {
            return -1;
        }
        return sQLiteDatabase.delete((String) this.f15297d.get(cls), str, strArr);
    }

    @Override // com.beizi.fusion.la
    public int a(Class cls, String str, String str2) {
        SQLiteDatabase sQLiteDatabase;
        if (!a(cls) || (sQLiteDatabase = this.f15294a) == null) {
            return -1;
        }
        return sQLiteDatabase.delete((String) this.f15297d.get(cls), e(str), new String[]{str2});
    }

    @Override // com.beizi.fusion.la
    public synchronized int a(Class cls, long j2) {
        return a(cls, d("id"), new String[]{String.valueOf(j2)});
    }

    public synchronized int a(Class cls, long[] jArr) {
        if (jArr == null) {
            return -1;
        }
        if (jArr.length >= 2) {
            Arrays.sort(jArr);
            return a(cls, c("id"), new String[]{String.valueOf(jArr[0]), String.valueOf(jArr[jArr.length - 1])});
        }
        return b(cls, jArr);
    }

    public synchronized long[] a(Class cls, int i2) {
        if (a(cls) && this.f15294a != null) {
            try {
                Cursor cursorQuery = this.f15294a.query((String) this.f15297d.get(cls), new String[]{"id"}, null, null, null, null, null, String.valueOf(i2));
                if (cursorQuery != null) {
                    try {
                        long[] jArr = new long[cursorQuery.getCount()];
                        int i3 = 0;
                        while (cursorQuery.moveToNext()) {
                            int i4 = i3 + 1;
                            jArr[i3] = cursorQuery.getLong(0);
                            i3 = i4;
                        }
                        cursorQuery.close();
                        return jArr;
                    } finally {
                    }
                } else if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (SQLException unused) {
            }
        }
        return null;
    }

    public synchronized int a(Class cls, String str, String[] strArr, String str2) {
        if (a(cls) && this.f15294a != null) {
            try {
                Cursor cursorQuery = this.f15294a.query((String) this.f15297d.get(cls), new String[]{"id"}, str, strArr, null, null, str2, null);
                if (cursorQuery != null) {
                    try {
                        int count = cursorQuery.getCount();
                        cursorQuery.close();
                        return count;
                    } finally {
                    }
                } else if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (SQLException unused) {
            }
        }
        return 0;
    }

    @Override // com.beizi.fusion.la
    public synchronized List a(Class cls, String str) {
        return a(cls, null, null, null, str, -1);
    }

    public synchronized List a(Class cls, String str, String[] strArr, String str2, int i2) {
        return a(cls, null, str, strArr, str2, i2);
    }

    public synchronized List a(Class cls, String[] strArr, String str, String[] strArr2, String str2, int i2) {
        return a(cls, strArr, str, strArr2, null, str2, null, i2);
    }

    public synchronized List a(Class cls, String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, int i2) {
        if (a(cls) && this.f15294a != null) {
            try {
                Cursor cursorQuery = this.f15294a.query((String) this.f15297d.get(cls), strArr, str, strArr2, str2, str4, str3, i2 > 0 ? String.valueOf(i2) : null);
                if (cursorQuery != null) {
                    try {
                        ArrayList arrayList = new ArrayList();
                        while (cursorQuery.moveToNext()) {
                            try {
                                ub ubVar = (ub) cls.newInstance();
                                ubVar.parseFromDb(cursorQuery);
                                arrayList.add(ubVar);
                            } catch (IllegalAccessException | InstantiationException e2) {
                                rm.a(e2);
                            }
                        }
                        cursorQuery.close();
                        return arrayList;
                    } finally {
                    }
                } else if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.beizi.fusion.la
    public String a(String str) {
        return str + " asc";
    }

    public String a(String str, int i2) {
        StringBuilder sb = new StringBuilder(str + " IN ");
        sb.append("(");
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append("?");
            if (i3 < i2 - 1) {
                sb.append(",");
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void a(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        rm.b("IBaseDbHelper", "各自处理 " + i2 + " " + i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        if (a(sQLiteDatabase, str)) {
            rm.a("IBaseDbHelper", "表 " + str + " 已存在, 不再创建");
            return;
        }
        if (sQLiteDatabase == null || strArr == null || strArr.length <= 0) {
            return;
        }
        try {
            rm.a("IBaseDbHelper", "表 " + str + " 创建中...");
            sQLiteDatabase.beginTransaction();
            StringBuilder sb = new StringBuilder();
            sb.append("create table ");
            sb.append(str);
            sb.append("(");
            sb.append("id");
            sb.append(" integer primary key autoincrement, ");
            for (String str2 : strArr) {
                sb.append(" ");
                sb.append(str2);
                sb.append(" nvarchar, ");
            }
            sb.setCharAt(sb.lastIndexOf(","), ')');
            sQLiteDatabase.execSQL(sb.toString());
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Throwable th) {
            try {
                rm.a(th);
            } finally {
                sQLiteDatabase.endTransaction();
            }
        }
    }

    private boolean a(SQLiteDatabase sQLiteDatabase, String str) {
        boolean z2 = false;
        if (sQLiteDatabase != null) {
            Cursor cursorQuery = null;
            try {
                if (sQLiteDatabase.isOpen() && !TextUtils.isEmpty(str)) {
                    cursorQuery = sQLiteDatabase.query("sqlite_master", new String[]{"name"}, "type = ? and name = ?", new String[]{"table", str}, null, null, null);
                    if (cursorQuery != null) {
                        if (cursorQuery.getCount() > 0) {
                            z2 = true;
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return z2;
                }
            } catch (Exception unused) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                    throw th;
                }
                throw th;
            }
        }
        return false;
    }
}
