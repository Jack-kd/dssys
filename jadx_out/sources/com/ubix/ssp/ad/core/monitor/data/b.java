package com.ubix.ssp.ad.core.monitor.data;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.ubix.ssp.ad.e.w.h;
import com.umeng.analytics.pro.bz;
import com.umeng.analytics.pro.g;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private ContentResolver f45714a;

    /* renamed from: b, reason: collision with root package name */
    private SQLiteOpenHelper f45715b;

    /* renamed from: c, reason: collision with root package name */
    private Context f45716c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f45717d = true;

    /* renamed from: e, reason: collision with root package name */
    private boolean f45718e = true;

    /* renamed from: f, reason: collision with root package name */
    private int f45719f = 0;

    /* renamed from: g, reason: collision with root package name */
    private int f45720g = KSImageLoader.InnerImageLoadingListener.MAX_DURATION;

    public b(Context context, SQLiteOpenHelper sQLiteOpenHelper) {
        try {
            this.f45715b = sQLiteOpenHelper;
            this.f45716c = context;
            this.f45714a = context.getContentResolver();
        } catch (Exception e2) {
            h.a(e2);
        }
    }

    public int a(String str, String[] strArr) {
        if (!this.f45717d) {
            return 0;
        }
        try {
            SQLiteDatabase sQLiteDatabaseA = a();
            if (sQLiteDatabaseA != null) {
                return sQLiteDatabaseA.delete(g.ax, str, strArr);
            }
        } catch (SQLiteException e2) {
            this.f45717d = false;
            h.a(e2);
        }
        return 0;
    }

    public Uri b(Uri uri, ContentValues contentValues) {
        try {
            SQLiteDatabase sQLiteDatabaseA = a();
            if (sQLiteDatabaseA != null && contentValues.containsKey("data") && contentValues.containsKey("created_at")) {
                return ContentUris.withAppendedId(uri, sQLiteDatabaseA.insert(g.ax, bz.f48985d, contentValues));
            }
            return uri;
        } catch (Exception e2) {
            h.a(e2);
            return uri;
        }
    }

    private boolean b() {
        return this.f45716c.getDatabasePath("ubix_sdk").exists();
    }

    public Cursor a(int i2) {
        Integer numValueOf;
        String str;
        try {
            if (i2 == 2) {
                numValueOf = Integer.valueOf(this.f45719f);
                str = "activity_started_count";
            } else if (i2 == 6) {
                numValueOf = Integer.valueOf(this.f45720g);
                str = "session_interval_time";
            } else if (i2 != 10) {
                numValueOf = null;
                str = null;
            } else {
                numValueOf = Integer.valueOf(this.f45718e ? 1 : 0);
                str = "first_process_start";
            }
            MatrixCursor matrixCursor = new MatrixCursor(new String[]{str});
            matrixCursor.addRow(new Object[]{numValueOf});
            return matrixCursor;
        } catch (Exception e2) {
            h.a(e2);
            return null;
        }
    }

    public Cursor a(String str, String[] strArr, String str2, String[] strArr2, String str3) {
        if (!this.f45717d) {
            return null;
        }
        try {
            SQLiteDatabase sQLiteDatabaseA = a();
            if (sQLiteDatabaseA != null) {
                return sQLiteDatabaseA.query(str, strArr, str2, strArr2, null, null, str3);
            }
        } catch (SQLiteException e2) {
            this.f45717d = false;
            h.a(e2);
        }
        return null;
    }

    private SQLiteDatabase a() {
        try {
            if (!b()) {
                this.f45715b.close();
                this.f45717d = true;
            }
            return this.f45715b.getWritableDatabase();
        } catch (SQLiteException e2) {
            h.a(e2);
            this.f45717d = false;
            return null;
        }
    }

    public Uri a(Uri uri, ContentValues contentValues) {
        try {
            SQLiteDatabase sQLiteDatabaseA = a();
            if (sQLiteDatabaseA != null && contentValues.containsKey("event_name") && contentValues.containsKey("result")) {
                return ContentUris.withAppendedId(uri, sQLiteDatabaseA.insertWithOnConflict("t_channel", null, contentValues, 5));
            }
            return uri;
        } catch (Exception e2) {
            h.a(e2);
            return uri;
        }
    }

    public void a(int i2, Uri uri, ContentValues contentValues) {
        try {
            if (i2 == 2) {
                this.f45719f = contentValues.getAsInteger("activity_started_count").intValue();
            } else {
                if (i2 != 6) {
                    return;
                }
                this.f45720g = contentValues.getAsInteger("session_interval_time").intValue();
                this.f45714a.notifyChange(uri, null);
            }
        } catch (Exception e2) {
            h.a(e2);
        }
    }

    public void a(UriMatcher uriMatcher, String str) {
        try {
            uriMatcher.addURI(str, g.ax, 1);
            uriMatcher.addURI(str, "activity_started_count", 2);
            uriMatcher.addURI(str, "app_start_time", 3);
            uriMatcher.addURI(str, "app_end_data", 4);
            uriMatcher.addURI(str, "app_end_time", 5);
            uriMatcher.addURI(str, "session_interval_time", 6);
            uriMatcher.addURI(str, "events_login_id", 7);
            uriMatcher.addURI(str, "t_channel", 8);
            uriMatcher.addURI(str, "sub_process_flush_data", 9);
            uriMatcher.addURI(str, "first_process_start", 10);
            uriMatcher.addURI(str, "disable_SDK", 11);
            uriMatcher.addURI(str, "remote_config", 12);
        } catch (Exception e2) {
            h.a(e2);
        }
    }
}
