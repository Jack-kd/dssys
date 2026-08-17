package com.beizi.fusion;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.beizi.fusion.va;
import com.beizi.fusion.x4;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class va {

    /* renamed from: b, reason: collision with root package name */
    private final long f16650b = 1048576;

    /* renamed from: e, reason: collision with root package name */
    protected final Object f16653e = new Object();

    /* renamed from: a, reason: collision with root package name */
    private final long f16649a = a() * 1048576;

    /* renamed from: c, reason: collision with root package name */
    private final Map f16651c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private final Map f16652d = new HashMap();

    public static class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final File f16654a;

        /* renamed from: b, reason: collision with root package name */
        private final long f16655b;

        /* renamed from: c, reason: collision with root package name */
        private final int f16656c;

        private void a() {
            File[] fileArrA = e8.a(this.f16654a, n6.a(7));
            if (fileArrA == null || fileArrA.length <= 0) {
                return;
            }
            a(fileArrA);
        }

        @Override // java.lang.Runnable
        public void run() {
            File file = this.f16654a;
            if (file != null && file.exists() && this.f16654a.isDirectory()) {
                a();
                b();
            }
        }

        private b(File file, long j2) {
            this.f16656c = 7;
            this.f16654a = file;
            this.f16655b = j2;
        }

        private void b() {
            if (e8.a(this.f16654a) > this.f16655b) {
                ArrayList arrayList = new ArrayList();
                File[] fileArrListFiles = this.f16654a.listFiles();
                if (fileArrListFiles != null) {
                    Collections.addAll(arrayList, fileArrListFiles);
                    Collections.sort(arrayList, new Comparator() { // from class: com.beizi.fusion.U
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return va.b.a((File) obj, (File) obj2);
                        }
                    });
                    int size = arrayList.size() / 2;
                    if (size > 0) {
                        File[] fileArr = new File[size];
                        for (int i2 = 0; i2 < size; i2++) {
                            fileArr[i2] = (File) arrayList.get(i2);
                        }
                        a(fileArr);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(File file, File file2) {
            return file.lastModified() < file2.lastModified() ? 1 : -1;
        }

        private void a(File[] fileArr) {
            if (fileArr != null) {
                for (File file : fileArr) {
                    try {
                        file.delete();
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }

    public interface c {
        void a(String str);

        void a(String str, Object obj);
    }

    public static abstract class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        protected final String f16657a;

        /* renamed from: b, reason: collision with root package name */
        protected final File f16658b;

        /* renamed from: c, reason: collision with root package name */
        protected final String f16659c;

        /* renamed from: d, reason: collision with root package name */
        protected c f16660d;

        public d(String str, File file, String str2) {
            this.f16657a = str;
            this.f16658b = file;
            this.f16659c = str2;
        }

        public void a(c cVar) {
            this.f16660d = cVar;
        }
    }

    private Set c(String str) {
        synchronized (this.f16652d) {
            try {
                Set set = (Set) this.f16652d.get(str);
                if (set == null) {
                    return null;
                }
                HashSet hashSet = new HashSet(set);
                set.clear();
                return hashSet;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean d(String str) {
        boolean zContainsKey;
        synchronized (this.f16651c) {
            zContainsKey = this.f16651c.containsKey(b(str));
        }
        return zContainsKey;
    }

    public abstract int a();

    public abstract d a(String str, File file, String str2);

    public abstract File a(Context context, sh shVar);

    public void a(Context context, String str, sh shVar) {
        if (TextUtils.isEmpty(str) || c(context, str, shVar) || d(str) || context == null) {
            return;
        }
        String strA = a(str);
        File fileA = a(context, shVar);
        if (fileA != null) {
            String strB = b(str);
            d dVarA = a(str, new File(fileA, strA), strB);
            a(strB, dVarA);
            ((hb) fn.a().b(context.getApplicationContext())).c(dVarA);
        }
    }

    public File b(Context context, String str, sh shVar) {
        File fileA = a(context, shVar);
        if (fileA != null) {
            return new File(fileA, a(str));
        }
        return null;
    }

    public void e(String str) {
        synchronized (this.f16651c) {
            this.f16651c.remove(str);
        }
    }

    public String b(String str) {
        return th.a(str);
    }

    private boolean c(Context context, String str, sh shVar) {
        File fileA = a(context, shVar);
        if (fileA == null || !fileA.exists()) {
            return false;
        }
        return e8.b(fileA, a(str));
    }

    public void a(Context context, String str, sh shVar, ne neVar, oe oeVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strB = b(str);
        synchronized (this.f16653e) {
            try {
                if (d(str)) {
                    a(strB, neVar);
                    if (oeVar != null) {
                        oeVar.b(str);
                    }
                } else {
                    File fileA = a(context, shVar);
                    if (fileA != null) {
                        File file = new File(fileA, a(str));
                        if (!file.exists()) {
                            a(strB, neVar);
                            a(context, str, shVar);
                        } else if (neVar != null) {
                            neVar.a(strB, file);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(Context context) {
        File fileA = a(context, sh.TEMPORARY);
        if (fileA != null) {
            a(context, fileA);
        }
    }

    public void a(String str, Bitmap bitmap) {
        Set<ne> setC = c(str);
        if (setC == null || setC.isEmpty()) {
            return;
        }
        for (ne neVar : setC) {
            if (neVar != null) {
                if (bitmap != null && (neVar instanceof x4.c)) {
                    ((x4.c) neVar).a(str, bitmap);
                } else {
                    neVar.a(str);
                }
            }
        }
    }

    private void a(String str, d dVar) {
        synchronized (this.f16651c) {
            this.f16651c.put(str, dVar);
        }
    }

    private void a(String str, ne neVar) {
        synchronized (this.f16652d) {
            if (neVar != null) {
                try {
                    Set hashSet = (Set) this.f16652d.get(str);
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(neVar);
                    this.f16652d.put(str, hashSet);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void a(String str, File file) {
        Set<ne> setC = c(str);
        if (setC != null) {
            for (ne neVar : setC) {
                if (neVar != null) {
                    if (file != null && file.exists()) {
                        neVar.a(str, file);
                    } else {
                        neVar.a(str);
                    }
                }
            }
        }
    }

    private void a(Context context, File file) {
        ((hb) fn.a().b(context.getApplicationContext())).c(new b(file, this.f16649a));
    }

    public String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            String strC = qo.c(str);
            if (!TextUtils.isEmpty(strC)) {
                return th.a(str) + com.anythink.core.common.d.i.f2495E + strC;
            }
            return "";
        }
        return "";
    }
}
