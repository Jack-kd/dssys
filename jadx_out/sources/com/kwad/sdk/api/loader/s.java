package com.kwad.sdk.api.loader;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.kwad.sdk.api.loader.a;
import com.kwad.sdk.api.loader.h;
import java.io.File;
import java.util.Objects;

/* loaded from: classes4.dex */
final class s {

    public static abstract class a<T> implements c<T> {
        c<T> aID;

        public a(c<T> cVar) {
            this.aID = cVar;
        }
    }

    public static class b implements f<a.C0594a> {
        @Override // com.kwad.sdk.api.loader.s.f
        public final void a(final ab abVar, final c<a.C0594a> cVar) {
            try {
                new com.kwad.sdk.api.loader.h(abVar).a(new h.a() { // from class: com.kwad.sdk.api.loader.s.b.1
                    @Override // com.kwad.sdk.api.loader.h.a
                    @WorkerThread
                    public final void a(a.b bVar) {
                        Objects.toString(bVar);
                        if (bVar.isLegal()) {
                            cVar.m(bVar.aHF);
                        } else {
                            new RuntimeException("UpdateData is illegal");
                        }
                        try {
                            com.kwad.sdk.api.loader.f.bn(abVar.getContext()).cancel();
                        } catch (Throwable unused) {
                        }
                    }
                });
            } catch (Exception unused) {
            }
        }
    }

    public interface c<T> {
        void m(T t2);
    }

    public static class d implements f<a.C0594a> {
        f<a.C0594a> aIH;

        public d(f<a.C0594a> fVar) {
            this.aIH = fVar;
        }

        @Override // com.kwad.sdk.api.loader.s.f
        public final void a(final ab abVar, final c<a.C0594a> cVar) {
            this.aIH.a(abVar, new a<a.C0594a>(cVar) { // from class: com.kwad.sdk.api.loader.s.d.1
                /* JADX INFO: Access modifiers changed from: private */
                @Override // com.kwad.sdk.api.loader.s.c
                @WorkerThread
                /* renamed from: c, reason: merged with bridge method [inline-methods] */
                public void m(@NonNull a.C0594a c0594a) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    File fileV = null;
                    try {
                        l.a(c0594a);
                        fileV = j.v(abVar.getContext(), c0594a.sdkVersion);
                        k.c(c0594a.aHD, fileV);
                        l.a(c0594a, System.currentTimeMillis() - jCurrentTimeMillis);
                        c0594a.aHE = fileV;
                        cVar.m(c0594a);
                    } catch (Throwable th) {
                        l.a(c0594a, System.currentTimeMillis() - jCurrentTimeMillis, Log.getStackTraceString(th));
                        j.j(fileV);
                    }
                }
            });
        }
    }

    public static class e implements f<Boolean> {
        f<a.C0594a> aIH;

        public e(f<a.C0594a> fVar) {
            this.aIH = fVar;
        }

        @Override // com.kwad.sdk.api.loader.s.f
        public final void a(final ab abVar, final c<Boolean> cVar) {
            this.aIH.a(abVar, new c<a.C0594a>() { // from class: com.kwad.sdk.api.loader.s.e.1
                private void a(a.C0594a c0594a, int i2, Throwable th) {
                    j.j(c0594a.aHE);
                    l.b(c0594a, i2, Log.getStackTraceString(th));
                }

                /* JADX INFO: Access modifiers changed from: private */
                @Override // com.kwad.sdk.api.loader.s.c
                /* renamed from: c, reason: merged with bridge method [inline-methods] */
                public void m(@NonNull a.C0594a c0594a) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    try {
                        l.b(c0594a);
                        if (!com.kwad.sdk.api.loader.d.a(abVar.getContext(), AnonymousClass1.class.getClassLoader(), c0594a.aHE.getPath(), c0594a.sdkVersion)) {
                            a(c0594a, 1, new RuntimeException("Apk pre install fail"));
                            return;
                        }
                        i.t(abVar.getContext(), c0594a.sdkVersion);
                        j.j(c0594a.aHE);
                        l.b(c0594a, System.currentTimeMillis() - jCurrentTimeMillis);
                        cVar.m(Boolean.TRUE);
                    } catch (Throwable th) {
                        a(c0594a, 2, th);
                    }
                }
            });
        }
    }

    public interface f<T> {
        void a(ab abVar, c<T> cVar);
    }

    public static class g implements f<a.C0594a> {
        f<a.C0594a> aIH;

        public g(f<a.C0594a> fVar) {
            this.aIH = fVar;
        }

        @Override // com.kwad.sdk.api.loader.s.f
        public final void a(ab abVar, final c<a.C0594a> cVar) {
            this.aIH.a(abVar, new a<a.C0594a>(cVar) { // from class: com.kwad.sdk.api.loader.s.g.1
                private void a(a.C0594a c0594a, int i2, Throwable th) {
                    j.j(c0594a.aHE);
                    l.a(c0594a, i2, th.getMessage());
                }

                /* JADX INFO: Access modifiers changed from: private */
                @Override // com.kwad.sdk.api.loader.s.c
                /* renamed from: c, reason: merged with bridge method [inline-methods] */
                public void m(@NonNull a.C0594a c0594a) {
                    try {
                        File file = c0594a.aHE;
                        if (!x.k(file)) {
                            a(c0594a, 1, new RuntimeException("Security checkFileValid fail"));
                        } else if (x.a(file, c0594a.md5)) {
                            cVar.m(c0594a);
                        } else {
                            a(c0594a, 2, new RuntimeException("Security checkMd5 fail"));
                        }
                    } catch (Throwable th) {
                        a(c0594a, 3, th);
                    }
                }
            });
        }
    }

    public static class h implements f<a.C0594a> {
        f<a.C0594a> aIH;

        public h(f<a.C0594a> fVar) {
            this.aIH = fVar;
        }

        @Override // com.kwad.sdk.api.loader.s.f
        public final void a(final ab abVar, final c<a.C0594a> cVar) {
            this.aIH.a(abVar, new c<a.C0594a>() { // from class: com.kwad.sdk.api.loader.s.h.1
                /* JADX INFO: Access modifiers changed from: private */
                @Override // com.kwad.sdk.api.loader.s.c
                /* renamed from: c, reason: merged with bridge method [inline-methods] */
                public void m(a.C0594a c0594a) {
                    String strBo = i.bo(abVar.getContext());
                    if (TextUtils.isEmpty(strBo)) {
                        strBo = com.kwad.sdk.api.c.Hu().getSDKVersion();
                    }
                    String str = c0594a.sdkVersion;
                    com.kwad.sdk.api.loader.b.a(abVar.getContext(), "interval", c0594a.interval);
                    com.kwad.sdk.api.loader.b.a(abVar.getContext(), "lastUpdateTime", System.currentTimeMillis());
                    if (c0594a.HB()) {
                        aa.bv(abVar.getContext());
                        new RuntimeException("DynamicType == -1, curVersion: " + strBo);
                        return;
                    }
                    if (i.N(c0594a.sdkVersion, strBo) && c0594a.HA()) {
                        cVar.m(c0594a);
                        return;
                    }
                    new RuntimeException("No new sdkVersion. remote sdkVersion:" + c0594a.sdkVersion + " currentDynamicVersion:" + strBo + " dynamicType:" + c0594a.aHC);
                }
            });
        }
    }

    public static f<Boolean> HK() {
        return new e(new g(new d(new h(new b()))));
    }
}
