package h1;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.SQLException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteStatement;
import android.os.Build;
import androidx.annotation.NonNull;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import j1.C1586c;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* renamed from: h1.k, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1444k {

    /* renamed from: n, reason: collision with root package name */
    public static Boolean f50750n;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f50751a;

    /* renamed from: b, reason: collision with root package name */
    public final String f50752b;

    /* renamed from: c, reason: collision with root package name */
    public final int f50753c;

    /* renamed from: d, reason: collision with root package name */
    public final int f50754d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f50755e;

    /* renamed from: h, reason: collision with root package name */
    public p f50758h;

    /* renamed from: i, reason: collision with root package name */
    public SQLiteDatabase f50759i;

    /* renamed from: l, reason: collision with root package name */
    public Integer f50762l;

    /* renamed from: f, reason: collision with root package name */
    public final List f50756f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final Map f50757g = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    public int f50760j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f50761k = 0;

    /* renamed from: m, reason: collision with root package name */
    public int f50763m = 0;

    public C1444k(Context context, String str, int i2, boolean z2, int i3) {
        this.f50755e = context;
        this.f50752b = str;
        this.f50751a = z2;
        this.f50753c = i2;
        this.f50754d = i3;
    }

    public static /* synthetic */ Cursor f(C1431D c1431d, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        c1431d.a(sQLiteQuery);
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }

    public static boolean j(Context context, String str, boolean z2) {
        try {
            String packageName = context.getPackageName();
            return (Build.VERSION.SDK_INT >= 33 ? context.getPackageManager().getApplicationInfo(packageName, PackageManager.ApplicationInfoFlags.of(128L)) : z(context, packageName, 128)).metaData.getBoolean(str, z2);
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean k(Context context) {
        return j(context, "com.tekartik.sqflite.wal_enabled", false);
    }

    public static void p(String str) {
        SQLiteDatabase.deleteDatabase(new File(str));
    }

    public static boolean y(String str) {
        try {
            return new File(str).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    public static ApplicationInfo z(Context context, String str, int i2) {
        return context.getPackageManager().getApplicationInfo(str, i2);
    }

    public SQLiteDatabase A() {
        return this.f50759i;
    }

    public String B() {
        return "[" + C() + "] ";
    }

    public String C() {
        Thread threadCurrentThread = Thread.currentThread();
        return this.f50753c + "," + threadCurrentThread.getName() + "(" + AbstractC1433F.d(threadCurrentThread) + ")";
    }

    public SQLiteDatabase D() {
        return this.f50759i;
    }

    public void E(Exception exc, j1.e eVar) {
        if (exc instanceof SQLiteCantOpenDatabaseException) {
            eVar.error("sqlite_error", "open_failed " + this.f50752b, null);
            return;
        }
        if (exc instanceof SQLException) {
            eVar.error("sqlite_error", exc.getMessage(), j1.h.a(eVar));
        } else {
            eVar.error("sqlite_error", exc.getMessage(), j1.h.a(eVar));
        }
    }

    public synchronized boolean F() {
        return this.f50760j > 0;
    }

    public final /* synthetic */ void G(j1.e eVar) {
        Boolean boolE = eVar.e();
        boolean z2 = Boolean.TRUE.equals(boolE) && eVar.d();
        if (z2) {
            int i2 = this.f50761k + 1;
            this.f50761k = i2;
            this.f50762l = Integer.valueOf(i2);
        }
        if (!x(eVar)) {
            if (z2) {
                this.f50762l = null;
            }
        } else if (z2) {
            HashMap map = new HashMap();
            map.put("transactionId", this.f50762l);
            eVar.success(map);
        } else {
            if (Boolean.FALSE.equals(boolE)) {
                this.f50762l = null;
            }
            eVar.success(null);
        }
    }

    public void L() {
        if (f50750n == null) {
            Boolean boolValueOf = Boolean.valueOf(k(this.f50755e));
            f50750n = boolValueOf;
            if (boolValueOf.booleanValue() && s.c(this.f50754d)) {
                B();
            }
        }
        this.f50759i = SQLiteDatabase.openDatabase(this.f50752b, null, f50750n.booleanValue() ? 805306368 : com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
    }

    public void M() {
        this.f50759i = SQLiteDatabase.openDatabase(this.f50752b, null, 1, new a());
    }

    public void N(final j1.e eVar) {
        P(eVar, new Runnable() { // from class: h1.d
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f50738b.J(eVar);
            }
        });
    }

    public final void O() {
        while (!this.f50756f.isEmpty() && this.f50762l == null) {
            ((j1.g) this.f50756f.get(0)).a();
            this.f50756f.remove(0);
        }
    }

    public final void P(j1.e eVar, Runnable runnable) {
        Integer numG = eVar.g();
        Integer num = this.f50762l;
        if (num == null) {
            runnable.run();
            return;
        }
        if (numG == null || !(numG.equals(num) || numG.intValue() == -1)) {
            this.f50756f.add(new j1.g(eVar, runnable));
            return;
        }
        runnable.run();
        if (this.f50762l != null || this.f50756f.isEmpty()) {
            return;
        }
        this.f50758h.b(this, new Runnable() { // from class: h1.j
            @Override // java.lang.Runnable
            public final void run() {
                this.f50749b.O();
            }
        });
    }

    public void h(MethodCall methodCall, MethodChannel.Result result) {
        C1586c c1586c;
        String method;
        j1.d dVar = new j1.d(methodCall, result);
        boolean zF = dVar.f();
        boolean zI = dVar.i();
        List list = (List) dVar.a("operations");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c1586c = new C1586c((Map) it.next(), zF);
            method = c1586c.getMethod();
            method.getClass();
            switch (method) {
                case "execute":
                    if (q(c1586c)) {
                        c1586c.q(arrayList);
                        break;
                    } else if (!zI) {
                        c1586c.o(result);
                        return;
                    } else {
                        c1586c.p(arrayList);
                        break;
                    }
                case "insert":
                    if (H(c1586c)) {
                        c1586c.q(arrayList);
                        break;
                    } else if (!zI) {
                        c1586c.o(result);
                        return;
                    } else {
                        c1586c.p(arrayList);
                        break;
                    }
                case "update":
                    if (K(c1586c)) {
                        c1586c.q(arrayList);
                        break;
                    } else if (!zI) {
                        c1586c.o(result);
                        return;
                    } else {
                        c1586c.p(arrayList);
                        break;
                    }
                case "query":
                    if (I(c1586c)) {
                        c1586c.q(arrayList);
                        break;
                    } else if (!zI) {
                        c1586c.o(result);
                        return;
                    } else {
                        c1586c.p(arrayList);
                        break;
                    }
                default:
                    result.error("bad_param", "Batch method '" + method + "' not supported", null);
                    return;
            }
        }
        if (zF) {
            result.success(null);
        } else {
            result.success(arrayList);
        }
    }

    public final void i(SQLiteStatement sQLiteStatement, Object[] objArr) {
        int i2 = 0;
        while (i2 < objArr.length) {
            Object obj = objArr[i2];
            i2++;
            if (obj == null) {
                sQLiteStatement.bindNull(i2);
            } else if (obj instanceof byte[]) {
                sQLiteStatement.bindBlob(i2, (byte[]) obj);
            } else if ((obj instanceof Double) || (obj instanceof Float)) {
                sQLiteStatement.bindDouble(i2, ((Number) obj).doubleValue());
            } else if (obj instanceof Number) {
                sQLiteStatement.bindLong(i2, ((Number) obj).longValue());
            } else if (obj instanceof Boolean) {
                sQLiteStatement.bindLong(i2, ((Boolean) obj).booleanValue() ? 1L : 0L);
            } else {
                sQLiteStatement.bindString(i2, obj.toString());
            }
        }
    }

    public void insert(final j1.e eVar) {
        P(eVar, new Runnable() { // from class: h1.g
            @Override // java.lang.Runnable
            public final void run() throws SQLException {
                this.f50744b.H(eVar);
            }
        });
    }

    public void l() {
        if (!this.f50757g.isEmpty() && s.b(this.f50754d)) {
            B();
            this.f50757g.size();
        }
        this.f50759i.close();
    }

    public final void m(int i2) {
        u uVar = (u) this.f50757g.get(Integer.valueOf(i2));
        if (uVar != null) {
            n(uVar);
        }
    }

    public final void n(u uVar) {
        try {
            int i2 = uVar.f50790a;
            if (s.c(this.f50754d)) {
                B();
            }
            this.f50757g.remove(Integer.valueOf(i2));
            uVar.f50792c.close();
        } catch (Exception unused) {
        }
    }

    public final Map o(Cursor cursor, Integer num) {
        HashMap map = null;
        int columnCount = 0;
        ArrayList arrayList = null;
        while (cursor.moveToNext()) {
            if (map == null) {
                ArrayList arrayList2 = new ArrayList();
                HashMap map2 = new HashMap();
                columnCount = cursor.getColumnCount();
                map2.put("columns", Arrays.asList(cursor.getColumnNames()));
                map2.put("rows", arrayList2);
                arrayList = arrayList2;
                map = map2;
            }
            arrayList.add(AbstractC1433F.a(cursor, columnCount));
            if (num != null && arrayList.size() >= num.intValue()) {
                break;
            }
        }
        return map == null ? new HashMap() : map;
    }

    public final boolean q(j1.e eVar) {
        if (!x(eVar)) {
            return false;
        }
        eVar.success(null);
        return true;
    }

    public void query(@NonNull final j1.e eVar) {
        P(eVar, new Runnable() { // from class: h1.e
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f50740b.I(eVar);
            }
        });
    }

    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public final boolean H(j1.e eVar) throws SQLException {
        C1431D c1431dC = eVar.c();
        if (s.b(this.f50754d)) {
            B();
            Objects.toString(c1431dC);
        }
        try {
            SQLiteStatement sQLiteStatementCompileStatement = D().compileStatement(c1431dC.c());
            i(sQLiteStatementCompileStatement, c1431dC.d());
            long jExecuteInsert = sQLiteStatementCompileStatement.executeInsert();
            if (eVar.f()) {
                eVar.success(null);
                return true;
            }
            eVar.success(Long.valueOf(jExecuteInsert));
            return true;
        } catch (Exception e2) {
            E(e2, eVar);
            return false;
        }
    }

    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public final boolean I(j1.e eVar) throws Throwable {
        Cursor cursorRawQueryWithFactory;
        Integer num = (Integer) eVar.a("cursorPageSize");
        final C1431D c1431dC = eVar.c();
        if (s.b(this.f50754d)) {
            B();
            Objects.toString(c1431dC);
        }
        u uVar = null;
        try {
            cursorRawQueryWithFactory = A().rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: h1.i
                @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
                public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                    return C1444k.f(c1431dC, sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
                }
            }, c1431dC.c(), AbstractC1434a.f50737a, null);
            try {
                try {
                    Map mapO = o(cursorRawQueryWithFactory, num);
                    if (num != null && !cursorRawQueryWithFactory.isLast() && !cursorRawQueryWithFactory.isAfterLast()) {
                        int i2 = this.f50763m + 1;
                        this.f50763m = i2;
                        mapO.put("cursorId", Integer.valueOf(i2));
                        u uVar2 = new u(i2, num.intValue(), cursorRawQueryWithFactory);
                        try {
                            this.f50757g.put(Integer.valueOf(i2), uVar2);
                            uVar = uVar2;
                        } catch (Exception e2) {
                            e = e2;
                            uVar = uVar2;
                            E(e, eVar);
                            if (uVar != null) {
                                n(uVar);
                            }
                            if (uVar != null || cursorRawQueryWithFactory == null) {
                                return false;
                            }
                            cursorRawQueryWithFactory.close();
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            uVar = uVar2;
                            if (uVar == null && cursorRawQueryWithFactory != null) {
                                cursorRawQueryWithFactory.close();
                            }
                            throw th;
                        }
                    }
                    eVar.success(mapO);
                    if (uVar == null && cursorRawQueryWithFactory != null) {
                        cursorRawQueryWithFactory.close();
                    }
                    return true;
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e4) {
            e = e4;
            cursorRawQueryWithFactory = null;
        } catch (Throwable th3) {
            th = th3;
            cursorRawQueryWithFactory = null;
        }
    }

    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public final boolean J(j1.e eVar) throws Throwable {
        boolean z2;
        Integer num = (Integer) eVar.a("cursorId");
        int iIntValue = num.intValue();
        boolean zEquals = Boolean.TRUE.equals(eVar.a("cancel"));
        if (s.c(this.f50754d)) {
            B();
        }
        u uVar = null;
        if (zEquals) {
            m(iIntValue);
            eVar.success(null);
            return true;
        }
        u uVar2 = (u) this.f50757g.get(num);
        boolean z3 = false;
        try {
            if (uVar2 == null) {
                throw new IllegalStateException("Cursor " + iIntValue + " not found");
            }
            Cursor cursor = uVar2.f50792c;
            Map mapO = o(cursor, Integer.valueOf(uVar2.f50791b));
            z2 = (cursor.isLast() || cursor.isAfterLast()) ? false : true;
            if (z2) {
                try {
                    try {
                        mapO.put("cursorId", num);
                    } catch (Exception e2) {
                        e = e2;
                        E(e, eVar);
                        if (uVar2 != null) {
                            n(uVar2);
                        } else {
                            uVar = uVar2;
                        }
                        if (!z2 && uVar != null) {
                            n(uVar);
                        }
                        return false;
                    }
                } catch (Throwable th) {
                    th = th;
                    z3 = z2;
                    if (!z3 && uVar2 != null) {
                        n(uVar2);
                    }
                    throw th;
                }
            }
            eVar.success(mapO);
            if (!z2) {
                n(uVar2);
            }
            return true;
        } catch (Exception e3) {
            e = e3;
            z2 = false;
        } catch (Throwable th2) {
            th = th2;
            if (!z3) {
                n(uVar2);
            }
            throw th;
        }
    }

    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public final boolean K(j1.e eVar) throws SQLException {
        C1431D c1431dC = eVar.c();
        if (s.b(this.f50754d)) {
            B();
            Objects.toString(c1431dC);
        }
        try {
            SQLiteStatement sQLiteStatementCompileStatement = D().compileStatement(c1431dC.c());
            i(sQLiteStatementCompileStatement, c1431dC.d());
            int iExecuteUpdateDelete = sQLiteStatementCompileStatement.executeUpdateDelete();
            if (eVar.f()) {
                eVar.success(null);
                return true;
            }
            eVar.success(Integer.valueOf(iExecuteUpdateDelete));
            return true;
        } catch (Exception e2) {
            E(e2, eVar);
            return false;
        }
    }

    public void update(@NonNull final j1.e eVar) {
        P(eVar, new Runnable() { // from class: h1.f
            @Override // java.lang.Runnable
            public final void run() throws SQLException {
                this.f50742b.K(eVar);
            }
        });
    }

    public synchronized void v(Boolean bool) {
        try {
            if (Boolean.TRUE.equals(bool)) {
                this.f50760j++;
            } else if (Boolean.FALSE.equals(bool)) {
                this.f50760j--;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void w(final j1.e eVar) {
        P(eVar, new Runnable() { // from class: h1.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f50746b.G(eVar);
            }
        });
    }

    public final boolean x(j1.e eVar) throws SQLException {
        C1431D c1431dC = eVar.c();
        if (s.b(this.f50754d)) {
            B();
            Objects.toString(c1431dC);
        }
        Boolean boolE = eVar.e();
        try {
            D().execSQL(c1431dC.c(), c1431dC.d());
            v(boolE);
            return true;
        } catch (Exception e2) {
            E(e2, eVar);
            return false;
        }
    }

    /* renamed from: h1.k$a */
    public class a implements DatabaseErrorHandler {
        public a() {
        }

        @Override // android.database.DatabaseErrorHandler
        public void onCorruption(SQLiteDatabase sQLiteDatabase) {
        }
    }
}
