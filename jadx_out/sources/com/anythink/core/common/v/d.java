package com.anythink.core.common.v;

import android.text.TextUtils;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.h.by;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8151a = "anythink_imp_check";

    /* renamed from: b, reason: collision with root package name */
    public static int f8152b = 999;

    /* renamed from: c, reason: collision with root package name */
    public static int f8153c = 888;

    /* renamed from: d, reason: collision with root package name */
    public static int f8154d = 5;

    /* renamed from: e, reason: collision with root package name */
    private static volatile d f8155e;

    /* renamed from: f, reason: collision with root package name */
    private final List<Integer> f8156f = Arrays.asList(50, 15, 8, 22, 28, 59, 6, 37, 3);

    /* renamed from: g, reason: collision with root package name */
    private final Map<String, List<Integer>> f8157g = new ConcurrentHashMap();

    /* renamed from: h, reason: collision with root package name */
    private final Map<String, String> f8158h = new ConcurrentHashMap();

    /* renamed from: i, reason: collision with root package name */
    private final Map<String, List<Integer>> f8159i = new ConcurrentHashMap();

    /* renamed from: j, reason: collision with root package name */
    private final Map<String, String> f8160j = new ConcurrentHashMap();

    public interface a {
        void a();

        void b();
    }

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e(ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter != null) {
            try {
                com.anythink.core.common.h.n trackingInfo = aTBaseAdAdapter.getTrackingInfo();
                by unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
                if (trackingInfo != null) {
                    String strN = trackingInfo.N();
                    String strB = b(trackingInfo, unitGroupInfo);
                    if (!TextUtils.isEmpty(strB) && !TextUtils.isEmpty(strN)) {
                        return this.f8160j.get(strN + "_" + strB);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return "";
    }

    public final boolean b(ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter != null) {
            try {
                by unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
                if (unitGroupInfo == null || !this.f8156f.contains(Integer.valueOf(unitGroupInfo.n())) || unitGroupInfo.bo() != 1) {
                    return true;
                }
                List<Integer> listA = a(unitGroupInfo, false);
                if (listA.isEmpty()) {
                    return true;
                }
                return a(aTBaseAdAdapter, listA, false);
            } catch (Throwable th) {
                com.anythink.core.common.u.f.b("check imp error", th.getMessage() + ", " + p.a(th.getStackTrace()), com.anythink.core.common.d.s.b().r());
            }
        }
        return true;
    }

    public final boolean c(ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter != null) {
            try {
                by unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
                if (unitGroupInfo == null || !this.f8156f.contains(Integer.valueOf(unitGroupInfo.n())) || unitGroupInfo.br() != 1) {
                    return true;
                }
                List<Integer> listA = a(unitGroupInfo, true);
                if (listA.isEmpty()) {
                    return true;
                }
                return a(aTBaseAdAdapter, listA, true);
            } catch (Throwable th) {
                com.anythink.core.common.u.f.b("check reward error", th.getMessage() + ", " + p.a(th.getStackTrace()), com.anythink.core.common.d.s.b().r());
            }
        }
        return true;
    }

    public final void d(ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter != null) {
            try {
                com.anythink.core.common.h.n trackingInfo = aTBaseAdAdapter.getTrackingInfo();
                if (trackingInfo != null) {
                    String strN = trackingInfo.N();
                    String strB = b(trackingInfo, aTBaseAdAdapter.getUnitGroupInfo());
                    if (TextUtils.isEmpty(strB) || TextUtils.isEmpty(strN)) {
                        return;
                    }
                    String str = strN + "_" + strB;
                    if (this.f8157g.containsKey(str)) {
                        this.f8157g.remove(str);
                    }
                    if (this.f8158h.containsKey(str)) {
                        this.f8158h.remove(str);
                    }
                    if (this.f8159i.containsKey(str)) {
                        this.f8159i.remove(str);
                    }
                    if (this.f8160j.containsKey(str)) {
                        this.f8160j.remove(str);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static d a() {
        if (f8155e == null) {
            synchronized (d.class) {
                try {
                    if (f8155e == null) {
                        f8155e = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8155e;
    }

    private static String[] b() throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName(af.b("mdyd1odqj1Wkuhdg"));
            Object[] objArr = (Object[]) cls.getMethod(af.b("jhwVwdfnWudfh"), null).invoke(cls.getMethod(af.b("fxuuhqwWkuhdg"), null).invoke(null, null), null);
            if (objArr == null || objArr.length <= 0) {
                return null;
            }
            String[] strArr = new String[objArr.length];
            for (int i2 = 0; i2 < objArr.length; i2++) {
                strArr[i2] = objArr[i2].toString();
            }
            return strArr;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final boolean a(ATBaseAdAdapter aTBaseAdAdapter) {
        JSONArray jSONArrayBu;
        String[] strArrB;
        if (aTBaseAdAdapter != null) {
            try {
                by unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
                if (unitGroupInfo == null || !this.f8156f.contains(Integer.valueOf(unitGroupInfo.n())) || unitGroupInfo.bo() != 1 || (jSONArrayBu = unitGroupInfo.bu()) == null || jSONArrayBu.length() <= 0 || (strArrB = b()) == null || strArrB.length <= 0) {
                    return true;
                }
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < strArrB.length; i2++) {
                    sb.append(strArrB[i2]);
                    if (i2 != strArrB.length - 1) {
                        sb.append("\n");
                    }
                }
                String strSubstring = "";
                String name = aTBaseAdAdapter.getClass().getName();
                int iLastIndexOf = name.lastIndexOf(com.anythink.core.common.d.i.f2495E);
                if (iLastIndexOf != -1) {
                    strSubstring = name.substring(0, iLastIndexOf);
                }
                boolean zA = a(strArrB, strSubstring, jSONArrayBu);
                com.anythink.core.common.u.f.a(aTBaseAdAdapter.getTrackingInfo(), sb.toString(), zA);
                return zA;
            } catch (Throwable th) {
                com.anythink.core.common.u.f.b("check imp error", th.getMessage() + ", " + p.a(th.getStackTrace()), com.anythink.core.common.d.s.b().r());
            }
        }
        return true;
    }

    private static String b(com.anythink.core.common.h.n nVar, by byVar) {
        com.anythink.core.common.h.ad adVarY;
        String strAR = nVar.aR();
        return (byVar == null || !byVar.w() || (adVarY = byVar.Y()) == null || TextUtils.isEmpty(adVarY.getOriginRequestId())) ? strAR : adVarY.getOriginRequestId();
    }

    public final void a(final ATBaseAdAdapter aTBaseAdAdapter, final a aVar) {
        if (aTBaseAdAdapter != null) {
            try {
                by unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
                if (unitGroupInfo != null && unitGroupInfo.n() == 50) {
                    if (!unitGroupInfo.w()) {
                        aVar.a();
                        return;
                    }
                    if (unitGroupInfo.bo() != 1) {
                        aVar.a();
                        return;
                    }
                    String strE = e(aTBaseAdAdapter);
                    if (!TextUtils.isEmpty(strE)) {
                        if (strE.equals("0")) {
                            aVar.a();
                            return;
                        }
                        return;
                    } else {
                        com.anythink.core.common.d.s.b();
                        com.anythink.core.common.d.s.b(new Runnable() { // from class: com.anythink.core.common.v.d.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                a aVar2;
                                String strE2 = d.this.e(aTBaseAdAdapter);
                                if (TextUtils.isEmpty(strE2)) {
                                    a aVar3 = aVar;
                                    if (aVar3 != null) {
                                        aVar3.a();
                                        return;
                                    }
                                    return;
                                }
                                if (!strE2.equals("0") || (aVar2 = aVar) == null) {
                                    return;
                                }
                                aVar2.a();
                            }
                        }, 3000L);
                        return;
                    }
                }
            } catch (Throwable th) {
                com.anythink.core.common.u.f.b("check checkWinResult error", th.getMessage() + ", " + p.a(th.getStackTrace()), com.anythink.core.common.d.s.b().r());
            }
        }
        aVar.a();
    }

    private static List<Integer> a(by byVar, boolean z2) {
        JSONArray jSONArrayBq;
        JSONArray jSONArrayBp;
        ArrayList arrayList = new ArrayList();
        try {
            int i2 = 0;
            if (byVar.w()) {
                if (z2) {
                    jSONArrayBp = byVar.bs();
                } else {
                    jSONArrayBp = byVar.bp();
                }
                if (jSONArrayBp != null && jSONArrayBp.length() > 0) {
                    while (i2 < jSONArrayBp.length()) {
                        arrayList.add((Integer) jSONArrayBp.get(i2));
                        i2++;
                    }
                }
            } else {
                if (z2) {
                    jSONArrayBq = byVar.bt();
                } else {
                    jSONArrayBq = byVar.bq();
                }
                if (jSONArrayBq != null && jSONArrayBq.length() > 0) {
                    while (i2 < jSONArrayBq.length()) {
                        arrayList.add((Integer) jSONArrayBq.get(i2));
                        i2++;
                    }
                }
            }
            return arrayList;
        } catch (Exception e2) {
            e2.printStackTrace();
            return arrayList;
        }
    }

    public final boolean a(com.anythink.core.common.h.n nVar, by byVar) {
        if (nVar == null) {
            return true;
        }
        try {
            String strN = nVar.N();
            String strB = b(nVar, byVar);
            String strAS = nVar.aS();
            if (TextUtils.isEmpty(strAS) || (!strAS.equals("0") && !strAS.equals("2"))) {
                if (TextUtils.isEmpty(strB) || TextUtils.isEmpty(strN)) {
                    return true;
                }
                String str = strN + "_" + strB;
                List<Integer> list = this.f8159i.get(str);
                if (this.f8157g.get(str) == null) {
                    return false;
                }
                if (list != null) {
                    return !list.contains(Integer.valueOf(f8152b));
                }
                return true;
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return true;
        }
    }

    private boolean a(ATBaseAdAdapter aTBaseAdAdapter, List<Integer> list, boolean z2) {
        if (aTBaseAdAdapter == null) {
            return true;
        }
        try {
            com.anythink.core.common.h.n trackingInfo = aTBaseAdAdapter.getTrackingInfo();
            by unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
            if (trackingInfo == null || list == null) {
                return true;
            }
            String strN = trackingInfo.N();
            String strB = b(trackingInfo, unitGroupInfo);
            if (TextUtils.isEmpty(strB) || TextUtils.isEmpty(strN)) {
                return true;
            }
            String str = strN + "_" + strB;
            List<Integer> list2 = this.f8157g.get(str);
            String str2 = this.f8158h.get(str);
            if (list2 == null || new HashSet(list2).containsAll(list)) {
                return true;
            }
            if (z2) {
                com.anythink.core.common.u.f.c(trackingInfo, list2.toString(), str2);
                return false;
            }
            com.anythink.core.common.u.f.b(trackingInfo, list2.toString(), str2);
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return true;
        }
    }

    private static boolean a(String[] strArr, String str, JSONArray jSONArray) {
        int i2;
        try {
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (!TextUtils.isEmpty(str) && jSONArray != null) {
            int i3 = -1;
            for (int i4 = 0; i4 < strArr.length; i4++) {
                String str2 = strArr[i4];
                if (str2 != null && str2.startsWith(str)) {
                    i3 = i4;
                }
            }
            if (i3 != -1 && (i2 = i3 + 1) < strArr.length) {
                String str3 = strArr[i2];
                if (!TextUtils.isEmpty(str3) && jSONArray.length() > 0) {
                    for (int i5 = 0; i5 < jSONArray.length(); i5++) {
                        String str4 = (String) jSONArray.get(i5);
                        if (!TextUtils.isEmpty(str4) && str3.startsWith(str4)) {
                            return true;
                        }
                    }
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    public final void a(com.anythink.core.common.h.n nVar, by byVar, int i2, String str) {
        if (nVar != null) {
            try {
                String strN = nVar.N();
                String strB = b(nVar, byVar);
                if (TextUtils.isEmpty(strB) || TextUtils.isEmpty(strN)) {
                    return;
                }
                String str2 = strN + "_" + strB;
                if (i2 != f8153c && i2 != f8152b) {
                    List<Integer> arrayList = this.f8157g.get(str2);
                    if (arrayList != null) {
                        if (!arrayList.contains(Integer.valueOf(i2))) {
                            arrayList.add(Integer.valueOf(i2));
                        }
                    } else {
                        arrayList = new ArrayList<>();
                        arrayList.add(Integer.valueOf(i2));
                        this.f8157g.put(str2, arrayList);
                    }
                    if (i2 == f8154d && !TextUtils.isEmpty(str)) {
                        this.f8158h.put(str2, str);
                    }
                    nVar.a(arrayList);
                    return;
                }
                try {
                    List<Integer> list = this.f8159i.get(str2);
                    if (list != null) {
                        if (!list.contains(Integer.valueOf(i2))) {
                            list.add(Integer.valueOf(i2));
                        }
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(Integer.valueOf(i2));
                        this.f8159i.put(str2, arrayList2);
                    }
                    if (i2 != f8153c || TextUtils.isEmpty(str)) {
                        return;
                    }
                    this.f8160j.put(str2, str);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    public final void a(com.anythink.core.common.h.n nVar, by byVar, int i2) {
        try {
            a(nVar, byVar, i2, null);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(int i2, String str, String str2) {
        try {
            List<Integer> list = this.f8159i.get(str);
            if (list != null) {
                if (!list.contains(Integer.valueOf(i2))) {
                    list.add(Integer.valueOf(i2));
                }
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(i2));
                this.f8159i.put(str, arrayList);
            }
            if (i2 != f8153c || TextUtils.isEmpty(str2)) {
                return;
            }
            this.f8160j.put(str, str2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
