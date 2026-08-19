package com.smartdigimkt.f;

import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import com.anythink.core.common.f.g;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class u {

    /* renamed from: g, reason: collision with root package name */
    public static volatile u f40171g;

    /* renamed from: e, reason: collision with root package name */
    public Context f40176e;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f40172a = new ArrayList(Collections.singletonList("1"));

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f40175d = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f40177f = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f40173b = new AtomicBoolean(false);

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f40174c = new AtomicBoolean(false);

    /* JADX WARN: Removed duplicated region for block: B:14:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.smartdigimkt.f.u r11, java.util.ArrayList r12) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.f.u.a(com.smartdigimkt.f.u, java.util.ArrayList):void");
    }

    public final void b() {
        try {
            synchronized (this.f40177f) {
                try {
                    if (!this.f40177f.isEmpty()) {
                        for (int i2 = 0; i2 < this.f40177f.size(); i2++) {
                            b bVar = (b) this.f40177f.get(i2);
                            if (bVar != null) {
                                h hVar = bVar.f40119a.f40121b;
                                String str = hVar.f40131a;
                                hVar.f40135e.set(true);
                                c cVar = bVar.f40119a;
                                cVar.f40121b.a(cVar.f40120a);
                            }
                        }
                        this.f40177f.clear();
                    }
                } finally {
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static String b(HashMap map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    JSONObject jSONObject = new JSONObject();
                    JSONArray jSONArray = new JSONArray();
                    for (Map.Entry entry : map.entrySet()) {
                        File file = (File) entry.getValue();
                        JSONObject jSONObject2 = new JSONObject();
                        try {
                            jSONObject2.put("cli_ver", file.getName().replaceAll(".jar", ""));
                            jSONObject2.put("adx_ver", "UA_6.5.77");
                            jSONArray.put(jSONObject2);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put("pg_items", jSONArray);
                    }
                    return jSONObject.toString();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return "";
    }

    public static u a() {
        if (f40171g == null) {
            synchronized (u.class) {
                try {
                    if (f40171g == null) {
                        f40171g = new u();
                    }
                } finally {
                }
            }
        }
        return f40171g;
    }

    public final void a(b bVar) {
        if (this.f40174c.get()) {
            h hVar = bVar.f40119a.f40121b;
            String str = hVar.f40131a;
            hVar.f40135e.set(true);
            c cVar = bVar.f40119a;
            cVar.f40121b.a(cVar.f40120a);
            return;
        }
        synchronized (this.f40177f) {
            try {
                if (!this.f40177f.contains(bVar)) {
                    this.f40177f.add(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(Context context) {
        if (this.f40173b.get()) {
            return;
        }
        this.f40173b.set(true);
        this.f40176e = context;
        ArrayList arrayList = this.f40172a;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            String str = (String) obj;
            File file = null;
            try {
                File fileA = j.a(this.f40176e, String.valueOf(str));
                if (fileA.exists() && fileA.isDirectory()) {
                    File[] fileArrListFiles = fileA.listFiles();
                    if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                        File file2 = null;
                        for (File file3 : fileArrListFiles) {
                            if (file3.isFile() && file3.getName().endsWith(com.sigmob.sdk.archives.d.f35407d) && (file2 == null || file3.lastModified() > file2.lastModified())) {
                                file2 = file3;
                            }
                        }
                        if (file2 != null) {
                            file2.getName();
                        }
                        file = file2;
                    }
                } else {
                    fileA.getAbsolutePath();
                }
            } catch (Throwable unused) {
            }
            if (file != null) {
                this.f40175d.put(str, file);
                j.a(this.f40176e, String.valueOf(str), file);
                file.getName();
            }
        }
        if (r.f40164f == null) {
            synchronized (r.class) {
                try {
                    if (r.f40164f == null) {
                        r.f40164f = new r();
                    }
                } finally {
                }
            }
        }
        r rVar = r.f40164f;
        Context context2 = this.f40176e;
        s sVar = new s(this);
        rVar.f40168d = context2;
        rVar.f40165a = sVar;
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            rVar.a();
            String.valueOf(com.anythink.core.common.g.c.f3507a);
            com.smartdigimkt.y3.h.a("1", "0", "", "", "", jElapsedRealtime);
        } catch (Throwable unused2) {
        }
    }

    public static String a(HashMap map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    JSONObject jSONObject = new JSONObject();
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry entry : map.entrySet()) {
                        String str = (String) entry.getKey();
                        File file = (File) entry.getValue();
                        JSONObject jSONObject3 = new JSONObject();
                        try {
                            jSONObject3.put("cli_ver", file.getName().replaceAll(".jar", ""));
                            jSONObject3.put("adn_ver", "UA_6.5.77");
                            jSONObject3.put(TKDownloadReason.KSAD_TK_MD5, j.a(file.getAbsolutePath()));
                            jSONObject3.put("dl_ts", file.lastModified());
                            jSONObject3.put(g.a.f3252D, file.length());
                            jSONObject2.put(String.valueOf(str), jSONObject3);
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

    public static void a(ClassLoader classLoader, ArrayList arrayList, File file) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IOException, IllegalArgumentException {
        Object[] objArrA;
        Method methodA;
        Object obj = m.a(classLoader, "pathList").get(classLoader);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList(arrayList);
        try {
            methodA = m.a(obj, "makePathElements", List.class, File.class, List.class);
        } catch (NoSuchMethodException unused) {
            Log.e("sdm_plugin", "NoSuchMethodException: makePathElements(List,File,List) failure");
            try {
                methodA = m.a(obj, "makePathElements", ArrayList.class, File.class, ArrayList.class);
            } catch (NoSuchMethodException unused2) {
                Log.e("sdm_plugin", "NoSuchMethodException: makeDexElements(ArrayList,File,ArrayList) failure");
                try {
                    Log.e("sdm_plugin", "NoSuchMethodException: try use v19 instead");
                    objArrA = t.a(obj, arrayList3, file, arrayList2);
                } catch (NoSuchMethodException e2) {
                    Log.e("sdm_plugin", "NoSuchMethodException: makeDexElements(List,File,List) failure");
                    throw e2;
                }
            }
        }
        objArrA = (Object[]) methodA.invoke(obj, arrayList3, file, arrayList2);
        m.a(obj, objArrA);
        if (arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            if (it.hasNext()) {
                throw ((IOException) it.next());
            }
        }
    }
}
