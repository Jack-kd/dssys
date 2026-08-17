package com.kwad.sdk.a.a;

import android.content.Context;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.au;
import com.kwad.sdk.utils.bg;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;
import com.kwad.sdk.utils.y;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.util.Stack;

/* loaded from: classes4.dex */
public class b {
    private static volatile b aGX;
    private Stack<AdTemplate> aGV = new Stack<>();
    private File aGW;
    private boolean mHasInit;

    public interface a {
        void Hk();

        void hK();
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized File Hg() {
        try {
            File file = this.aGW;
            if (file != null) {
                return file;
            }
            String strEi = bg.ei(ServiceProvider.getContext());
            File file2 = new File(strEi);
            if (!file2.exists()) {
                file2.mkdir();
            }
            File file3 = new File(strEi + File.separator + "uninstall_ad");
            this.aGW = file3;
            if (!file3.exists()) {
                try {
                    this.aGW.createNewFile();
                } catch (Exception e2) {
                    com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
                    com.kwad.components.core.d.a.reportSdkCaughtException(e2);
                }
            }
            return this.aGW;
        } catch (Throwable th) {
            throw th;
        }
    }

    private static boolean Hh() {
        return com.kwad.sdk.core.config.e.JG() == 0;
    }

    public static b Hi() {
        if (aGX == null) {
            synchronized (b.class) {
                try {
                    if (aGX == null) {
                        aGX = new b();
                    }
                } finally {
                }
            }
        }
        return aGX;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Iterator] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.Closeable] */
    public synchronized void bo(AdTemplate adTemplate) {
        Throwable th;
        ObjectOutputStream objectOutputStream;
        Exception e2;
        ?? it = this.aGV.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            if (com.kwad.sdk.core.response.helper.e.eY((AdTemplate) it.next()) == com.kwad.sdk.core.response.helper.e.eY(adTemplate)) {
                it.remove();
                z2 = true;
            }
        }
        if (!z2) {
            return;
        }
        try {
            try {
                objectOutputStream = new ObjectOutputStream(new FileOutputStream(this.aGW));
                try {
                    objectOutputStream.writeObject(this.aGV);
                    com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream);
                } catch (Exception e3) {
                    e2 = e3;
                    com.kwad.sdk.core.d.c.d("InstallTipsDataManager", " removeApkDownloadedData e" + e2);
                    com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream);
                }
            } catch (Throwable th2) {
                th = th2;
                com.kwad.sdk.crash.utils.b.closeQuietly((Closeable) it);
                throw th;
            }
        } catch (Exception e4) {
            objectOutputStream = null;
            e2 = e4;
        } catch (Throwable th3) {
            it = 0;
            th = th3;
            com.kwad.sdk.crash.utils.b.closeQuietly((Closeable) it);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractCollection, java.util.Stack<com.kwad.sdk.core.response.model.AdTemplate>] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Closeable] */
    public synchronized void bp(AdTemplate adTemplate) {
        Throwable th;
        ObjectOutputStream objectOutputStream;
        Exception e2;
        ?? r02 = this.aGV;
        r02.add(adTemplate);
        try {
            try {
                objectOutputStream = new ObjectOutputStream(new FileOutputStream(Hg()));
                try {
                    objectOutputStream.writeObject(this.aGV);
                    com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream);
                } catch (Exception e3) {
                    e2 = e3;
                    com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
                    com.kwad.components.core.d.a.reportSdkCaughtException(e2);
                    com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream);
                }
            } catch (Throwable th2) {
                th = th2;
                com.kwad.sdk.crash.utils.b.closeQuietly((Closeable) r02);
                throw th;
            }
        } catch (Exception e4) {
            objectOutputStream = null;
            e2 = e4;
        } catch (Throwable th3) {
            r02 = 0;
            th = th3;
            com.kwad.sdk.crash.utils.b.closeQuietly((Closeable) r02);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File bs(AdTemplate adTemplate) {
        File file = new File(com.kwad.sdk.core.download.a.J(com.kwad.sdk.core.response.helper.e.eO(adTemplate)));
        if (y.Q(file)) {
            return file;
        }
        return null;
    }

    public final synchronized AdTemplate Hj() {
        AdTemplate adTemplate;
        Stack stack = (Stack) this.aGV.clone();
        while (true) {
            if (stack.isEmpty()) {
                adTemplate = null;
                break;
            }
            adTemplate = (AdTemplate) stack.pop();
            if (adTemplate != null) {
                String str = com.kwad.sdk.core.response.helper.e.eO(adTemplate).adBaseInfo.appPackageName;
                Context context = ServiceProvider.getContext();
                File fileBs = bs(adTemplate);
                if (fileBs != null && fileBs.exists() && fileBs.lastModified() + 604800000 > System.currentTimeMillis() && !au.aw(context, str)) {
                    break;
                }
            }
        }
        return adTemplate;
    }

    public final void bq(final AdTemplate adTemplate) {
        if (Hh() || adTemplate == null) {
            return;
        }
        i.execute(new bi() { // from class: com.kwad.sdk.a.a.b.2
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                b.this.bp(adTemplate);
            }
        });
    }

    public final void br(final AdTemplate adTemplate) {
        if (Hh() || adTemplate == null) {
            return;
        }
        i.execute(new bi() { // from class: com.kwad.sdk.a.a.b.3
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                b.this.bo(adTemplate);
            }
        });
    }

    public static /* synthetic */ boolean a(b bVar) {
        return Hh();
    }

    public final synchronized void a(final a aVar) {
        if (this.mHasInit) {
            return;
        }
        this.mHasInit = true;
        i.execute(new bi() { // from class: com.kwad.sdk.a.a.b.1
            /* JADX WARN: Not initialized variable reg: 4, insn: 0x00a5: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]) (LINE:166), block:B:34:0x00a5 */
            /* JADX WARN: Removed duplicated region for block: B:101:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:69:0x0126 A[Catch: all -> 0x00ca, TryCatch #6 {all -> 0x00ca, blocks: (B:3:0x0002, B:6:0x000c, B:9:0x0014, B:42:0x00c6, B:53:0x00fe, B:67:0x0122, B:69:0x0126, B:71:0x012a, B:72:0x012d, B:65:0x011b, B:66:0x011f, B:73:0x012e, B:74:0x0131, B:49:0x00e7), top: B:83:0x0002 }] */
            @Override // com.kwad.sdk.utils.bi
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void doTask() {
                /*
                    Method dump skipped, instructions count: 310
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.a.a.b.AnonymousClass1.doTask():void");
            }
        });
    }
}
