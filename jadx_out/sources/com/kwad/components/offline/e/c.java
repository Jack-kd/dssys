package com.kwad.components.offline.e;

import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.ksad.annotation.invoker.InvokeBy;
import com.kwad.components.core.request.h;
import com.kwad.components.offline.api.InitCallBack;
import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.components.offline.api.tk.ITkOfflineCompo;
import com.kwad.components.offline.api.tk.TkLoggerReporter;
import com.kwad.components.offline.api.tk.model.report.TKDownloadMsg;
import com.kwad.library.solder.lib.i;
import com.kwad.sdk.core.response.model.SdkConfigData;
import com.kwad.sdk.o;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.bi;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes4.dex */
public final class c extends com.kwad.components.core.offline.b.a<ITkOfflineCompo> {
    private static long axV;
    private final List<com.kwad.components.core.offline.a.f.a> axU;
    private final AtomicBoolean axW;

    /* renamed from: com.kwad.components.offline.e.c$1, reason: invalid class name */
    public class AnonymousClass1 implements InitCallBack {
        final /* synthetic */ ITkOfflineCompo axX;
        final /* synthetic */ boolean axY;
        final /* synthetic */ long axZ;
        final /* synthetic */ long aya;
        final /* synthetic */ Context dK;

        public AnonymousClass1(ITkOfflineCompo iTkOfflineCompo, boolean z2, long j2, long j3, Context context) {
            this.axX = iTkOfflineCompo;
            this.axY = z2;
            this.axZ = j2;
            this.aya = j3;
            this.dK = context;
        }

        @Override // com.kwad.components.offline.api.InitCallBack
        public final void onError(int i2) {
            c.this.bq(i2);
        }

        @Override // com.kwad.components.offline.api.InitCallBack
        public final void onSuccess(boolean z2) {
            try {
                final b bVar = new b(this.axX);
                com.kwad.sdk.components.d.a(com.kwad.components.core.offline.a.f.c.class, bVar);
                c.this.axW.set(true);
                int i2 = z2 ? 2 : 1;
                int i3 = this.axY ? 2 : 1;
                c.this.b(i2, i3, SystemClock.elapsedRealtime() - this.axZ, this.aya);
                TkLoggerReporter.get().reportTKSOLoad(ILoggerReporter.Category.APM_LOG, new TKDownloadMsg().setDownloadState(3).setOfflineLoadTime(this.aya).setSoLoadTime(SystemClock.elapsedRealtime() - this.axZ).setInitSdkTimeConsuming(SystemClock.elapsedRealtime() - o.Gs().GW()).setThreadPoolCoreSize(i.DQ().DK().El()).setOfflineSource(i3).setSoSource(i2).toJson());
                c.this.tx();
                h.b(new com.kwad.components.core.request.i() { // from class: com.kwad.components.offline.e.c.1.1
                    @Override // com.kwad.components.core.request.i, com.kwad.components.core.request.h.a
                    public final void d(@NonNull final SdkConfigData sdkConfigData) {
                        super.d(sdkConfigData);
                        com.kwad.sdk.utils.i.execute(new bi() { // from class: com.kwad.components.offline.e.c.1.1.1
                            @Override // com.kwad.sdk.utils.bi
                            public final void doTask() {
                                C05781 c05781 = C05781.this;
                                bVar.onConfigRefresh(AnonymousClass1.this.dK, sdkConfigData.toJson());
                            }
                        });
                    }
                });
            } catch (Throwable th) {
                ServiceProvider.reportSdkCaughtException(th);
            }
        }
    }

    public static final class a {
        private static final c ayg = new c(0);
    }

    public /* synthetic */ c(byte b3) {
        this();
    }

    public static c At() {
        return a.ayg;
    }

    @InvokeBy(invokerClass = com.kwad.components.core.offline.b.b.class, methodId = "initOC")
    public static void aV(Context context) {
        axV = SystemClock.elapsedRealtime();
        At().init(context);
    }

    @Override // com.kwad.components.core.offline.b.a
    public final String getTag() {
        return "TkInitModule";
    }

    @Override // com.kwad.components.core.offline.b.a
    public final boolean isEnabled() {
        return com.kwad.sdk.core.h.a.Oy();
    }

    @Override // com.kwad.components.core.offline.b.a
    public final String tA() {
        return "5.4.10.1";
    }

    @Override // com.kwad.components.core.offline.b.a
    public final String tB() {
        return "https://p2-lm.adkwai.com/udata/pkg/KS-Android-KSAdSDk/offline_components/tk/ks_so-tachikomaNoSoRelease-5.4.10.1-d7b01836ac-302.zip";
    }

    @Override // com.kwad.components.core.offline.b.a
    public final String tC() {
        return "3417a286b580c59aea51c52aac97f996";
    }

    @Override // com.kwad.components.core.offline.b.a
    public final String tD() {
        return "ks_tk_54101";
    }

    @Override // com.kwad.components.core.offline.b.a
    public final String tE() {
        return ITkOfflineCompo.IMPL;
    }

    @Override // com.kwad.components.core.offline.b.a
    public final String ty() {
        return "TK";
    }

    @Override // com.kwad.components.core.offline.b.a
    public final String tz() {
        return ITkOfflineCompo.PACKAGE_NAME;
    }

    private c() {
        this.axU = new CopyOnWriteArrayList();
        this.axW = new AtomicBoolean(false);
    }

    public final void b(com.kwad.components.core.offline.a.f.a aVar) {
        if (aVar == null) {
            return;
        }
        this.axU.remove(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i2, int i3, long j2, long j3) {
        Iterator<com.kwad.components.core.offline.a.f.a> it = this.axU.iterator();
        while (it.hasNext()) {
            int i4 = i2;
            int i5 = i3;
            long j4 = j2;
            long j5 = j3;
            try {
                it.next().a(i4, i5, j4, j5);
            } catch (Throwable th) {
                ServiceProvider.reportSdkCaughtException(th);
            }
            i2 = i4;
            i3 = i5;
            j2 = j4;
            j3 = j5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.kwad.components.core.offline.b.a
    public void a(Context context, boolean z2, ITkOfflineCompo iTkOfflineCompo) {
        iTkOfflineCompo.init(context, new d(), new AnonymousClass1(iTkOfflineCompo, z2, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - axV, context));
    }

    public final void a(com.kwad.components.core.offline.a.f.a aVar) {
        com.kwad.components.core.offline.a.f.a aVar2;
        if (aVar == null) {
            return;
        }
        try {
            if (this.axW.get()) {
                aVar2 = aVar;
                aVar2.a(1, 1, 0L, 0L);
            } else {
                aVar2 = aVar;
            }
            this.axU.add(aVar2);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
