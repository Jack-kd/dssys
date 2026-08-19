package com.byazt.en;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.byazt.jz.sz;
import com.byazt.ktf.j;
import com.byazt.ton.w;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 1164, 28})
/* loaded from: classes2.dex */
public class hp implements j.hp {
    public Context hp;

    private static String a() {
        return w.f25971l + "/t_frequent/";
    }

    private Context getContext() {
        Context context = this.hp;
        return context == null ? sz.getContext() : context;
    }

    public static boolean hp(String str) {
        return hp(str, "checkFrequency");
    }

    public static String j() {
        return j("maxAggRit");
    }

    public static boolean jx(String str) {
        if (sz.getContext() == null) {
            return false;
        }
        try {
            ContentResolver contentResolverW = w();
            if (contentResolverW != null) {
                return "true".equals(contentResolverW.getType(Uri.parse(a() + str)));
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean l(String str) {
        return hp(str, "checkAggFrequency");
    }

    private static ContentResolver w() {
        try {
            if (sz.getContext() != null) {
                return sz.getContext().getContentResolver();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.byazt.ktf.j.hp
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // com.byazt.ktf.j.hp
    public String getTableName() {
        return "t_frequent";
    }

    @Override // com.byazt.ktf.j.hp
    public String getType(Uri uri) {
        String str = uri.getPath().split(ServiceReference.DELIMITER)[2];
        if ("checkFrequency".equals(str)) {
            return com.byazt.am.w.hp().hp(uri.getQueryParameter("rit")) ? "true" : "false";
        }
        if ("isSilent".equals(str)) {
            return com.byazt.am.w.hp().j() ? "true" : "false";
        }
        if ("maxRit".equals(str)) {
            return com.byazt.am.w.hp().w();
        }
        if ("checkAggFrequency".equals(str)) {
            return com.byazt.am.hp.hp().hp(uri.getQueryParameter("rit")) ? "true" : "false";
        }
        if ("isAggSilent".equals(str)) {
            return com.byazt.am.hp.hp().j() ? "true" : "false";
        }
        if ("maxAggRit".equals(str)) {
            return com.byazt.am.hp.hp().w();
        }
        return null;
    }

    @Override // com.byazt.ktf.j.hp
    public void init() {
    }

    @Override // com.byazt.ktf.j.hp
    public void injectContext(Context context) {
        this.hp = context;
    }

    @Override // com.byazt.ktf.j.hp
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // com.byazt.ktf.j.hp
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // com.byazt.ktf.j.hp
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public static boolean hp(String str, String str2) {
        if (sz.getContext() == null) {
            return false;
        }
        try {
            ContentResolver contentResolverW = w();
            if (contentResolverW != null) {
                return "true".equals(contentResolverW.getType(Uri.parse(a() + str2 + "?rit=" + String.valueOf(str))));
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static String j(String str) {
        if (sz.getContext() == null) {
            return null;
        }
        try {
            ContentResolver contentResolverW = w();
            if (contentResolverW != null) {
                return contentResolverW.getType(Uri.parse(a() + str));
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static boolean l() {
        return jx("isAggSilent");
    }

    public static String jx() {
        return j("maxRit");
    }

    public static boolean hp() {
        return jx("isSilent");
    }
}
