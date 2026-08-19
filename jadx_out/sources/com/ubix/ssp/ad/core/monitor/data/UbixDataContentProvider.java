package com.ubix.ssp.ad.core.monitor.data;

import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import com.ubix.ssp.ad.e.w.h;
import com.umeng.analytics.pro.g;

/* loaded from: classes5.dex */
public class UbixDataContentProvider {

    /* renamed from: a, reason: collision with root package name */
    private static final UriMatcher f45708a = new UriMatcher(-1);

    /* renamed from: b, reason: collision with root package name */
    private a f45709b;

    /* renamed from: c, reason: collision with root package name */
    private b f45710c;

    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                SQLiteDatabase writableDatabase = this.f45709b.getWritableDatabase();
                writableDatabase.beginTransaction();
                int length = contentValuesArr.length;
                for (ContentValues contentValues : contentValuesArr) {
                    insert(uri, contentValues);
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                return length;
            } catch (SQLiteException e2) {
                h.a(e2);
                return 0;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                sQLiteDatabase.endTransaction();
            }
            throw th;
        }
    }

    public int delete(Uri uri, String str, String[] strArr) {
        try {
            if (1 == f45708a.match(uri)) {
                return this.f45710c.a(str, strArr);
            }
            return 0;
        } catch (Exception e2) {
            h.a(e2);
            return 0;
        }
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        if (contentValues != null && contentValues.size() != 0) {
            try {
                int iMatch = f45708a.match(uri);
                if (iMatch == 1) {
                    return this.f45710c.b(uri, contentValues);
                }
                if (iMatch == 8) {
                    return this.f45710c.a(uri, contentValues);
                }
                this.f45710c.a(iMatch, uri, contentValues);
                return uri;
            } catch (Exception e2) {
                h.a(e2);
            }
        }
        return uri;
    }

    public boolean onCreate(Context context) {
        if (context == null) {
            return true;
        }
        try {
            a aVar = new a(context);
            this.f45709b = aVar;
            b bVar = new b(context, aVar);
            this.f45710c = bVar;
            bVar.a(f45708a, context.getPackageName() + ".UbixDataContentProvider");
            return true;
        } catch (Exception e2) {
            h.a(e2);
            return true;
        }
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            int iMatch = f45708a.match(uri);
            return iMatch == 1 ? this.f45710c.a(g.ax, strArr, str, strArr2, str2) : iMatch == 8 ? this.f45710c.a("t_channel", strArr, str, strArr2, str2) : this.f45710c.a(iMatch);
        } catch (Exception e2) {
            h.a(e2);
            return null;
        }
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
