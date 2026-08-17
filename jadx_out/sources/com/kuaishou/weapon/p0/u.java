package com.kuaishou.weapon.p0;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import androidx.work.PeriodicWorkRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class u implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public static final int f31290a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f31291b = 2;

    /* renamed from: c, reason: collision with root package name */
    public static final int f31292c = 4;

    /* renamed from: d, reason: collision with root package name */
    public static final int f31293d = 0;

    /* renamed from: e, reason: collision with root package name */
    public static final int f31294e = 8;

    /* renamed from: f, reason: collision with root package name */
    public static final int f31295f = 1;

    /* renamed from: g, reason: collision with root package name */
    public static final int f31296g = 3;

    /* renamed from: h, reason: collision with root package name */
    public static final int f31297h = 4;

    /* renamed from: o, reason: collision with root package name */
    private static long f31298o;

    /* renamed from: j, reason: collision with root package name */
    private Context f31300j;

    /* renamed from: k, reason: collision with root package name */
    private q f31301k;

    /* renamed from: l, reason: collision with root package name */
    private t f31302l;

    /* renamed from: m, reason: collision with root package name */
    private File f31303m;

    /* renamed from: n, reason: collision with root package name */
    private dn f31304n;

    /* renamed from: p, reason: collision with root package name */
    private int f31305p;

    /* renamed from: r, reason: collision with root package name */
    private boolean f31307r;

    /* renamed from: q, reason: collision with root package name */
    private int f31306q = 0;

    /* renamed from: i, reason: collision with root package name */
    List<Integer> f31299i = new ArrayList();

    /* renamed from: s, reason: collision with root package name */
    private Map<Integer, a> f31308s = new HashMap();

    public class a {

        /* renamed from: a, reason: collision with root package name */
        int f31309a;

        public a(int i2) {
            this.f31309a = i2;
        }
    }

    public u(Context context, int i2, boolean z2) {
        this.f31305p = 0;
        this.f31307r = false;
        this.f31300j = context;
        this.f31301k = q.a(context);
        this.f31302l = t.a(context);
        this.f31304n = dn.a(context);
        this.f31303m = new File(context.getFilesDir(), ".tmp");
        this.f31305p = i2;
        this.f31307r = z2;
    }

    public JSONObject a() throws NetworkErrorException, JSONException {
        try {
            String str = cs.f31018a + cs.f31024g;
            String strA = ct.a(this.f31300j);
            if (!TextUtils.isEmpty(strA)) {
                str = str + "?" + strA;
            }
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObjectC = ct.c(this.f31300j);
            if (jSONObjectC != null) {
                jSONObject.put("data", new bl(this.f31300j).c(jSONObjectC.toString()));
            }
            l lVarA = l.a(this.f31300j);
            m mVar = new m(str, jSONObject);
            mVar.a(WeaponHI.cookieData);
            mVar.b(WeaponHI.encryENV);
            JSONObject jSONObject2 = new JSONObject(lVarA.a(mVar));
            int iOptInt = jSONObject2.optInt("result", 0);
            if (iOptInt != 1) {
                if (iOptInt != -7) {
                    return null;
                }
                dn.a(this.f31300j).a(dn.f31140a, 1, false);
                return null;
            }
            String strA2 = new bl(this.f31300j).a(jSONObject2.getString("antispamPluginManageRsp"));
            if (TextUtils.isEmpty(strA2)) {
                if (this.f31306q == 0) {
                    this.f31306q = 8;
                }
                throw new NetworkErrorException("kuaishou risk pluginloader response is null");
            }
            JSONObject jSONObject3 = new JSONObject(strA2);
            if (jSONObject3.optInt("status", 0) == 1) {
                return jSONObject3.optJSONObject("plugin");
            }
            dn dnVar = this.f31304n;
            if (dnVar == null) {
                return null;
            }
            dnVar.a(dn.f31141b, System.currentTimeMillis(), true);
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z2;
        Iterator<String> it;
        int i2;
        try {
            try {
                synchronized (u.class) {
                    int i3 = this.f31305p;
                    if (i3 == 1 || i3 == 2 || i3 == 4 || this.f31307r || System.currentTimeMillis() - f31298o >= PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
                        this.f31302l.d();
                        f31298o = System.currentTimeMillis();
                        if ((System.currentTimeMillis() - this.f31304n.a(dn.f31141b)) - (this.f31304n.a(dn.f31142c, 6) * bg.f30873s) > 0) {
                            List<s> listA = this.f31302l.a();
                            ArrayList arrayList = new ArrayList();
                            ArrayList arrayList2 = new ArrayList();
                            ArrayList arrayList3 = new ArrayList();
                            ArrayList arrayList4 = new ArrayList();
                            JSONObject jSONObjectA = a();
                            if (jSONObjectA == null) {
                                throw new Exception("pluginJsonObject is null ");
                            }
                            try {
                                boolean zB = dk.b(this.f31300j);
                                Iterator<String> itKeys = jSONObjectA.keys();
                                HashSet hashSet = new HashSet();
                                z2 = false;
                                while (itKeys.hasNext()) {
                                    String next = itKeys.next();
                                    if (zB && next.endsWith("64")) {
                                        if (next.length() > 3) {
                                            hashSet.add(next.substring(0, next.length() - 3));
                                            hashSet.add(next.substring(0, next.length() - 3) + ".32");
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                    } else if (zB || !next.endsWith("32")) {
                                        if (zB && next.endsWith("v8")) {
                                            if (next.length() > 3) {
                                                hashSet.add(next.substring(0, next.length() - 3));
                                                hashSet.add(next.substring(0, next.length() - 3) + ".v7");
                                                z2 = true;
                                            } else {
                                                z2 = true;
                                            }
                                        } else if (!zB && next.endsWith("v7")) {
                                            if (next.length() > 3) {
                                                hashSet.add(next.substring(0, next.length() - 3));
                                                hashSet.add(next.substring(0, next.length() - 3) + ".v8");
                                            }
                                            z2 = true;
                                        }
                                    } else if (next.length() > 3) {
                                        hashSet.add(next.substring(0, next.length() - 3));
                                        hashSet.add(next.substring(0, next.length() - 3) + ".64");
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                }
                                if (z2) {
                                    Iterator it2 = hashSet.iterator();
                                    while (it2.hasNext()) {
                                        jSONObjectA.remove((String) it2.next());
                                    }
                                }
                            } catch (Throwable unused) {
                                z2 = false;
                            }
                            Iterator<String> itKeys2 = jSONObjectA.keys();
                            while (itKeys2.hasNext()) {
                                String next2 = itKeys2.next();
                                s sVarA = o.a(jSONObjectA.optJSONObject(next2));
                                if (sVarA != null) {
                                    if (z2 && !sVarA.f31257y && (next2.endsWith("32") || next2.endsWith("64") || next2.endsWith("v7") || next2.endsWith("v8"))) {
                                        sVarA.f31257y = true;
                                    }
                                    if (sVarA.f31254v) {
                                        arrayList4.add(next2);
                                    }
                                    if (!sVarA.f31257y) {
                                        arrayList3.add(sVarA);
                                    }
                                    int iIndexOf = listA.indexOf(sVarA);
                                    if (iIndexOf < 0 || !sVarA.f31257y) {
                                        it = itKeys2;
                                        if (sVarA.f31257y) {
                                            arrayList2.add(sVarA);
                                        }
                                    } else {
                                        s sVar = listA.get(iIndexOf);
                                        if (dl.b(sVarA.f31236d, sVar.f31236d)) {
                                            int i4 = sVarA.f31256x;
                                            if (i4 != sVar.f31256x) {
                                                this.f31302l.c(sVarA.f31233a, i4);
                                            }
                                            if (!this.f31302l.d(sVarA.f31233a)) {
                                                arrayList2.add(sVarA);
                                            }
                                            it = itKeys2;
                                            i2 = iIndexOf;
                                        } else {
                                            it = itKeys2;
                                            this.f31304n.a(dn.f31141b, System.currentTimeMillis(), true);
                                            int i5 = sVarA.f31256x;
                                            if (i5 != sVar.f31256x) {
                                                this.f31302l.c(sVarA.f31233a, i5);
                                            }
                                            arrayList.add(sVarA);
                                            i2 = iIndexOf;
                                        }
                                        listA.remove(i2);
                                    }
                                    itKeys2 = it;
                                }
                            }
                            for (s sVar2 : listA) {
                                if (!arrayList4.contains(sVar2.f31235c)) {
                                    List<Integer> list = this.f31299i;
                                    if (list != null) {
                                        list.add(Integer.valueOf(sVar2.f31233a));
                                    }
                                    this.f31301k.a(sVar2.f31235c);
                                }
                            }
                            int size = arrayList3.size();
                            int i6 = 0;
                            while (i6 < size) {
                                Object obj = arrayList3.get(i6);
                                i6++;
                                s sVar3 = (s) obj;
                                if (!arrayList4.contains(sVar3.f31235c)) {
                                    List<Integer> list2 = this.f31299i;
                                    if (list2 != null) {
                                        list2.add(Integer.valueOf(sVar3.f31233a));
                                    }
                                    this.f31301k.a(sVar3.f31235c);
                                }
                            }
                            ArrayList arrayList5 = new ArrayList();
                            if (arrayList2.size() != 0) {
                                arrayList5.addAll(arrayList2);
                            }
                            if (arrayList.size() != 0) {
                                arrayList5.addAll(arrayList);
                            }
                            int size2 = arrayList5.size();
                            int i7 = 0;
                            while (i7 < size2) {
                                Object obj2 = arrayList5.get(i7);
                                i7++;
                                s sVar4 = (s) obj2;
                                if (sVar4 != null) {
                                    if (arrayList.contains(sVar4)) {
                                        this.f31301k.a(sVar4.f31233a, sVar4.f31236d, (PackageInfo) null);
                                    } else if (arrayList2.contains(sVar4)) {
                                        a(sVar4);
                                    }
                                }
                            }
                        } else {
                            this.f31301k.c();
                            this.f31302l.b();
                        }
                    }
                }
            } catch (Throwable unused2) {
                this.f31301k.c();
                this.f31302l.b();
            }
        } finally {
            WeaponHI.iD();
        }
    }

    private void a(s sVar) {
        try {
            if (!TextUtils.isEmpty(sVar.f31242j) && sVar.f31242j.length() >= 10) {
                if (!this.f31303m.exists()) {
                    this.f31303m.mkdir();
                }
                File file = new File(this.f31303m, sVar.f31233a + "-" + sVar.f31236d + ".tmp");
                File file2 = new File(this.f31303m, sVar.f31233a + "-" + sVar.f31236d + ".zip");
                boolean zA = l.a(this.f31300j).a(sVar.f31241i, file);
                if (!zA) {
                    zA = l.a(this.f31300j).a(sVar.f31241i, file);
                }
                if (zA) {
                    if (file2.exists()) {
                        file2.delete();
                    }
                    int iC = C1240b.c(file.getAbsolutePath(), file2.getAbsolutePath(), c.a("a3NyaXNrY3RsYnVzaW5zc3Z4cHprd3NwYWlvcXBrc3M=".getBytes("utf-8"), 2));
                    if (iC != 0) {
                        if (file2.exists()) {
                            file2.delete();
                        }
                        zA = false;
                    }
                    if (iC == 0 && file.exists()) {
                        file.delete();
                    }
                } else {
                    this.f31308s.put(Integer.valueOf(sVar.f31233a), new a(3));
                }
                String strA = f.a(file2);
                if (zA && sVar.f31242j.equals(strA)) {
                    dl.a(file2.getAbsolutePath(), Boolean.TRUE);
                    sVar.f31237e = file2.getAbsolutePath();
                    if (this.f31301k.a(sVar, (String) null, (String) null)) {
                        Map<Integer, a> map = this.f31308s;
                        if (map != null && !map.containsKey(Integer.valueOf(sVar.f31233a))) {
                            this.f31308s.put(Integer.valueOf(sVar.f31233a), new a(1));
                        }
                        this.f31304n.a(dn.f31141b, System.currentTimeMillis(), true);
                        return;
                    }
                    Map<Integer, a> map2 = this.f31308s;
                    if (map2 != null && !map2.containsKey(Integer.valueOf(sVar.f31233a))) {
                        this.f31308s.put(Integer.valueOf(sVar.f31233a), new a(4));
                    }
                    this.f31301k.a(sVar.f31233a, sVar.f31236d, (PackageInfo) null);
                    return;
                }
                if (file.exists()) {
                    file.length();
                    file.delete();
                }
                this.f31301k.a(sVar.f31233a, sVar.f31236d, (PackageInfo) null);
                return;
            }
            this.f31301k.a(sVar.f31233a, sVar.f31236d, (PackageInfo) null);
        } catch (Throwable unused) {
            this.f31301k.a(sVar.f31233a, sVar.f31236d, (PackageInfo) null);
        }
    }
}
