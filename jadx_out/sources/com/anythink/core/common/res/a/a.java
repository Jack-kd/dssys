package com.anythink.core.common.res.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.d.s;
import com.anythink.core.common.res.a.b;
import com.anythink.core.common.res.d;
import com.anythink.core.common.res.e;
import com.anythink.core.common.v.n;
import java.io.File;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    private static final String f7345b = "H5TemplateLoader";

    /* renamed from: c, reason: collision with root package name */
    private static volatile a f7346c;

    /* renamed from: a, reason: collision with root package name */
    Context f7347a;

    /* renamed from: d, reason: collision with root package name */
    private final ConcurrentHashMap<String, List<InterfaceC0075a>> f7348d = new ConcurrentHashMap<>();

    /* renamed from: e, reason: collision with root package name */
    private final ConcurrentHashMap<String, Long> f7349e = new ConcurrentHashMap<>();

    /* renamed from: com.anythink.core.common.res.a.a$3, reason: invalid class name */
    public class AnonymousClass3 implements b.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f7363a;

        public AnonymousClass3(e eVar) {
            this.f7363a = eVar;
        }

        @Override // com.anythink.core.common.res.a.b.a
        public final void a() throws NoSuchAlgorithmException {
            a.this.a(this.f7363a.f7467h);
        }

        @Override // com.anythink.core.common.res.a.b.a
        public final void a(e eVar, String str) {
            a.this.a(eVar.f7467h, 1, str);
        }
    }

    /* renamed from: com.anythink.core.common.res.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0075a {
        void a();

        void b();
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static final int f7366a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f7367b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final int f7368c = 3;

        /* renamed from: d, reason: collision with root package name */
        public static final int f7369d = 4;

        /* renamed from: e, reason: collision with root package name */
        public static final int f7370e = 5;

        /* renamed from: f, reason: collision with root package name */
        public static final int f7371f = 6;

        /* renamed from: g, reason: collision with root package name */
        public static final int f7372g = 7;
    }

    private a(Context context) {
        if (context != null) {
            this.f7347a = context.getApplicationContext();
        } else {
            this.f7347a = s.b().g();
        }
    }

    private void b(String str) {
        String strA = d.a(this.f7347a).a(str);
        if (TextUtils.isEmpty(strA)) {
            a(str, 3, "h5temp html file not exist");
        } else {
            a(str, strA);
        }
    }

    private static a a(Context context) {
        if (f7346c == null) {
            synchronized (a.class) {
                try {
                    if (f7346c == null) {
                        f7346c = new a(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7346c;
    }

    private void a(String str, String str2) {
        LinkedList linkedList;
        final String str3;
        final String str4;
        synchronized (this.f7348d) {
            File file = new File(d.a(this.f7347a).b(5, n.a(str)));
            if (file.exists()) {
                file.delete();
            }
            try {
                linkedList = (LinkedList) this.f7348d.remove(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (linkedList != null) {
                Long l2 = this.f7349e.get(str);
                final long jCurrentTimeMillis = l2 != null ? System.currentTimeMillis() - l2.longValue() : 0L;
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    final InterfaceC0075a interfaceC0075a = (InterfaceC0075a) it.next();
                    if (interfaceC0075a != null) {
                        s.b();
                        str3 = str;
                        str4 = str2;
                        s.b(new Runnable() { // from class: com.anythink.core.common.res.a.a.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                TextUtils.isEmpty(str4);
                            }
                        });
                    } else {
                        str3 = str;
                        str4 = str2;
                    }
                    str2 = str4;
                    str = str3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i2, String str2) {
        final String str3;
        final int i3;
        final String str4;
        synchronized (this.f7348d) {
            try {
                String strA = n.a(str);
                File file = new File(d.a(this.f7347a).b(5, strA));
                if (file.exists()) {
                    file.delete();
                }
                File file2 = new File(d.a(this.f7347a).b(6, strA));
                if (file2.exists()) {
                    file2.delete();
                }
                LinkedList linkedList = (LinkedList) this.f7348d.remove(str);
                if (linkedList != null) {
                    Iterator it = linkedList.iterator();
                    while (it.hasNext()) {
                        final InterfaceC0075a interfaceC0075a = (InterfaceC0075a) it.next();
                        if (interfaceC0075a != null) {
                            s.b();
                            str3 = str;
                            i3 = i2;
                            str4 = str2;
                            s.b(new Runnable() { // from class: com.anythink.core.common.res.a.a.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                }
                            });
                        } else {
                            str3 = str;
                            i3 = i2;
                            str4 = str2;
                        }
                        str = str3;
                        i2 = i3;
                        str2 = str4;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a(String str, InterfaceC0075a interfaceC0075a) {
        if (interfaceC0075a != null && !TextUtils.isEmpty(str) && str.endsWith(".zip") && TextUtils.isEmpty(d.a(s.b().g()).a(str))) {
            synchronized (this.f7348d) {
                try {
                    if (!this.f7349e.contains(str)) {
                        this.f7349e.put(str, Long.valueOf(System.currentTimeMillis()));
                    }
                    if (!this.f7348d.containsKey(str)) {
                        LinkedList linkedList = new LinkedList();
                        linkedList.add(interfaceC0075a);
                        this.f7348d.put(str, linkedList);
                        String strA = n.a(str);
                        if (TextUtils.isEmpty(strA) ? false : new File(d.a(s.b().g()).b(5, strA)).exists()) {
                            a(str);
                        } else {
                            e eVar = new e(5, str);
                            com.anythink.core.common.res.a.b bVar = new com.anythink.core.common.res.a.b(eVar);
                            bVar.f7374b = new AnonymousClass3(eVar);
                            bVar.d();
                        }
                        return;
                    }
                    LinkedList linkedList2 = (LinkedList) this.f7348d.get(str);
                    if (linkedList2 != null && !linkedList2.contains(interfaceC0075a)) {
                        linkedList2.add(interfaceC0075a);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void a(e eVar) {
        com.anythink.core.common.res.a.b bVar = new com.anythink.core.common.res.a.b(eVar);
        bVar.f7374b = new AnonymousClass3(eVar);
        bVar.d();
    }

    private void a() {
        try {
            ConcurrentHashMap<String, List<InterfaceC0075a>> concurrentHashMap = this.f7348d;
            if (concurrentHashMap != null) {
                concurrentHashMap.clear();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) throws NoSuchAlgorithmException {
        String strA = n.a(str);
        String strB = d.a(this.f7347a).b(5, strA);
        String strB2 = d.a(this.f7347a).b(6, strA);
        File file = new File(strB2);
        if (file.exists()) {
            file.delete();
        }
        new com.anythink.core.common.v.a();
        if (com.anythink.core.common.v.a.a(strB, strB2) == 0) {
            b(str);
        } else {
            a(str, 2, "H5temp url unzip fail");
        }
    }
}
