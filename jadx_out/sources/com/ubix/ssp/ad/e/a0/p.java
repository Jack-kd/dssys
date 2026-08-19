package com.ubix.ssp.ad.e.a0;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.ubix.ssp.ad.e.y.a.g;
import java.io.File;
import java.lang.reflect.Array;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes5.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    private static String[] f46395a = null;

    /* renamed from: b, reason: collision with root package name */
    private static String[] f46396b = null;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f46397c = false;

    /* renamed from: d, reason: collision with root package name */
    public static int f46398d = -1;

    /* renamed from: e, reason: collision with root package name */
    public static long f46399e = 600000;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f46400f = false;

    /* renamed from: g, reason: collision with root package name */
    public static List<g.c> f46401g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public static List<g.c> f46402h = new ArrayList();

    /* renamed from: i, reason: collision with root package name */
    public static long f46403i = 600000;

    /* renamed from: j, reason: collision with root package name */
    private static StringBuilder f46404j = null;

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            p.b();
        }
    }

    private static HashMap<String, ArrayList<String>> a(g.c[] cVarArr) {
        HashMap<String, ArrayList<String>> map = new HashMap<>();
        ArrayList<String> arrayList = new ArrayList<>();
        ArrayList<String> arrayList2 = new ArrayList<>();
        if (cVarArr != null && cVarArr.length > 0) {
            for (g.c cVar : cVarArr) {
                if (b(cVar.f47752c)) {
                    arrayList.add(cVar.f47753d + "");
                } else {
                    arrayList2.add(cVar.f47754e + "");
                }
            }
        }
        map.put("positive", arrayList);
        map.put("negative", arrayList2);
        return map;
    }

    private static HashMap<String, ArrayList<String>> b(g.c[] cVarArr) {
        HashMap<String, ArrayList<String>> map = new HashMap<>();
        ArrayList<String> arrayList = new ArrayList<>();
        ArrayList<String> arrayList2 = new ArrayList<>();
        if (cVarArr != null && cVarArr.length > 0) {
            String[] strArrC = c();
            if (strArrC == null || strArrC.length <= 0) {
                u.e("get detectList isEmpty");
            } else {
                List listAsList = Arrays.asList(strArrC);
                for (g.c cVar : cVarArr) {
                    if (listAsList.contains(cVar.f47752c)) {
                        arrayList.add(cVar.f47753d);
                    } else if (!TextUtils.isEmpty(cVar.f47754e)) {
                        arrayList2.add(cVar.f47754e);
                    }
                }
            }
        }
        map.put("positive", arrayList);
        map.put("negative", arrayList2);
        return map;
    }

    private static void c(Context context) {
        String[] strArr;
        if (System.currentTimeMillis() - v.c(context, "ubix_sp_village", "install_chk_inr_last_time") < f46399e) {
            u.b("packages checked interval less than " + f46399e + ", skip ");
            if (f46395a == null || f46396b == null) {
                f46395a = c(v.d(context, "ubix_sp_villager", "install_result_array"));
                f46396b = c(v.d(context, "ubix_sp_villager", "not_install_result_array"));
                return;
            }
            return;
        }
        v.a(context, "ubix_sp_village", "install_chk_inr_last_time", System.currentTimeMillis());
        List<g.c> list = f46401g;
        if (list == null || list.isEmpty()) {
            u.e("packages list is empty");
            return;
        }
        String[] strArr2 = f46395a;
        if (strArr2 == null || (strArr = f46396b) == null || (strArr2.length == 0 && strArr.length == 0)) {
            b();
        } else {
            c.y();
            c.f46115d.execute(new a());
        }
    }

    private static void d(Context context) {
        if (System.currentTimeMillis() - v.c(context, "ubix_sp_village", "install_chk_inr_last_time") < f46399e) {
            u.b("scheme checked interval less than " + f46399e + ", skip ");
            if (f46395a == null || f46396b == null) {
                f46395a = c(v.d(context, "ubix_sp_villager", "install_result_array"));
                f46396b = c(v.d(context, "ubix_sp_villager", "not_install_result_array"));
                return;
            }
            return;
        }
        v.a(context, "ubix_sp_village", "install_chk_inr_last_time", System.currentTimeMillis());
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < f46401g.size(); i2++) {
            String str = f46401g.get(i2).f47752c;
            if (!TextUtils.isEmpty(str.trim()) && str.trim().contains("://") && c.a(context, c.c(str))) {
                u.b("initConfig", "默认扫包已安装: " + str);
                if (!TextUtils.isEmpty(f46401g.get(i2).f47753d)) {
                    arrayList.add(f46401g.get(i2).f47753d);
                }
            } else {
                u.b("initConfig", "默认扫包未安装: " + str);
                if (!TextUtils.isEmpty(f46401g.get(i2).f47754e)) {
                    arrayList2.add(f46401g.get(i2).f47754e);
                }
            }
        }
        f46395a = (String[]) arrayList.toArray(new String[0]);
        f46396b = (String[]) arrayList2.toArray(new String[0]);
        v.b(context, "ubix_sp_villager", "install_result_array", Arrays.toString(f46395a));
        v.b(context, "ubix_sp_villager", "not_install_result_array", Arrays.toString(f46396b));
    }

    public static String[] e() {
        String[] strArr = f46396b;
        return strArr != null ? strArr : new String[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b() {
        try {
            HashMap<String, ArrayList<String>> mapB = com.ubix.ssp.ad.d.b.f45806m ? b((g.c[]) f46401g.toArray(new g.c[0])) : a((g.c[]) f46401g.toArray(new g.c[0]));
            if (mapB != null) {
                ArrayList<String> arrayList = mapB.get("positive");
                ArrayList<String> arrayList2 = mapB.get("negative");
                if (arrayList != null) {
                    f46395a = (String[]) arrayList.toArray(new String[0]);
                    v.b(c.e(), "ubix_sp_villager", "install_result_array", Arrays.toString(f46395a));
                }
                if (arrayList2 != null) {
                    f46396b = (String[]) arrayList2.toArray(new String[0]);
                    v.b(c.e(), "ubix_sp_villager", "not_install_result_array", Arrays.toString(f46396b));
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static String[] c() {
        String str;
        StringBuilder sb = f46404j;
        if (sb == null) {
            long jC = v.c(c.f46112a, "ubix_sp_dungeon1", "ex_time");
            String strD = v.d(c.f46112a, "ubix_sp_mansion", "ubix_sp_vindicator");
            if (jC == 0 && TextUtils.isEmpty(strD)) {
                str = c.a(c.f46112a);
                f46404j = new StringBuilder(str);
                v.a(c.f46112a, "ubix_sp_dungeon1", "ex_time", System.currentTimeMillis());
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                v.b(c.f46112a, "ubix_sp_mansion", "ubix_sp_vindicator", new String(Base64.encode(str.getBytes(StandardCharsets.UTF_8), 2)));
            } else {
                StringBuilder sb2 = new StringBuilder(strD);
                f46404j = sb2;
                if (sb2.length() <= 0) {
                    return null;
                }
                str = new String(Base64.decode(f46404j.toString(), 2));
            }
        } else {
            if (sb.length() <= 0) {
                return null;
            }
            str = new String(Base64.decode(f46404j.toString(), 2));
        }
        return str.split(",");
    }

    public static String[] d() {
        String[] strArr = f46395a;
        return strArr != null ? strArr : new String[0];
    }

    public static void a(String str) {
        try {
            if (f46398d == 1 && com.ubix.ssp.ad.d.b.f45806m) {
                if (!TextUtils.isEmpty(str)) {
                    f46404j = new StringBuilder(str);
                }
                b();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void b(Context context) {
        if (f46397c) {
            if (f46398d == 1) {
                c(context);
            } else {
                d(context);
            }
        }
    }

    private static String[] c(String str) {
        String[] strArr;
        if (TextUtils.isEmpty(str)) {
            return new String[0];
        }
        JSONArray jSONArray = new JSONArray(str);
        if (jSONArray.length() > 0) {
            strArr = new String[jSONArray.length()];
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    strArr[i2] = jSONArray.get(i2) + "";
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        } else {
            strArr = null;
        }
        return strArr == null ? new String[0] : strArr;
    }

    private static boolean a(File file, String str) {
        File parentFile;
        if (file == null || (parentFile = file.getParentFile()) == null || !parentFile.exists()) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(parentFile.getAbsoluteFile());
        sb.append(File.separator);
        sb.append(str);
        return new File(sb.toString()).exists();
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return a(k.b(c.e()).getParentFile(), str) || a(k.d(c.e()).getParentFile(), str);
    }

    public static String[][] a(Context context) throws IllegalArgumentException, NegativeArraySizeException {
        Object objNewInstance;
        if (f46400f) {
            long jC = v.c(context, "ubix_sp_castle", "analysis_detect_last_time");
            boolean zBooleanValue = v.a(context, "ubix_sp_castle", "analysis_detect_insert_list").booleanValue();
            if (System.currentTimeMillis() - jC >= f46403i || !zBooleanValue) {
                v.a(context, "ubix_sp_castle", "analysis_detect_last_time", System.currentTimeMillis());
                try {
                    HashMap<String, ArrayList<String>> mapA = a((g.c[]) f46402h.toArray(new g.c[0]));
                    if (mapA != null) {
                        String[] strArr = mapA.get("positive") != null ? (String[]) mapA.get("positive").toArray(new String[0]) : new String[0];
                        v.b(context, "ubix_sp_guarder", "analysis_install_tag_list", Arrays.toString(strArr));
                        return new String[][]{strArr, new String[0]};
                    }
                    objNewInstance = Array.newInstance((Class<?>) String.class, 2, 0);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    objNewInstance = Array.newInstance((Class<?>) String.class, 2, 0);
                }
            } else {
                try {
                    return new String[][]{c(v.d(context, "ubix_sp_guarder", "analysis_install_tag_list")), new String[0]};
                } catch (JSONException e3) {
                    e3.printStackTrace();
                    objNewInstance = Array.newInstance((Class<?>) String.class, 2, 0);
                }
            }
        } else {
            objNewInstance = Array.newInstance((Class<?>) String.class, 2, 0);
        }
        return (String[][]) objNewInstance;
    }
}
