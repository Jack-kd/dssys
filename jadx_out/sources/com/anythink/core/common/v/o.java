package com.anythink.core.common.v;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import com.anythink.core.api.ATCustomRuleKeys;
import com.anythink.core.api.ATShowConfig;
import com.anythink.core.common.d.i;
import com.anythink.core.common.h.bl;
import com.anythink.core.common.h.bq;
import com.anythink.core.common.h.by;
import com.baidu.mobads.sdk.api.IAdInterListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    static Random f8256a = new Random();

    /* renamed from: b, reason: collision with root package name */
    private static final String f8257b = "CommonSDKUtil";

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f8258a = "com.android.vending";
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.e("anythink", "Channel Error: The channel cannot be null or empty.");
        }
        return !TextUtils.isEmpty(str);
    }

    public static boolean b(int i2) {
        return i2 == 2 || i2 == 7 || i2 == 9 || i2 == 12;
    }

    public static boolean c(int i2) {
        return i2 == 3 || i2 == 4 || i2 == 5 || i2 == 8 || i2 == 11 || i2 == 13;
    }

    public static boolean d(int i2) {
        return i2 == 1 || i2 == 6 || i2 == 10;
    }

    public static ATShowConfig e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new ATShowConfig.Builder().scenarioId(str).build();
    }

    public static String f(String str) {
        str.getClass();
        switch (str) {
            case "0":
                return i.o.f2697a;
            case "1":
                return i.o.f2698b;
            case "2":
                return i.o.f2699c;
            case "3":
                return "Interstitial";
            case "4":
                return "Splash";
            default:
                return "";
        }
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.e("anythink", "SubChannel Error: The subChannel cannot be null or empty.");
        }
        return !TextUtils.isEmpty(str);
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.length() > 50) {
            Log.e("anythink", "Invalid ScenarioId(" + str + "):The length of ScenarioId must be between 1-50.");
            return false;
        }
        if (!Pattern.matches(".*[\\u4E00-\\u9FFF\\s]+.*", str)) {
            return true;
        }
        Log.e("anythink", "Invalid ScenarioId(" + str + "):ScenarioId cannot contain spaces or chinese characters.");
        return false;
    }

    public static String d(String str) {
        return (!TextUtils.isEmpty(str) && c(str)) ? str : "";
    }

    public static int e(int i2) {
        if (c(i2)) {
            return 1;
        }
        return b(i2) ? 2 : 0;
    }

    public static String a(String str, String str2, long j2) {
        return str + "_" + str2 + "_" + j2;
    }

    private static String d(Context context) {
        String strC = com.anythink.core.common.d.s.b().C();
        if (TextUtils.isEmpty(strC)) {
            strC = l.d(context) + l.f();
        }
        return n.a(strC + UUID.randomUUID().toString());
    }

    public static JSONObject a(Context context, String str, String str2, int i2, int i3) throws JSONException {
        com.anythink.core.a.a.a(context);
        int[] iArrA = com.anythink.core.a.a.a(i2);
        int i4 = iArrA[0];
        int i5 = iArrA[1];
        com.anythink.core.a.a.a(context);
        bq bqVarA = com.anythink.core.a.a.a(str2, i2);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sr", "tp");
            jSONObject.put("rid", str);
            jSONObject.put(com.sigmob.sdk.base.db.a.f36070a, i4);
            jSONObject.put("ahs", i5);
            jSONObject.put("pds", bqVarA.f4019c);
            jSONObject.put("phs", bqVarA.f4020d);
            jSONObject.put(IAdInterListener.AdReqParam.AP, i3);
            jSONObject.put("tpl", str2);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static String b(String str, String str2, long j2) {
        return a(str, str2, j2) + "_refresh";
    }

    public static double b(by byVar) {
        if (byVar != null) {
            return byVar.j();
        }
        return 0.0d;
    }

    private static String b(com.anythink.core.common.h.w wVar) {
        if (wVar instanceof bl) {
            return ((bl) wVar).Q();
        }
        return "";
    }

    public static double c(by byVar) {
        if (byVar == null) {
            return 0.0d;
        }
        double dAB = byVar.aB();
        if (dAB <= 0.0d) {
            return dAB;
        }
        try {
            if (!byVar.w()) {
                return dAB;
            }
            double dBx = byVar.bx();
            return dBx > 0.0d ? dAB * dBx : dAB;
        } catch (Throwable unused) {
            return dAB;
        }
    }

    private static double d(by byVar) {
        if (byVar != null) {
            return byVar.bx();
        }
        return 0.0d;
    }

    public static boolean b() {
        try {
            Map<String, Object> mapM = com.anythink.core.common.d.s.b().m();
            if (mapM == null || !mapM.containsKey(ATCustomRuleKeys.AGE)) {
                return false;
            }
            return Integer.parseInt(mapM.get(ATCustomRuleKeys.AGE).toString()) <= 13;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean c(Context context) {
        return ae.a().b(context);
    }

    public static boolean c() {
        return ae.a().b();
    }

    public static boolean b(Context context) {
        return ae.a().a(context);
    }

    public static boolean b(List<String> list, String str) {
        return list != null && list.size() > 0 && list.contains(str);
    }

    public static String a(Context context) {
        String strC = com.anythink.core.common.d.s.b().C();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(l.d(context));
        stringBuffer.append("&");
        stringBuffer.append(l.f());
        stringBuffer.append("&");
        stringBuffer.append(strC);
        stringBuffer.append("&");
        stringBuffer.append(System.currentTimeMillis());
        stringBuffer.append("&");
        stringBuffer.append(new Random().nextInt(10000));
        return n.a(stringBuffer.toString());
    }

    public static void a(List<by> list, by byVar) {
        if (list == null) {
            return;
        }
        int size = list.size();
        if (size == 0) {
            list.add(byVar);
            return;
        }
        int i2 = size - 1;
        for (int i3 = 0; i3 < size; i3++) {
            if (k.a(byVar, list.get(i3)) <= 0) {
                list.add(i3, byVar);
                return;
            } else {
                if (i3 == i2) {
                    list.add(byVar);
                    return;
                }
            }
        }
    }

    private static boolean a(List<by> list, by byVar, by byVar2, int i2, int i3, boolean z2) {
        if (z2 && byVar.l() == -1) {
            list.add(i2, byVar2);
            return true;
        }
        if (k.a(byVar2, byVar) <= 0) {
            list.add(i2, byVar2);
            return true;
        }
        if (i2 != i3) {
            return false;
        }
        list.add(byVar2);
        return true;
    }

    public static void a(WebView webView) {
        if (webView == null) {
            return;
        }
        webView.removeJavascriptInterface("searchBoxjavaBridge_");
        webView.removeJavascriptInterface("accessibility");
        webView.removeJavascriptInterface("accessibilityTraversal");
        webView.getSettings().setAllowFileAccess(false);
        webView.getSettings().setAllowFileAccessFromFileURLs(false);
        webView.getSettings().setAllowUniversalAccessFromFileURLs(false);
        webView.getSettings().setSavePassword(false);
    }

    public static double a(by byVar) {
        if (byVar != null) {
            return byVar.aB();
        }
        return 0.0d;
    }

    private static void a(String str, List<by> list) {
        if (list != null) {
            try {
                StringBuilder sb = new StringBuilder();
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    by byVar = list.get(i2);
                    sb.append("\n");
                    sb.append(i2);
                    sb.append(" --> adSourceId: ");
                    sb.append(byVar.G());
                    sb.append(", ");
                    sb.append(byVar.o());
                    sb.append(", real: ");
                    sb.append(byVar.K());
                    sb.append(", sort: ");
                    sb.append(a(byVar));
                    String strM = byVar.M();
                    if (!TextUtils.isEmpty(strM)) {
                        sb.append(", errorMsg: ");
                        sb.append(strM);
                    }
                }
                Log.e(str, sb.toString());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static String a() {
        if (!TextUtils.isEmpty("UA_6.6.22")) {
            return "UA_6.6.22";
        }
        return "UA_0.0.0";
    }

    private static String a(com.anythink.core.common.h.w wVar) {
        String packageName;
        com.anythink.core.common.h.y yVarG;
        String str = wVar.t() + wVar.i();
        if ((wVar instanceof bl) && (yVarG = wVar.g()) != null) {
            if (yVarG.B() != 2) {
                str = b(wVar) + wVar.t() + wVar.i();
            } else {
                str = b(wVar) + wVar.t();
            }
        }
        if (com.anythink.core.common.d.s.b().g() != null) {
            packageName = com.anythink.core.common.d.s.b().g().getPackageName();
        } else {
            packageName = "";
        }
        return n.a(str + packageName);
    }

    public static void a(Map<String, Object> map, com.anythink.core.common.h.n nVar) {
        if (nVar == null || nVar.Z() >= 100000) {
            return;
        }
        map.put("anythink_tracking_info", nVar);
        map.put("anythink_placement_id", nVar.aQ());
    }

    private static int a(int i2, int[] iArr, int i3) {
        if (iArr != null) {
            for (int i4 : iArr) {
                if (i2 == i4) {
                    return i2;
                }
            }
        }
        return i3;
    }

    public static List<by> a(List<by> list, com.anythink.core.common.k.f fVar) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HashMap map = new HashMap(3);
        ArrayList arrayList = new ArrayList();
        for (by byVar : list) {
            double dA = a(byVar);
            List arrayList2 = (List) linkedHashMap.get(String.valueOf(dA));
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(String.valueOf(dA), arrayList2);
            }
            Integer num = (Integer) map.get(String.valueOf(dA));
            if (num == null) {
                num = 0;
            }
            map.put(String.valueOf(dA), Integer.valueOf(num.intValue() + byVar.ag()));
            arrayList2.add(byVar);
        }
        int i2 = 0;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            List list2 = (List) entry.getValue();
            int iIntValue = ((Integer) map.get(entry.getKey())).intValue();
            int i3 = -1;
            while (true) {
                if (list2.size() <= 0) {
                    break;
                }
                if (list2.size() == 1) {
                    by byVar2 = (by) list2.get(0);
                    arrayList.add(byVar2);
                    list2.remove(0);
                    if (fVar != null) {
                        fVar.a(byVar2, i2, i3);
                    }
                    i2++;
                } else {
                    int iNextInt = f8256a.nextInt(iIntValue) + 1;
                    Iterator it = list2.iterator();
                    int iAg = 0;
                    while (true) {
                        if (it.hasNext()) {
                            by byVar3 = (by) it.next();
                            if (byVar3.ag() + iAg >= iNextInt) {
                                arrayList.add(byVar3);
                                list2.remove(byVar3);
                                iIntValue -= byVar3.ag();
                                if (i3 == -1) {
                                    i3 = 0;
                                }
                                if (fVar != null) {
                                    fVar.a(byVar3, i2, i3);
                                }
                                i3++;
                                i2++;
                            } else {
                                iAg += byVar3.ag();
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public static String a(int i2) {
        switch (i2) {
            case 2:
                return "c2s";
            case 3:
                return "s2s";
            case 4:
                return "adx";
            case 5:
                return "adx open";
            case 6:
            case 10:
            default:
                return "";
            case 7:
                return "fb in-house";
            case 8:
                return "directly";
            case 9:
                return "dynamic";
            case 11:
                return "custom in-house";
            case 12:
                return "dynamic c2s";
            case 13:
                return "dynamic s2s";
        }
    }

    public static JSONObject a(StackTraceElement[] stackTraceElementArr) {
        JSONObject jSONObject = null;
        if (stackTraceElementArr == null || stackTraceElementArr.length <= 0) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONArray jSONArray = new JSONArray();
                JSONArray jSONArray2 = new JSONArray();
                for (int i2 = 0; i2 < stackTraceElementArr.length; i2++) {
                    String className = stackTraceElementArr[i2].getClassName();
                    if (!className.startsWith("com.anythink")) {
                        jSONArray.put(stackTraceElementArr[i2].toString());
                        try {
                            jSONArray2.put(Class.forName(className).getSuperclass().getName());
                        } catch (Throwable unused) {
                            jSONArray2.put("fail");
                        }
                        if (jSONArray.length() >= 5) {
                            break;
                        }
                    }
                }
                jSONObject2.put("stacks", jSONArray);
                jSONObject2.put("classes", jSONArray2);
                return jSONObject2;
            } catch (Throwable unused2) {
                jSONObject = jSONObject2;
                return jSONObject;
            }
        } catch (Throwable unused3) {
        }
    }

    public static boolean a(List<String> list, String str) {
        return list == null || list.size() <= 0 || list.contains(str);
    }
}
