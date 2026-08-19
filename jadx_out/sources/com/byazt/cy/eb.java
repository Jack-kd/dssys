package com.byazt.cy;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.byazt.xq.q;

@com.byazt.kj.hp(hp = {0, 1, 1052, 94})
/* loaded from: classes2.dex */
public class eb {

    /* renamed from: a, reason: collision with root package name */
    public SQLiteStatement f19034a;
    public SQLiteStatement eb;
    public final SQLiteDatabase hp;

    /* renamed from: j, reason: collision with root package name */
    public final String[] f19035j;
    public final String[] jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f19036l;

    /* renamed from: s, reason: collision with root package name */
    public SQLiteStatement f19037s;

    /* renamed from: w, reason: collision with root package name */
    public SQLiteStatement f19038w;

    public eb(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String[] strArr2) {
        this.hp = sQLiteDatabase;
        this.f19036l = str;
        this.jx = strArr;
        this.f19035j = strArr2;
    }

    public SQLiteStatement hp() throws SQLException {
        if (this.f19038w == null) {
            SQLiteStatement sQLiteStatementCompileStatement = this.hp.compileStatement(q.hp("INSERT INTO ", this.f19036l, this.jx));
            synchronized (this) {
                try {
                    if (this.f19038w == null) {
                        this.f19038w = sQLiteStatementCompileStatement;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.f19038w != sQLiteStatementCompileStatement) {
                sQLiteStatementCompileStatement.close();
            }
        }
        return this.f19038w;
    }

    public SQLiteStatement j() throws SQLException {
        if (this.f19037s == null) {
            SQLiteStatement sQLiteStatementCompileStatement = this.hp.compileStatement(q.l(this.f19036l, this.jx, this.f19035j));
            synchronized (this) {
                try {
                    if (this.f19037s == null) {
                        this.f19037s = sQLiteStatementCompileStatement;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.f19037s != sQLiteStatementCompileStatement) {
                sQLiteStatementCompileStatement.close();
            }
        }
        return this.f19037s;
    }

    public SQLiteStatement jx() throws SQLException {
        if (this.f19034a == null) {
            SQLiteStatement sQLiteStatementCompileStatement = this.hp.compileStatement(q.hp(this.f19036l, this.jx, this.f19035j));
            synchronized (this) {
                try {
                    if (this.f19034a == null) {
                        this.f19034a = sQLiteStatementCompileStatement;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.f19034a != sQLiteStatementCompileStatement) {
                sQLiteStatementCompileStatement.close();
            }
        }
        return this.f19034a;
    }

    public SQLiteStatement l() throws SQLException {
        if (this.eb == null) {
            SQLiteStatement sQLiteStatementCompileStatement = this.hp.compileStatement(q.hp(this.f19036l, this.f19035j));
            synchronized (this) {
                try {
                    if (this.eb == null) {
                        this.eb = sQLiteStatementCompileStatement;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.eb != sQLiteStatementCompileStatement) {
                sQLiteStatementCompileStatement.close();
            }
        }
        return this.eb;
    }
}
