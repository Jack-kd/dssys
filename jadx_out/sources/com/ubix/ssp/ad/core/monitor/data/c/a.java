package com.ubix.ssp.ad.core.monitor.data.c;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.ubix.ssp.ad.core.monitor.data.UbixDataContentProvider;
import com.ubix.ssp.ad.e.w.h;
import com.ubix.ssp.ad.e.w.n;
import java.io.File;
import org.json.JSONObject;

/* loaded from: classes5.dex */
abstract class a {

    /* renamed from: a, reason: collision with root package name */
    String f45721a = "EventDataOperation";

    /* renamed from: b, reason: collision with root package name */
    UbixDataContentProvider f45722b;

    /* renamed from: c, reason: collision with root package name */
    private final File f45723c;

    /* renamed from: d, reason: collision with root package name */
    private Context f45724d;

    public a(Context context) {
        UbixDataContentProvider ubixDataContentProvider = new UbixDataContentProvider();
        this.f45722b = ubixDataContentProvider;
        this.f45724d = context;
        ubixDataContentProvider.onCreate(context);
        this.f45723c = context.getDatabasePath("ubix_sdk");
    }

    public int a(Uri uri) {
        if (a()) {
            h.b(this.f45721a, "There is not enough space left on the device to store events, so will delete 100 oldest events");
            String[] strArrA = a(uri, 100);
            if (strArrA == null) {
                return -2;
            }
            a(uri, strArrA[0]);
            if (b(uri) <= 0) {
                return -2;
            }
        }
        return 0;
    }

    public abstract int a(Uri uri, JSONObject jSONObject);

    public abstract String[] a(Uri uri, int i2);

    public int b(Uri uri) {
        return a(uri, null, null, null, null);
    }

    public int a(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.f45722b.query(uri, strArr, str, strArr2, str2);
            } catch (Exception e2) {
                h.a(e2);
                if (cursorQuery == null) {
                    return 0;
                }
            }
            if (cursorQuery != null) {
                int count = cursorQuery.getCount();
                cursorQuery.close();
                return count;
            }
            if (cursorQuery == null) {
                return 0;
            }
            cursorQuery.close();
            return 0;
        } finally {
        }
    }

    private long a(Context context) {
        try {
            return n.a(context).i();
        } catch (Exception e2) {
            h.a(e2);
            return com.anythink.china.a.c.f1405z;
        }
    }

    public String a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            int iLastIndexOf = str.lastIndexOf("\t");
            if (iLastIndexOf <= -1) {
                return str;
            }
            String strReplaceFirst = str.substring(iLastIndexOf).replaceFirst("\t", "");
            str = str.substring(0, iLastIndexOf);
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(strReplaceFirst)) {
                if (strReplaceFirst.equals(String.valueOf(str.hashCode()))) {
                    return str;
                }
            }
            return "";
        } catch (Exception e2) {
            h.a(e2);
            return str;
        }
    }

    public void a(Uri uri, String str) {
        try {
            if ("DB_DELETE_ALL".equals(str)) {
                this.f45722b.delete(uri, null, null);
            } else {
                this.f45722b.delete(uri, "_id <= ?", new String[]{str});
            }
        } catch (Exception e2) {
            h.a(e2);
        }
    }

    private boolean a() {
        return this.f45723c.exists() && this.f45723c.length() >= a(this.f45724d);
    }
}
