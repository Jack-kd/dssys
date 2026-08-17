package com.anythink.china.c;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.t;
import com.anythink.core.common.f.g;
import com.anythink.core.common.v.ad;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static volatile f f1461a;

    /* renamed from: e, reason: collision with root package name */
    private Context f1465e;

    /* renamed from: b, reason: collision with root package name */
    private final List<Integer> f1462b = new ArrayList(Collections.singletonList(46));

    /* renamed from: d, reason: collision with root package name */
    private final Map<Integer, File> f1464d = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    private final List<com.anythink.core.common.k.d> f1466f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    private long f1467g = e.f1445a;

    /* renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f1463c = new AtomicBoolean(true);

    public static final class b {
        private b() {
        }

        private static void b(ClassLoader classLoader, List<File> list, File file) throws IllegalAccessException, NoSuchFieldException, SecurityException, IOException, IllegalArgumentException {
            Object obj = com.anythink.china.c.c.a(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            com.anythink.china.c.c.a(obj, "dexElements", b(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                if (it.hasNext()) {
                    throw ((IOException) it.next());
                }
            }
        }

        public static /* synthetic */ void a(ClassLoader classLoader, List list, File file) throws IllegalAccessException, NoSuchFieldException, SecurityException, IOException, IllegalArgumentException {
            Object obj = com.anythink.china.c.c.a(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            com.anythink.china.c.c.a(obj, "dexElements", b(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                if (it.hasNext()) {
                    throw ((IOException) it.next());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Object[] b(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) throws NoSuchMethodException, SecurityException {
            Method methodA;
            try {
                methodA = com.anythink.china.c.c.a(obj, "makeDexElements", (Class<?>[]) new Class[]{ArrayList.class, File.class, ArrayList.class});
            } catch (NoSuchMethodException unused) {
                Log.e(i.f2519w, "NoSuchMethodException: makeDexElements(ArrayList,File,ArrayList) failure");
                try {
                    methodA = com.anythink.china.c.c.a(obj, "makeDexElements", (Class<?>[]) new Class[]{List.class, File.class, List.class});
                } catch (NoSuchMethodException e2) {
                    Log.e(i.f2519w, "NoSuchMethodException: makeDexElements(List,File,List) failure");
                    throw e2;
                }
            }
            return (Object[]) methodA.invoke(obj, arrayList, file, arrayList2);
        }
    }

    private f() {
    }

    public static f a() {
        if (f1461a == null) {
            synchronized (f.class) {
                try {
                    if (f1461a == null) {
                        f1461a = new f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1461a;
    }

    private boolean c() {
        return this.f1463c.get();
    }

    private void d() {
        try {
            synchronized (this.f1466f) {
                try {
                    if (!this.f1466f.isEmpty()) {
                        for (int i2 = 0; i2 < this.f1466f.size(); i2++) {
                            com.anythink.core.common.k.d dVar = this.f1466f.get(i2);
                            if (dVar != null) {
                                dVar.a();
                            }
                        }
                        this.f1466f.clear();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void e() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
        } catch (Throwable th) {
            com.anythink.core.common.u.f.a("0", "2", a(this.f1464d), "2", th.getMessage(), String.valueOf(this.f1467g), jElapsedRealtime);
            th.printStackTrace();
        }
        if (this.f1465e == null) {
            return;
        }
        char c2 = 0;
        this.f1463c.set(false);
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(this.f1465e).b(s.b().p());
        if (bVarB != null) {
            this.f1467g = bVarB.a();
        }
        for (Integer num : this.f1462b) {
            String strB = com.anythink.china.c.a.b(this.f1465e, String.valueOf(num));
            if (!TextUtils.isEmpty(strB)) {
                String[] strArrSplit = strB.replaceAll(".jar", "").split("-");
                if (strArrSplit.length == 3) {
                    File fileB = com.anythink.china.c.a.b(this.f1465e, String.valueOf(num), strArrSplit[c2] + "-" + strArrSplit[1]);
                    if (fileB != null) {
                        if (!fileB.getName().equals(strB)) {
                            String[] strArrSplit2 = fileB.getName().replaceAll(".jar", "").split("-");
                            if (strArrSplit2.length == 3) {
                                if (Integer.parseInt(strArrSplit[2]) > Integer.parseInt(strArrSplit2[2])) {
                                    fileB = com.anythink.china.c.a.a(this.f1465e, String.valueOf(num), strB);
                                }
                            } else {
                                fileB = null;
                            }
                        }
                        if (fileB != null) {
                            this.f1464d.put(num, fileB);
                            com.anythink.china.c.a.a(this.f1465e, String.valueOf(num), fileB);
                        }
                    } else {
                        File fileA = com.anythink.china.c.a.a(this.f1465e, String.valueOf(num), strB);
                        if (fileA != null) {
                            this.f1464d.put(num, fileA);
                        }
                    }
                }
            }
            c2 = 0;
        }
        HashMap map = new HashMap();
        if (!this.f1464d.isEmpty()) {
            for (Map.Entry<Integer, File> entry : this.f1464d.entrySet()) {
                Integer key = entry.getKey();
                File value = entry.getValue();
                try {
                    if (Build.VERSION.SDK_INT >= 34) {
                        value.setReadOnly();
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                if (ad.b(this.f1465e, t.b.f3058a, t.a.f3023G.concat(String.valueOf(key)), 2) != 1) {
                    map.put(key, value);
                }
            }
        }
        if (map.isEmpty()) {
            com.anythink.core.common.u.f.a("0", "1", a(this.f1464d), "2", "", String.valueOf(this.f1467g), jElapsedRealtime);
        } else {
            ClassLoader classLoader = this.f1465e.getClassLoader();
            try {
                ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                if (contextClassLoader != null && contextClassLoader != classLoader) {
                    classLoader = contextClassLoader;
                }
            } catch (Throwable unused) {
            }
            try {
                c.a(classLoader, new ArrayList(map.values()), this.f1465e.getCacheDir());
                com.anythink.core.common.u.f.a("0", "0", a(map), "1", "", String.valueOf(this.f1467g), jElapsedRealtime);
            } catch (Throwable th3) {
                com.anythink.core.common.u.f.a("0", "0", a(map), "2", th3.getMessage(), String.valueOf(this.f1467g), jElapsedRealtime);
                th3.printStackTrace();
            }
        }
        this.f1463c.set(true);
    }

    public final Map<Integer, File> b() {
        return this.f1464d;
    }

    public static final class a {
        private a() {
        }

        private static Object[] a(Object obj, ArrayList<File> arrayList, File file) {
            return (Object[]) com.anythink.china.c.c.a(obj, "makeDexElements", (Class<?>[]) new Class[]{ArrayList.class, File.class}).invoke(obj, arrayList, file);
        }

        private static void b(ClassLoader classLoader, List<File> list, File file) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
            Object obj = com.anythink.china.c.c.a(classLoader, "pathList").get(classLoader);
            com.anythink.china.c.c.a(obj, "dexElements", (Object[]) com.anythink.china.c.c.a(obj, "makeDexElements", (Class<?>[]) new Class[]{ArrayList.class, File.class}).invoke(obj, new ArrayList(list), file));
        }

        public static /* synthetic */ void a(ClassLoader classLoader, List list, File file) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
            Object obj = com.anythink.china.c.c.a(classLoader, "pathList").get(classLoader);
            com.anythink.china.c.c.a(obj, "dexElements", (Object[]) com.anythink.china.c.c.a(obj, "makeDexElements", (Class<?>[]) new Class[]{ArrayList.class, File.class}).invoke(obj, new ArrayList(list), file));
        }
    }

    public final void a(Context context) {
        this.f1465e = context;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
        } catch (Throwable th) {
            com.anythink.core.common.u.f.a("0", "2", a(this.f1464d), "2", th.getMessage(), String.valueOf(this.f1467g), jElapsedRealtime);
            th.printStackTrace();
        }
        if (this.f1465e != null) {
            char c2 = 0;
            this.f1463c.set(false);
            com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(this.f1465e).b(s.b().p());
            if (bVarB != null) {
                this.f1467g = bVarB.a();
            }
            for (Integer num : this.f1462b) {
                String strB = com.anythink.china.c.a.b(this.f1465e, String.valueOf(num));
                if (!TextUtils.isEmpty(strB)) {
                    String[] strArrSplit = strB.replaceAll(".jar", "").split("-");
                    if (strArrSplit.length == 3) {
                        File fileB = com.anythink.china.c.a.b(this.f1465e, String.valueOf(num), strArrSplit[c2] + "-" + strArrSplit[1]);
                        if (fileB != null) {
                            if (!fileB.getName().equals(strB)) {
                                String[] strArrSplit2 = fileB.getName().replaceAll(".jar", "").split("-");
                                if (strArrSplit2.length == 3) {
                                    if (Integer.parseInt(strArrSplit[2]) > Integer.parseInt(strArrSplit2[2])) {
                                        fileB = com.anythink.china.c.a.a(this.f1465e, String.valueOf(num), strB);
                                    }
                                } else {
                                    fileB = null;
                                }
                            }
                            if (fileB != null) {
                                this.f1464d.put(num, fileB);
                                com.anythink.china.c.a.a(this.f1465e, String.valueOf(num), fileB);
                            }
                        } else {
                            File fileA = com.anythink.china.c.a.a(this.f1465e, String.valueOf(num), strB);
                            if (fileA != null) {
                                this.f1464d.put(num, fileA);
                            }
                        }
                    }
                }
                c2 = 0;
            }
            HashMap map = new HashMap();
            if (!this.f1464d.isEmpty()) {
                for (Map.Entry<Integer, File> entry : this.f1464d.entrySet()) {
                    Integer key = entry.getKey();
                    File value = entry.getValue();
                    try {
                        if (Build.VERSION.SDK_INT >= 34) {
                            value.setReadOnly();
                        }
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                    if (ad.b(this.f1465e, t.b.f3058a, t.a.f3023G.concat(String.valueOf(key)), 2) != 1) {
                        map.put(key, value);
                    }
                }
            }
            if (!map.isEmpty()) {
                ClassLoader classLoader = this.f1465e.getClassLoader();
                try {
                    ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                    if (contextClassLoader != null && contextClassLoader != classLoader) {
                        classLoader = contextClassLoader;
                    }
                } catch (Throwable unused) {
                }
                try {
                    c.a(classLoader, new ArrayList(map.values()), this.f1465e.getCacheDir());
                    com.anythink.core.common.u.f.a("0", "0", a(map), "1", "", String.valueOf(this.f1467g), jElapsedRealtime);
                } catch (Throwable th3) {
                    com.anythink.core.common.u.f.a("0", "0", a(map), "2", th3.getMessage(), String.valueOf(this.f1467g), jElapsedRealtime);
                    th3.printStackTrace();
                }
            } else {
                com.anythink.core.common.u.f.a("0", "1", a(this.f1464d), "2", "", String.valueOf(this.f1467g), jElapsedRealtime);
            }
            this.f1463c.set(true);
            d();
            e.a().b();
        }
        d();
        e.a().b();
    }

    public static final class c {
        private c() {
        }

        private static Object[] a(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) throws NoSuchMethodException, SecurityException {
            Method methodA;
            try {
                methodA = com.anythink.china.c.c.a(obj, "makePathElements", (Class<?>[]) new Class[]{List.class, File.class, List.class});
            } catch (NoSuchMethodException unused) {
                Log.e(i.f2519w, "NoSuchMethodException: makePathElements(List,File,List) failure");
                try {
                    methodA = com.anythink.china.c.c.a(obj, "makePathElements", (Class<?>[]) new Class[]{ArrayList.class, File.class, ArrayList.class});
                } catch (NoSuchMethodException unused2) {
                    Log.e(i.f2519w, "NoSuchMethodException: makeDexElements(ArrayList,File,ArrayList) failure");
                    try {
                        Log.e(i.f2519w, "NoSuchMethodException: try use v19 instead");
                        return b.b(obj, arrayList, file, arrayList2);
                    } catch (NoSuchMethodException e2) {
                        Log.e(i.f2519w, "NoSuchMethodException: makeDexElements(List,File,List) failure");
                        throw e2;
                    }
                }
            }
            return (Object[]) methodA.invoke(obj, arrayList, file, arrayList2);
        }

        private static void b(ClassLoader classLoader, List<File> list, File file) throws IllegalAccessException, NoSuchFieldException, SecurityException, IOException, IllegalArgumentException {
            Object obj = com.anythink.china.c.c.a(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            com.anythink.china.c.c.a(obj, "dexElements", a(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                if (it.hasNext()) {
                    throw ((IOException) it.next());
                }
            }
        }

        public static /* synthetic */ void a(ClassLoader classLoader, List list, File file) throws IllegalAccessException, NoSuchFieldException, SecurityException, IOException, IllegalArgumentException {
            Object obj = com.anythink.china.c.c.a(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            com.anythink.china.c.c.a(obj, "dexElements", a(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                if (it.hasNext()) {
                    throw ((IOException) it.next());
                }
            }
        }
    }

    public final String a(Map<Integer, File> map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    JSONObject jSONObject = new JSONObject();
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry<Integer, File> entry : map.entrySet()) {
                        Integer key = entry.getKey();
                        File value = entry.getValue();
                        JSONObject jSONObject3 = new JSONObject();
                        try {
                            jSONObject3.put("cli_ver", value.getName().replaceAll(".jar", ""));
                            jSONObject3.put("adn_ver", a().a(key));
                            jSONObject3.put(TKDownloadReason.KSAD_TK_MD5, com.anythink.china.c.a.a(value.getAbsolutePath()));
                            jSONObject3.put("dl_ts", value.lastModified());
                            jSONObject3.put(g.a.f3252D, value.length());
                            Context context = this.f1465e;
                            if (context != null) {
                                jSONObject3.put("forbid", ad.b(context, t.b.f3058a, t.a.f3023G.concat(String.valueOf(key)), 2));
                            }
                            jSONObject2.put(String.valueOf(key), jSONObject3);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    jSONObject.put("hf_items", jSONObject2);
                    return jSONObject.toString();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return "";
    }

    private static void a(ClassLoader classLoader, List<File> list, File file) throws IllegalAccessException, NoSuchFieldException, SecurityException, IOException, IllegalArgumentException {
        c.a(classLoader, list, file);
    }

    private String a(Integer num) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (num != null && this.f1462b.contains(num) && num.intValue() == 46) {
            try {
                Method method = TTAdSdk.class.getMethod("getAdManager", null);
                method.setAccessible(true);
                Object objInvoke = method.invoke(TTAdSdk.class, null);
                if (objInvoke != null) {
                    Method method2 = objInvoke.getClass().getMethod("getSDKVersion", null);
                    method2.setAccessible(true);
                    return (String) method2.invoke(objInvoke, null);
                }
                return "";
            } catch (Exception unused) {
                return "";
            }
        }
        return "";
    }

    public final void a(com.anythink.core.common.k.d dVar) {
        if (dVar != null) {
            if (this.f1463c.get()) {
                dVar.a();
                return;
            }
            synchronized (this.f1466f) {
                try {
                    if (!this.f1466f.contains(dVar)) {
                        this.f1466f.add(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
