package H0;

import android.text.TextUtils;
import com.flutter.task.flutter_curl_task.DownloadService;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes3.dex */
public class f extends Thread implements h {

    /* renamed from: b, reason: collision with root package name */
    public final b f112b;

    /* renamed from: c, reason: collision with root package name */
    public final H0.a f113c;

    /* renamed from: d, reason: collision with root package name */
    public volatile int f114d = 0;

    /* renamed from: e, reason: collision with root package name */
    public volatile int f115e = 0;

    /* renamed from: f, reason: collision with root package name */
    public volatile long f116f = 0;

    /* renamed from: g, reason: collision with root package name */
    public volatile boolean f117g = false;

    /* renamed from: h, reason: collision with root package name */
    public volatile int f118h = 0;

    /* renamed from: i, reason: collision with root package name */
    public ExecutorService f119i = Executors.newFixedThreadPool(8);

    public class a implements H0.a {
        @Override // H0.a
        public void a(String str, int i2, long j2) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            if (i2 < 100) {
                arrayList.add(2);
            } else {
                arrayList.add(3);
                DownloadService.f30750b.remove(str);
            }
            arrayList.add(Integer.valueOf(i2));
            arrayList.add(Long.valueOf(j2));
            arrayList.add(0);
            d.d().i(arrayList);
        }

        @Override // H0.a
        public void onError(String str, String str2) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            arrayList.add(4);
            arrayList.add(0);
            arrayList.add(0);
            arrayList.add(0);
            DownloadService.f30750b.remove(str);
            d.d().i(arrayList);
        }
    }

    public f(b bVar, H0.a aVar) {
        this.f112b = bVar;
        this.f113c = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0213 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x024d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x022e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01df A[EXC_TOP_SPLITTER, PHI: r3
      0x01df: PHI (r3v11 ??) = (r3v8 ??), (r3v9 ??), (r3v10 ??), (r3v23 ??) binds: [B:97:0x0200, B:105:0x021b, B:113:0x0236, B:86:0x01dd] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0257 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x01f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:158:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v19, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v22, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(H0.f r9, java.io.File r10, I0.b r11, java.lang.String r12, I0.a r13, long[] r14, java.util.concurrent.CountDownLatch r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 679
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: H0.f.a(H0.f, java.io.File, I0.b, java.lang.String, I0.a, long[], java.util.concurrent.CountDownLatch):void");
    }

    public static h b(b bVar) {
        f fVar = new f(bVar, new a());
        fVar.start();
        return fVar;
    }

    public final void c(final CountDownLatch countDownLatch, final I0.a aVar, String str) {
        final File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        if (!TextUtils.isEmpty(aVar.e())) {
            try {
                J0.b.d(aVar.e(), str + File.separator + "key.key");
            } catch (IOException e2) {
                e2.printStackTrace();
                this.f113c.onError(this.f112b.a(), "下载失败: " + e2.getMessage());
            } catch (Exception e3) {
                e3.printStackTrace();
                this.f113c.onError(this.f112b.a(), "下载失败: " + e3.getMessage());
            }
        }
        this.f115e = aVar.i().size();
        final String strB = aVar.b();
        final long[] jArr = {0};
        for (final I0.b bVar : aVar.i()) {
            this.f119i.execute(new Runnable() { // from class: H0.e
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    f.a(this.f105b, file, bVar, strB, aVar, jArr, countDownLatch);
                }
            });
        }
    }

    @Override // H0.h
    public void cancel() {
        this.f117g = true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Throwable {
        String str = this.f112b.c() + File.separator + this.f112b.a() + "-plus";
        try {
            I0.a aVarC = J0.b.c(this.f112b.e(), this.f112b.b());
            aVarC.q(str);
            CountDownLatch countDownLatch = new CountDownLatch(aVarC.i().size());
            c(countDownLatch, aVarC, str);
            countDownLatch.await();
            aVarC.k(this.f112b.c());
            aVarC.n(J0.b.a(new File(this.f112b.c()), this.f112b.a(), aVarC).getPath());
            Iterator it = aVarC.i().iterator();
            long jB = 0;
            while (it.hasNext()) {
                jB += ((I0.b) it.next()).b();
            }
            this.f113c.a(this.f112b.d(), 100, jB);
        } catch (IOException e2) {
            e2.printStackTrace();
            this.f113c.onError(this.f112b.a(), "下载失败: " + e2.getMessage());
        } catch (InterruptedException e3) {
            e3.printStackTrace();
            this.f113c.onError(this.f112b.a(), "下载失败: " + e3.getMessage());
        }
    }
}
