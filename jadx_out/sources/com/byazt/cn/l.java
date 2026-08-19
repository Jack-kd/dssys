package com.byazt.cn;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.byazt.gt.zy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 473, 34})
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public static final com.byazt.cn.hp[] f18936a;
    public static final C0204l[] jx;
    public String eb;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.lxu.j f18938j;

    /* renamed from: w, reason: collision with root package name */
    public final hp f18939w;
    public static final int[] hp = {1};

    /* renamed from: l, reason: collision with root package name */
    public static final HashMap<String, com.byazt.cn.hp> f18937l = new HashMap<>();

    @com.byazt.kj.hp(hp = {0, 1, 473, 123})
    public static class hp extends SQLiteOpenHelper {
        public hp(@Nullable Context context, @Nullable String str, @Nullable SQLiteDatabase.CursorFactory cursorFactory, int i2) {
            super(new com.byazt.rz.hp(context), str, cursorFactory, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.beginTransaction();
                Iterator<com.byazt.cn.hp> it = l.f18937l.values().iterator();
                while (it.hasNext()) {
                    String strJx = it.next().jx();
                    if (strJx != null) {
                        sQLiteDatabase.execSQL(strJx);
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Throwable th) {
                try {
                    com.byazt.gt.e.l(th);
                } finally {
                    zy.hp(sQLiteDatabase);
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
            onUpgrade(sQLiteDatabase, i2, i3);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
            com.byazt.gt.e.j("onUpgrade, " + i2 + ", " + i3, null);
            try {
                sQLiteDatabase.beginTransaction();
                Iterator<com.byazt.cn.hp> it = l.f18937l.values().iterator();
                while (it.hasNext()) {
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + it.next().j());
                }
                sQLiteDatabase.setTransactionSuccessful();
            } finally {
                try {
                    onCreate(sQLiteDatabase);
                } finally {
                }
            }
            onCreate(sQLiteDatabase);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 473, 1376})
    /* renamed from: com.byazt.cn.l$l, reason: collision with other inner class name */
    public static class C0204l {
        public String hp;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f18940l;

        /* JADX INFO: Access modifiers changed from: private */
        public static void l() {
            for (C0204l c0204l : l.jx) {
                c0204l.hp = "";
                c0204l.f18940l = 0;
                c0204l.jx = 0;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(this.jx);
            sb.append("-");
            sb.append(this.hp);
            sb.append("-");
            sb.append(this.f18940l);
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hp(com.byazt.cn.hp hpVar) {
            String strQ = hpVar.q();
            if (strQ == null || strQ.length() <= this.f18940l) {
                return;
            }
            this.hp = hpVar.s();
            this.f18940l = strQ.length();
        }
    }

    static {
        hp(new q());
        hp(new a(true));
        hp(new e());
        hp(new s());
        com.byazt.cn.hp[] hpVarArr = {new jx(), new w(null, false, null), new j("", new JSONObject())};
        f18936a = hpVarArr;
        for (int i2 = 0; i2 < 3; i2++) {
            hp(hpVarArr[i2]);
        }
        jx = new C0204l[]{new C0204l(), new C0204l(), new C0204l()};
    }

    public l(com.byazt.lxu.j jVar) {
        this.f18939w = new hp(jVar.getContext(), "bd_embed_tea_agent.db", null, 30);
        this.f18938j = jVar;
    }

    private String hp(String str, boolean z2) {
        StringBuilder sb = new StringBuilder("SELECT * FROM page WHERE session_id");
        sb.append(z2 ? "='" : "!='");
        sb.append(str);
        sb.append("' ORDER BY ");
        sb.append(z2 ? "session_id," : "");
        sb.append("duration DESC LIMIT 500");
        return sb.toString();
    }

    private String l(String str, boolean z2) {
        StringBuilder sb = new StringBuilder("DELETE FROM page WHERE session_id");
        sb.append(z2 ? "='" : "!='");
        sb.append(str);
        sb.append("'");
        return sb.toString();
    }

    public void setResult(ArrayList<s> arrayList, ArrayList<s> arrayList2, ArrayList<s> arrayList3) {
        SQLiteDatabase writableDatabase;
        SQLiteDatabase sQLiteDatabase = null;
        com.byazt.gt.e.hp("setResult, " + arrayList + ", " + arrayList2, null);
        Iterator<s> it = arrayList2.iterator();
        while (it.hasNext()) {
            s next = it.next();
            if (!arrayList3.contains(next) && Math.abs(System.currentTimeMillis() - next.f18929l) > 864000000) {
                arrayList.add(next);
                it.remove();
            }
        }
        try {
            writableDatabase = this.f18939w.getWritableDatabase();
        } catch (Throwable th) {
            th = th;
        }
        try {
            writableDatabase.beginTransaction();
            int i2 = 0;
            try {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    s sVar = arrayList.get(i3);
                    i3++;
                    s sVar2 = sVar;
                    if (arrayList3.contains(sVar2)) {
                        hp(sVar2, true, writableDatabase, false);
                    } else {
                        writableDatabase.execSQL("DELETE FROM pack WHERE _id=?", new String[]{String.valueOf(sVar2.hp)});
                    }
                }
            } catch (Throwable th2) {
                com.byazt.gt.e.l(th2);
            }
            int size2 = arrayList2.size();
            while (i2 < size2) {
                s sVar3 = arrayList2.get(i2);
                i2++;
                s sVar4 = sVar3;
                if (sVar4.ec != null) {
                    hp((String) null);
                }
                if (!arrayList3.contains(sVar4)) {
                    long j2 = sVar4.hp;
                    int i4 = sVar4.zy + 1;
                    sVar4.zy = i4;
                    writableDatabase.execSQL(hp(j2, i4));
                }
            }
            writableDatabase.setTransactionSuccessful();
            zy.hp(writableDatabase);
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabase = writableDatabase;
            try {
                com.byazt.gt.e.l(th);
            } finally {
                zy.hp(sQLiteDatabase);
            }
        }
    }

    private String hp(com.byazt.cn.hp hpVar, String str, boolean z2, int i2, int i3) {
        StringBuilder sb = new StringBuilder("SELECT * FROM ");
        sb.append(hpVar.j());
        sb.append(" WHERE session_id");
        sb.append(z2 ? "='" : "!='");
        sb.append(str);
        sb.append("' AND event_type='");
        sb.append(i3);
        sb.append("' ORDER BY _id LIMIT ");
        sb.append(i2);
        return sb.toString();
    }

    private String hp(String str, int i2, String str2, boolean z2, long j2) {
        StringBuilder sb = new StringBuilder("DELETE FROM ");
        sb.append(str);
        sb.append(" WHERE session_id");
        sb.append(z2 ? "='" : "!='");
        sb.append(str2);
        sb.append("' AND event_type='");
        sb.append(i2);
        sb.append("' AND _id<=");
        sb.append(j2);
        return sb.toString();
    }

    private String hp(long j2, int i2) {
        return "UPDATE pack SET _fail=" + i2 + " WHERE _id=" + j2;
    }

    private static void hp(com.byazt.cn.hp hpVar) {
        f18937l.put(hpVar.j(), hpVar);
    }

    private boolean hp(String str) {
        com.byazt.gt.e.hp("needLaunch, " + this.eb + ", " + str);
        if (TextUtils.equals(str, this.eb)) {
            return false;
        }
        this.eb = str;
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:87|4|5|94|6|92|7|83|8|(10:11|12|(6:14|85|15|16|104|31)(12:21|81|22|23|(1:25)|26|(1:28)|29|100|30|103|31)|20|98|61|(2:90|63)|53|68|9)|102|38|(1:42)|43|(1:47)|48|96|49|53|68) */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x011d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x011e, code lost:
    
        com.byazt.gt.e.l(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0133 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.util.ArrayList<com.byazt.cn.s> hp(org.json.JSONObject r27) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.cn.l.hp(org.json.JSONObject):java.util.ArrayList");
    }

    private void hp(JSONObject jSONObject, boolean z2, s sVar, SQLiteDatabase sQLiteDatabase) {
        s sVar2 = sVar;
        for (int i2 : hp) {
            JSONArray[] jSONArrayArr = new JSONArray[3];
            long[] jArr = new long[3];
            int iHp = hp(0, sQLiteDatabase, sVar2.f18928j, z2, i2, jSONArrayArr, jArr);
            if (hp(jArr)) {
                while (true) {
                    long[] jArr2 = jArr;
                    int i3 = i2;
                    JSONArray[] jSONArrayArr2 = jSONArrayArr;
                    s sVar3 = sVar2;
                    sVar3.hp(jSONObject, null, null, null, jSONArrayArr2, jArr2, i3);
                    jSONArrayArr = jSONArrayArr2;
                    i2 = i3;
                    jArr = jArr2;
                    sVar2 = sVar3;
                    boolean z3 = z2;
                    SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
                    hp(sVar2, z2, sQLiteDatabase2, true);
                    iHp = iHp;
                    while (iHp < f18936a.length) {
                        iHp = hp(iHp, sQLiteDatabase2, sVar2.f18928j, z3, i2, jSONArrayArr, jArr);
                        if (hp(jArr)) {
                            break;
                        }
                        z3 = z2;
                        sQLiteDatabase2 = sQLiteDatabase;
                    }
                }
            }
        }
    }

    private JSONObject hp(a aVar, JSONObject jSONObject) throws JSONException {
        if (!TextUtils.equals(aVar.zy, this.f18938j.j().jx()) || aVar.jl != this.f18938j.j().l()) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                zy.jx(jSONObject2, jSONObject);
                jSONObject2.put("app_version", aVar.zy);
                jSONObject2.put("version_code", aVar.jl);
                return jSONObject2;
            } catch (JSONException e2) {
                com.byazt.gt.e.l(e2);
            }
        }
        return jSONObject;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008f -> B:13:0x0055). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(org.json.JSONObject r12, com.byazt.cn.a r13, com.byazt.cn.s r14, android.database.sqlite.SQLiteDatabase r15, org.json.JSONArray[] r16, long[] r17, java.util.ArrayList<com.byazt.cn.s> r18) {
        /*
            r11 = this;
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "packCurrentData, "
            r1.<init>(r2)
            java.lang.String r2 = r13.f18928j
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            com.byazt.gt.e.hp(r1)
            java.lang.String r1 = r13.f18928j
            boolean r8 = r11.hp(r1)
            java.lang.String r3 = r13.f18928j
            r4 = 1
            r5 = 0
            r1 = 0
            r0 = r11
            r2 = r15
            r6 = r16
            r7 = r17
            int r9 = r0.hp(r1, r2, r3, r4, r5, r6, r7)
            r6 = r7
            r10 = 0
            if (r8 != 0) goto L32
            boolean r0 = r11.hp(r6)
            if (r0 == 0) goto L54
        L32:
            if (r8 == 0) goto L36
            r2 = r13
            goto L37
        L36:
            r2 = r10
        L37:
            r4 = 0
            r7 = 0
            r3 = 0
            r1 = r12
            r0 = r14
            r5 = r16
            r0.hp(r1, r2, r3, r4, r5, r6, r7)
            com.byazt.cn.hp[] r0 = com.byazt.cn.l.f18936a
            int r0 = r0.length
            if (r9 < r0) goto L58
            com.byazt.cn.hp r0 = r14.clone()
            com.byazt.cn.s r0 = (com.byazt.cn.s) r0
            r0.e()
            r1 = r18
            r1.add(r0)
        L54:
            r8 = r14
        L55:
            r2 = r15
        L56:
            r1 = r9
            goto L60
        L58:
            r0 = r14
        L59:
            r1 = 1
            r2 = r15
            r11.hp(r0, r1, r15, r1)
            r8 = r0
            goto L56
        L60:
            com.byazt.cn.hp[] r0 = com.byazt.cn.l.f18936a
            int r0 = r0.length
            if (r1 >= r0) goto L91
            java.lang.String r3 = r13.f18928j
            r4 = 1
            r5 = 0
            r0 = r11
            r6 = r16
            r7 = r17
            int r9 = r0.hp(r1, r2, r3, r4, r5, r6, r7)
            r6 = r7
            boolean r0 = r11.hp(r6)
            if (r0 == 0) goto L8f
            java.lang.String r0 = r13.f18928j
            boolean r0 = r11.hp(r0)
            if (r0 == 0) goto L83
            r2 = r13
            goto L84
        L83:
            r2 = r10
        L84:
            r4 = 0
            r7 = 0
            r3 = 0
            r1 = r12
            r5 = r16
            r0 = r8
            r0.hp(r1, r2, r3, r4, r5, r6, r7)
            goto L59
        L8f:
            r0 = r8
            goto L55
        L91:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.cn.l.hp(org.json.JSONObject, com.byazt.cn.a, com.byazt.cn.s, android.database.sqlite.SQLiteDatabase, org.json.JSONArray[], long[], java.util.ArrayList):void");
    }

    private void hp(JSONObject jSONObject, a aVar, s sVar, q qVar, e eVar, SQLiteDatabase sQLiteDatabase, JSONArray[] jSONArrayArr, long[] jArr) {
        com.byazt.gt.e.hp("packHistoryData, " + aVar.f18928j);
        JSONArray jSONArrayHp = hp(aVar, true, eVar, qVar, sQLiteDatabase);
        aVar.f18917k = jSONArrayHp.length() == 0;
        int iHp = hp(0, sQLiteDatabase, aVar.f18928j, true, 0, jSONArrayArr, jArr);
        if (aVar.f18917k) {
            sVar.hp(jSONObject, hp(aVar.f18928j) ? aVar : null, null, null, jSONArrayArr, jArr, 0);
        } else {
            sVar.hp(jSONObject, null, eVar, jSONArrayHp, jSONArrayArr, jArr, 0);
        }
        while (true) {
            s sVar2 = sVar;
            SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
            hp(sVar2, true, sQLiteDatabase2, true);
            while (iHp < f18936a.length) {
                iHp = hp(iHp, sQLiteDatabase2, aVar.f18928j, true, 0, jSONArrayArr, jArr);
                if (hp(jArr)) {
                    break;
                }
                sVar2 = sVar;
                sQLiteDatabase2 = sQLiteDatabase;
            }
            return;
            sVar2.hp(jSONObject, null, null, null, jSONArrayArr, jArr, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:21:0x0076). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x008c -> B:11:0x0051). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(org.json.JSONObject r15, com.byazt.cn.a r16, com.byazt.cn.e r17, com.byazt.cn.q r18, com.byazt.cn.s r19, android.database.sqlite.SQLiteDatabase r20, java.lang.String r21, org.json.JSONArray[] r22, long[] r23) {
        /*
            r14 = this;
            r1 = r16
            r6 = r21
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "packLostData, "
            r0.<init>(r2)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            com.byazt.gt.e.hp(r0)
            r1.f18928j = r6
            r8 = 0
            r1.sz = r8
            r9 = r19
            r9.f18928j = r6
            r2 = 0
            r0 = r14
            r3 = r17
            r4 = r18
            r5 = r20
            org.json.JSONArray r10 = r0.hp(r1, r2, r3, r4, r5)
            r11 = r1
            r4 = 0
            r5 = 0
            r1 = 0
            r2 = r20
            r7 = r23
            r3 = r6
            r6 = r22
            int r1 = r0.hp(r1, r2, r3, r4, r5, r6, r7)
            int r0 = r10.length()
            r12 = 1
            if (r0 != 0) goto L42
            r0 = r12
            goto L43
        L42:
            r0 = r8
        L43:
            r11.f18917k = r0
            boolean r0 = r14.hp(r7)
            r13 = 0
            if (r0 != 0) goto L54
            boolean r0 = r11.f18917k
            if (r0 != 0) goto L51
            goto L54
        L51:
            r2 = r20
            goto L76
        L54:
            boolean r0 = r11.f18917k
            if (r0 != 0) goto L5b
            r2 = r17
            goto L5c
        L5b:
            r2 = r13
        L5c:
            if (r0 != 0) goto L63
            r4 = r10
        L5f:
            r3 = r2
            r0 = r9
            r9 = r1
            goto L65
        L63:
            r4 = r13
            goto L5f
        L65:
            r7 = 0
            r2 = 0
            r1 = r15
            r5 = r22
            r6 = r23
            r0.hp(r1, r2, r3, r4, r5, r6, r7)
            r2 = r20
            r14.hp(r0, r8, r2, r12)
            r1 = r9
            r9 = r0
        L76:
            com.byazt.cn.hp[] r0 = com.byazt.cn.l.f18936a
            int r0 = r0.length
            if (r1 >= r0) goto L90
            r4 = 0
            r5 = 0
            r0 = r14
            r3 = r21
            r6 = r22
            r7 = r23
            int r1 = r0.hp(r1, r2, r3, r4, r5, r6, r7)
            boolean r2 = r14.hp(r7)
            if (r2 == 0) goto L51
            r2 = r13
            goto L63
        L90:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.cn.l.hp(org.json.JSONObject, com.byazt.cn.a, com.byazt.cn.e, com.byazt.cn.q, com.byazt.cn.s, android.database.sqlite.SQLiteDatabase, java.lang.String, org.json.JSONArray[], long[]):void");
    }

    private boolean hp(long[] jArr) {
        return jArr[0] > 0 || jArr[1] > 0 || jArr[2] > 0;
    }

    public void hp(s sVar, boolean z2, SQLiteDatabase sQLiteDatabase, boolean z3) {
        boolean z4;
        boolean z5;
        if (sQLiteDatabase == null) {
            sQLiteDatabase = this.f18939w.getWritableDatabase();
            z4 = true;
        } else {
            z4 = false;
        }
        boolean z6 = z4;
        if (z6) {
            try {
                sQLiteDatabase.beginTransaction();
            } catch (Throwable th) {
                try {
                    com.byazt.gt.e.l(th);
                    if (z6) {
                        zy.hp(sQLiteDatabase);
                        return;
                    }
                    return;
                } finally {
                }
            }
        }
        if (z3 && sQLiteDatabase.insert("pack", null, sVar.l((ContentValues) null)) < 0) {
            if (sVar.ec != null) {
                hp((String) null);
            }
            if (z6) {
                zy.hp(sQLiteDatabase);
                return;
            }
            return;
        }
        long j2 = sVar.f18947u;
        if (j2 > 0) {
            z5 = z2;
            sQLiteDatabase.execSQL(hp(NotificationCompat.CATEGORY_EVENT, sVar.f18927e, sVar.f18928j, z5, j2));
        } else {
            z5 = z2;
        }
        long j3 = sVar.vv;
        if (j3 > 0) {
            sQLiteDatabase.execSQL(hp("eventv3", sVar.f18927e, sVar.f18928j, z5, j3));
        }
        long j4 = sVar.f18946n;
        if (j4 > 0) {
            sQLiteDatabase.execSQL(hp("event_misc", sVar.f18927e, sVar.f18928j, z5, j4));
        }
        if (z6) {
            sQLiteDatabase.setTransactionSuccessful();
        }
        if (z6) {
            zy.hp(sQLiteDatabase);
        }
    }

    private int hp(int i2, SQLiteDatabase sQLiteDatabase, String str, boolean z2, int i3, JSONArray[] jSONArrayArr, long[] jArr) {
        C0204l.l();
        int i4 = 0;
        while (i4 < i2) {
            jSONArrayArr[i4] = null;
            jArr[i4] = 0;
            i4++;
        }
        int i5 = 200;
        int i6 = i4;
        while (i5 > 0 && i6 < f18936a.length) {
            hp(sQLiteDatabase, str, i5, i6, z2, jSONArrayArr, jArr, i3);
            int length = jSONArrayArr[i6].length();
            i5 -= length;
            jx[i6].jx = length;
            if (i5 > 0) {
                i6++;
            }
        }
        for (int i7 = i6 + 1; i7 < jSONArrayArr.length; i7++) {
            jSONArrayArr[i7] = null;
            jArr[i7] = 0;
        }
        return i6;
    }

    private void hp(SQLiteDatabase sQLiteDatabase, String str, int i2, int i3, boolean z2, JSONArray[] jSONArrayArr, long[] jArr, int i4) {
        Throwable th;
        com.byazt.cn.hp hpVar = f18936a[i3];
        JSONArray jSONArray = new JSONArray();
        Cursor cursor = null;
        long j2 = 0;
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery(hp(hpVar, str, z2, i2, i4), null);
            for (int i5 = 0; cursorRawQuery.moveToNext() && i5 <= 200; i5++) {
                try {
                    hpVar.hp(cursorRawQuery);
                    jx[i3].hp(hpVar);
                    if (com.byazt.gt.e.f20599l) {
                        com.byazt.gt.e.hp("queryEvent, " + hpVar, null);
                    }
                    jSONArray.put(hpVar.a());
                    long j3 = hpVar.hp;
                    if (j3 > j2) {
                        j2 = j3;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursorRawQuery;
                    try {
                        com.byazt.gt.e.l(th);
                        if (cursor != null) {
                            cursor.close();
                        }
                        jSONArrayArr[i3] = jSONArray;
                        jArr[i3] = j2;
                    } finally {
                    }
                }
            }
            cursorRawQuery.close();
        } catch (Throwable th3) {
            th = th3;
        }
        jSONArrayArr[i3] = jSONArray;
        jArr[i3] = j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00c5 A[PHI: r12 r15 r17 r18
      0x00c5: PHI (r12v2 android.database.Cursor) = (r12v3 android.database.Cursor), (r12v6 android.database.Cursor), (r12v6 android.database.Cursor) binds: [B:46:0x00dd, B:36:0x00ba, B:37:0x00bc] A[DONT_GENERATE, DONT_INLINE]
      0x00c5: PHI (r15v1 long) = (r15v3 long), (r15v5 long), (r15v5 long) binds: [B:46:0x00dd, B:36:0x00ba, B:37:0x00bc] A[DONT_GENERATE, DONT_INLINE]
      0x00c5: PHI (r17v2 java.lang.String) = (r17v4 java.lang.String), (r17v7 java.lang.String), (r17v7 java.lang.String) binds: [B:46:0x00dd, B:36:0x00ba, B:37:0x00bc] A[DONT_GENERATE, DONT_INLINE]
      0x00c5: PHI (r18v1 java.lang.String) = (r18v3 java.lang.String), (r18v5 java.lang.String), (r18v5 java.lang.String) binds: [B:46:0x00dd, B:36:0x00ba, B:37:0x00bc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.json.JSONArray hp(com.byazt.cn.a r22, boolean r23, com.byazt.cn.e r24, com.byazt.cn.q r25, android.database.sqlite.SQLiteDatabase r26) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.cn.l.hp(com.byazt.cn.a, boolean, com.byazt.cn.e, com.byazt.cn.q, android.database.sqlite.SQLiteDatabase):org.json.JSONArray");
    }

    @NonNull
    public ArrayList<s> hp() {
        Cursor cursorRawQuery;
        ArrayList<s> arrayList = new ArrayList<>();
        s sVar = (s) f18937l.get("pack");
        try {
            cursorRawQuery = this.f18939w.getWritableDatabase().rawQuery("SELECT * FROM pack ORDER BY _id DESC LIMIT 8", null);
            while (cursorRawQuery.moveToNext()) {
                try {
                    sVar = (s) sVar.clone();
                    sVar.hp(cursorRawQuery);
                    arrayList.add(sVar);
                } catch (Throwable th) {
                    th = th;
                    try {
                        com.byazt.gt.e.l(th);
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        com.byazt.gt.e.hp("queryPack, " + arrayList, null);
                        return arrayList;
                    } catch (Throwable th2) {
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            cursorRawQuery = null;
        }
        cursorRawQuery.close();
        com.byazt.gt.e.hp("queryPack, " + arrayList, null);
        return arrayList;
    }

    public void hp(@NonNull ArrayList<com.byazt.cn.hp> arrayList) {
        ArrayList arrayList2 = new ArrayList(4);
        ArrayList arrayList3 = new ArrayList(4);
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase writableDatabase = this.f18939w.getWritableDatabase();
            try {
                writableDatabase.beginTransaction();
                int size = arrayList.size();
                int i2 = 0;
                ContentValues contentValuesL = null;
                while (i2 < size) {
                    com.byazt.cn.hp hpVar = arrayList.get(i2);
                    i2++;
                    com.byazt.cn.hp hpVar2 = hpVar;
                    String strJ = hpVar2.j();
                    contentValuesL = hpVar2.l(contentValuesL);
                    hpVar2.hp = writableDatabase.insert(strJ, null, contentValuesL);
                    if (NotificationCompat.CATEGORY_EVENT.equals(hpVar2.j())) {
                        arrayList3.add(hpVar2);
                    } else if ("eventv3".equals(hpVar2.j())) {
                        arrayList3.add(hpVar2);
                    } else if (hpVar2 instanceof a) {
                        arrayList2.add((a) hpVar2);
                    }
                }
                writableDatabase.setTransactionSuccessful();
                zy.hp(writableDatabase);
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = writableDatabase;
                try {
                    com.byazt.gt.e.l(th);
                } finally {
                    zy.hp(sQLiteDatabase);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
