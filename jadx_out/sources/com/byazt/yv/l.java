package com.byazt.yv;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.jw.w;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1455, 34})
/* loaded from: classes3.dex */
public class l {
    public static int delete(Context context, String str, String str2, String[] strArr, w wVar) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return hp.hp(context).hp().delete(wVar, str, str2, strArr);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static String hp(Context context, String str, w wVar) {
        if (TextUtils.isEmpty(str)) {
            return "sql is null";
        }
        try {
            hp.hp(context).hp().hp(wVar, Uri.decode(str));
            return "execSql ok";
        } catch (Throwable th) {
            return "exec sql exception:" + th.getMessage();
        }
    }

    public static void insert(Context context, String str, ContentValues contentValues, w wVar) {
        if (contentValues == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            hp.hp(context).hp().insert(wVar, str, (String) null, contentValues);
        } catch (Throwable unused) {
        }
    }

    public static Cursor query(Context context, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, w wVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return hp.hp(context).hp().query(wVar, str, strArr, str2, strArr2, null, null, str5);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int update(Context context, String str, ContentValues contentValues, String str2, String[] strArr, w wVar) {
        if (contentValues != null && !TextUtils.isEmpty(str)) {
            try {
                return hp.hp(context).hp().update(wVar, str, contentValues, str2, strArr);
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    public static void insert(Context context, String str, List<com.byazt.jw.l> list, w wVar) {
        if (list == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            hp.hp(context).hp().insert(wVar, str, (String) null, list);
        } catch (Throwable unused) {
        }
    }
}
