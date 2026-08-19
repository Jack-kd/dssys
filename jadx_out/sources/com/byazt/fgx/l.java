package com.byazt.fgx;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.baidu.mobads.sdk.api.IAdInterListener;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 1762, 34})
/* loaded from: classes2.dex */
public class l {
    public static Context getContext() {
        return com.byazt.ke.jx.getContext();
    }

    public static boolean hp() {
        return com.byazt.ke.jx.getContext() != null;
    }

    private static String jx() {
        return w.f19736l + "/t_sp/";
    }

    private static ContentResolver l() {
        try {
            if (hp()) {
                return com.byazt.ke.jx.getContext().getContentResolver();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static synchronized void hp(String str, String str2, Boolean bool) {
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null) {
                    Uri uri = Uri.parse(jx("boolean", str2, str));
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(f.a.f3244d, bool);
                    contentResolverL.update(uri, contentValues, null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static String jx(String str) {
        return TextUtils.isEmpty(str) ? "" : "?sp_file_name=".concat(String.valueOf(str));
    }

    public static String l(String str, String str2, String str3) {
        String type;
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null && (type = contentResolverL.getType(Uri.parse(jx("string", str2, str)))) != null && !type.equals("null")) {
                    if (!TextUtils.isEmpty(type)) {
                        return type;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return str3;
    }

    private static String jx(String str, String str2, String str3) {
        return jx() + str + ServiceReference.DELIMITER + str2 + jx(str3);
    }

    @TargetApi(11)
    public static Set<String> l(String str, String str2, Set<String> set) {
        String type;
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null && (type = contentResolverL.getType(Uri.parse(jx("string_set", str2, str)))) != null && !type.equals("null") && !TextUtils.isEmpty(type) && type.matches("\\[.*\\]")) {
                    String strSubstring = type.substring(1, type.length() - 1);
                    String[] strArrSplit = strSubstring.split(", ");
                    HashSet hashSet = new HashSet();
                    if (!TextUtils.isEmpty(strSubstring)) {
                        for (String str3 : strArrSplit) {
                            hashSet.add(str3.replace("__COMMA__", ", "));
                        }
                    }
                    return hashSet;
                }
            } catch (Throwable unused) {
            }
        }
        return set;
    }

    public static synchronized void hp(String str, String str2, String str3) {
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null) {
                    Uri uri = Uri.parse(jx("string", str2, str));
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(f.a.f3244d, str3);
                    contentResolverL.update(uri, contentValues, null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static synchronized void hp(String str, String str2, Integer num) {
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null) {
                    Uri uri = Uri.parse(jx(IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL, str2, str));
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(f.a.f3244d, num);
                    contentResolverL.update(uri, contentValues, null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void l(String str, String str2) {
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null) {
                    contentResolverL.delete(Uri.parse(jx("long", str2, str)), null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.util.HashSet, java.util.Set] */
    /* JADX WARN: Type inference failed for: r8v10, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Float] */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.Long] */
    public static Map<String, ?> l(String str) {
        Cursor cursorQuery;
        String string;
        if (!hp()) {
            return null;
        }
        try {
            ContentResolver contentResolverL = l();
            if (contentResolverL != null) {
                cursorQuery = contentResolverL.query(Uri.parse(jx() + "get_all" + jx(str)), null, null, null, null);
                try {
                    HashMap map = new HashMap();
                    if (cursorQuery != null && cursorQuery.moveToFirst()) {
                        int columnIndex = cursorQuery.getColumnIndex("cursor_name");
                        int columnIndex2 = cursorQuery.getColumnIndex("cursor_type");
                        int columnIndex3 = cursorQuery.getColumnIndex("cursor_value");
                        do {
                            String string2 = cursorQuery.getString(columnIndex);
                            String string3 = cursorQuery.getString(columnIndex2);
                            if (string3.equalsIgnoreCase("string")) {
                                String string4 = cursorQuery.getString(columnIndex3);
                                boolean zContains = string4.contains("__COMMA__");
                                string = string4;
                                if (zContains) {
                                    boolean zMatches = string4.matches("\\[.*\\]");
                                    string = string4;
                                    if (zMatches) {
                                        String strSubstring = string4.substring(1, string4.length() - 1);
                                        String[] strArrSplit = strSubstring.split(", ");
                                        ?? hashSet = new HashSet();
                                        if (!TextUtils.isEmpty(strSubstring)) {
                                            for (String str2 : strArrSplit) {
                                                hashSet.add(str2.replace("__COMMA__", ", "));
                                            }
                                        }
                                        string = hashSet;
                                    }
                                }
                            } else if (string3.equalsIgnoreCase("boolean")) {
                                string = cursorQuery.getString(columnIndex3);
                            } else if (string3.equalsIgnoreCase(IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL)) {
                                string = Integer.valueOf(cursorQuery.getInt(columnIndex3));
                            } else if (string3.equalsIgnoreCase("long")) {
                                string = Long.valueOf(cursorQuery.getLong(columnIndex3));
                            } else if (string3.equalsIgnoreCase("float")) {
                                string = Float.valueOf(cursorQuery.getFloat(columnIndex3));
                            } else {
                                string = string3.equalsIgnoreCase("string_set") ? cursorQuery.getString(columnIndex3) : null;
                            }
                            map.put(string2, string);
                        } while (cursorQuery.moveToNext());
                    }
                    if (cursorQuery != null && !cursorQuery.isClosed()) {
                        cursorQuery.close();
                    }
                    return map;
                } catch (Throwable unused) {
                    if (cursorQuery != null && !cursorQuery.isClosed()) {
                        cursorQuery.close();
                    }
                    return null;
                }
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        return null;
    }

    public static synchronized void hp(String str, String str2, Long l2) {
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null) {
                    Uri uri = Uri.parse(jx("long", str2, str));
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(f.a.f3244d, l2);
                    contentResolverL.update(uri, contentValues, null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static synchronized void hp(String str, String str2, Float f2) {
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null) {
                    Uri uri = Uri.parse(jx("float", str2, str));
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(f.a.f3244d, f2);
                    contentResolverL.update(uri, contentValues, null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static synchronized void hp(String str, String str2, Set<String> set) {
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null) {
                    Uri uri = Uri.parse(jx("string_set", str2, str));
                    ContentValues contentValues = new ContentValues();
                    HashSet hashSet = new HashSet();
                    Iterator<String> it = set.iterator();
                    while (it.hasNext()) {
                        hashSet.add(it.next().replace(",", "__COMMA__"));
                    }
                    contentValues.put(f.a.f3244d, hashSet.toString());
                    contentResolverL.update(uri, contentValues, null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static int hp(String str, String str2, int i2) {
        String type;
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null && (type = contentResolverL.getType(Uri.parse(jx(IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL, str2, str)))) != null && !type.equals("null") && !TextUtils.isEmpty(type)) {
                    return Integer.parseInt(type);
                }
            } catch (Throwable unused) {
            }
        }
        return i2;
    }

    public static float hp(String str, String str2, float f2) {
        String type;
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null && (type = contentResolverL.getType(Uri.parse(jx("float", str2, str)))) != null && !type.equals("null") && !TextUtils.isEmpty(type)) {
                    return Float.parseFloat(type);
                }
            } catch (Throwable unused) {
            }
        }
        return f2;
    }

    public static boolean hp(String str, String str2, boolean z2) {
        String type;
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null && (type = contentResolverL.getType(Uri.parse(jx("boolean", str2, str)))) != null && !type.equals("null") && !TextUtils.isEmpty(type)) {
                    return Boolean.parseBoolean(type);
                }
            } catch (Throwable unused) {
            }
        }
        return z2;
    }

    public static long hp(String str, String str2, long j2) {
        String type;
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null && (type = contentResolverL.getType(Uri.parse(jx("long", str2, str)))) != null && !type.equals("null") && !TextUtils.isEmpty(type)) {
                    return Long.parseLong(type);
                }
            } catch (Throwable unused) {
            }
        }
        return j2;
    }

    public static boolean hp(String str, String str2) {
        String type;
        if (!hp()) {
            return false;
        }
        try {
            ContentResolver contentResolverL = l();
            if (contentResolverL != null && (type = contentResolverL.getType(Uri.parse(jx("contain", str2, str)))) != null && !type.equals("null") && !TextUtils.isEmpty(type)) {
                return Boolean.parseBoolean(type);
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static void hp(String str) {
        if (hp()) {
            try {
                ContentResolver contentResolverL = l();
                if (contentResolverL != null) {
                    contentResolverL.delete(Uri.parse(jx() + "clean" + jx(str)), null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }
}
