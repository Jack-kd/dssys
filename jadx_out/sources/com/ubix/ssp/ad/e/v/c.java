package com.ubix.ssp.ad.e.v;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.ubix.ssp.ad.e.a0.k;
import com.ubix.ssp.open.AdError;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static ExecutorService f47216a;

    /* renamed from: b, reason: collision with root package name */
    public static c f47217b;

    /* renamed from: c, reason: collision with root package name */
    public static HandlerC0823c f47218c;

    /* renamed from: d, reason: collision with root package name */
    private static ConcurrentHashMap<Integer, CopyOnWriteArrayList<com.ubix.ssp.ad.e.v.b>> f47219d = new ConcurrentHashMap<>();

    /* renamed from: e, reason: collision with root package name */
    public static ConcurrentMap<Integer, d> f47220e = new ConcurrentHashMap();

    public class a implements ThreadFactory {
        public a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "Ubix.ResourceDownloadThread");
        }
    }

    public class b implements com.ubix.ssp.ad.e.v.b {

        /* renamed from: a, reason: collision with root package name */
        com.ubix.ssp.ad.e.v.b f47222a;

        public b(com.ubix.ssp.ad.e.v.b bVar) {
            this.f47222a = bVar;
        }

        @Override // com.ubix.ssp.ad.e.v.b
        public void a(String str, AdError adError, String str2) {
            Message message = new Message();
            message.what = 200;
            Bundle bundle = new Bundle();
            bundle.putString("url", str);
            bundle.putSerializable("listener", this.f47222a);
            bundle.putSerializable("error", adError);
            bundle.putSerializable("filePath", str2);
            message.setData(bundle);
            c.f47218c.sendMessage(message);
        }

        @Override // com.ubix.ssp.ad.e.v.b
        public void a(String str, String str2) {
            Message message = new Message();
            message.what = 100;
            Bundle bundle = new Bundle();
            bundle.putString("url", str);
            bundle.putSerializable("listener", this.f47222a);
            bundle.putSerializable("filePath", str2);
            message.setData(bundle);
            c.f47218c.sendMessage(message);
        }
    }

    /* renamed from: com.ubix.ssp.ad.e.v.c$c, reason: collision with other inner class name */
    public static class HandlerC0823c extends Handler {

        /* renamed from: a, reason: collision with root package name */
        SoftReference<c> f47224a;

        public HandlerC0823c(c cVar) {
            super(Looper.getMainLooper());
            this.f47224a = new SoftReference<>(cVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Bundle data;
            super.handleMessage(message);
            try {
                SoftReference<c> softReference = this.f47224a;
                if (softReference == null || softReference.get() == null || (data = message.getData()) == null) {
                    return;
                }
                com.ubix.ssp.ad.e.v.b bVar = (com.ubix.ssp.ad.e.v.b) data.getSerializable("listener");
                String string = data.getString("url");
                String string2 = data.getString("filePath");
                int i2 = message.what;
                if (i2 == 100) {
                    c.f47220e.remove(Integer.valueOf(string.hashCode()));
                    if (bVar != null) {
                        bVar.a(string, string2);
                    }
                    this.f47224a.get().a(string, string2);
                    return;
                }
                if (i2 != 200) {
                    return;
                }
                AdError adError = (AdError) data.getSerializable("error");
                c.f47220e.remove(Integer.valueOf(string.hashCode()));
                if (bVar != null) {
                    bVar.a(string, adError, string2);
                }
                this.f47224a.get().a(string, adError, string2);
            } catch (Exception unused) {
            }
        }
    }

    public c() {
        a();
        f47218c = new HandlerC0823c(this);
    }

    private void a() {
        ExecutorService executorService = f47216a;
        if (executorService == null || executorService.isTerminated() || f47216a.isShutdown()) {
            f47216a = new ThreadPoolExecutor(3, 5, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a());
        }
    }

    public static c b() {
        c cVar = f47217b;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c();
        f47217b = cVar2;
        return cVar2;
    }

    public void a(Context context, String str, int i2, com.ubix.ssp.ad.e.v.b bVar) {
        File fileE;
        if (TextUtils.isEmpty(str)) {
            if (bVar != null) {
                bVar.a(str, com.ubix.ssp.ad.e.a0.a0.a.h(5, "图片资源链接异常"), null);
                return;
            }
            return;
        }
        if (i2 == 1) {
            fileE = k.e(context);
        } else {
            if (i2 != 2) {
                if (bVar != null) {
                    bVar.a(str, com.ubix.ssp.ad.e.a0.a0.a.h(5, "资源下载错误"), null);
                    return;
                }
                return;
            }
            fileE = k.f(context);
        }
        a(str, new File(fileE, str.hashCode() + ""), bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, AdError adError, String str2) {
        int iHashCode = str.hashCode();
        try {
            synchronized (this) {
                try {
                    if (f47219d.get(Integer.valueOf(iHashCode)) != null) {
                        CopyOnWriteArrayList<com.ubix.ssp.ad.e.v.b> copyOnWriteArrayList = f47219d.get(Integer.valueOf(iHashCode));
                        if (copyOnWriteArrayList != null) {
                            Iterator<com.ubix.ssp.ad.e.v.b> it = copyOnWriteArrayList.iterator();
                            while (it.hasNext()) {
                                com.ubix.ssp.ad.e.v.b next = it.next();
                                if (next != null) {
                                    next.a(str, adError, str2);
                                }
                            }
                        }
                        f47219d.remove(Integer.valueOf(iHashCode));
                    }
                } finally {
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(String str, File file, com.ubix.ssp.ad.e.v.b bVar) {
        d dVar;
        d dVar2;
        try {
            int iHashCode = str.hashCode();
            ConcurrentMap<Integer, d> concurrentMap = f47220e;
            if (concurrentMap == null || (dVar2 = concurrentMap.get(Integer.valueOf(iHashCode))) == null) {
                dVar = new d(str, new File(file.getPath() + ".download"), new b(bVar));
                f47220e.put(Integer.valueOf(iHashCode), dVar);
            } else {
                if (dVar2.a() == 2) {
                    if (bVar != null) {
                        bVar.a(str, file.getPath());
                        return;
                    }
                    return;
                }
                if (dVar2.a() == 1) {
                    if (f47219d.get(Integer.valueOf(iHashCode)) == null) {
                        CopyOnWriteArrayList<com.ubix.ssp.ad.e.v.b> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
                        copyOnWriteArrayList.add(bVar);
                        f47219d.put(Integer.valueOf(iHashCode), copyOnWriteArrayList);
                        return;
                    } else {
                        CopyOnWriteArrayList<com.ubix.ssp.ad.e.v.b> copyOnWriteArrayList2 = f47219d.get(Integer.valueOf(iHashCode));
                        if (copyOnWriteArrayList2 != null) {
                            copyOnWriteArrayList2.add(bVar);
                            return;
                        }
                        return;
                    }
                }
                dVar = new d(str, new File(file.getPath() + ".download"), new b(bVar));
                f47220e.put(Integer.valueOf(iHashCode), dVar);
            }
            f47216a.execute(dVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        int iHashCode = str.hashCode();
        try {
            synchronized (this) {
                try {
                    if (f47219d.get(Integer.valueOf(iHashCode)) != null) {
                        CopyOnWriteArrayList<com.ubix.ssp.ad.e.v.b> copyOnWriteArrayList = f47219d.get(Integer.valueOf(iHashCode));
                        if (copyOnWriteArrayList != null) {
                            Iterator<com.ubix.ssp.ad.e.v.b> it = copyOnWriteArrayList.iterator();
                            while (it.hasNext()) {
                                com.ubix.ssp.ad.e.v.b next = it.next();
                                if (next != null) {
                                    next.a(str, str2);
                                }
                            }
                        }
                        f47219d.remove(Integer.valueOf(iHashCode));
                    }
                } finally {
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
