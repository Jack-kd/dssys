package com.anythink.core.common.u.a.b.a.b;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.common.m.C1113a;
import com.anythink.core.common.m.d.f;
import com.anythink.core.common.m.s;
import com.anythink.core.e.d;
import com.varbto.utils.anr.AnrHandler;
import com.varbto.utils.api.MediationUtilsManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: e, reason: collision with root package name */
    private static final String f7767e = "ANRReportPrefs";

    /* renamed from: f, reason: collision with root package name */
    private static final String f7768f = "last_anr_report_date";

    /* renamed from: g, reason: collision with root package name */
    private static final String f7769g = "anr_report_count";

    /* renamed from: d, reason: collision with root package name */
    private List<File> f7773d;

    /* renamed from: b, reason: collision with root package name */
    private final String f7771b = a.class.getSimpleName();

    /* renamed from: c, reason: collision with root package name */
    private List<String> f7772c = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    private f.a f7774h = new f.a() { // from class: com.anythink.core.common.u.a.b.a.b.a.1
        @Override // com.anythink.core.common.m.d.f.a
        public final void a(Throwable th) {
        }

        @Override // com.anythink.core.common.m.d.f.a
        public final void a(Object obj) {
            try {
                if (a.this.f7773d == null || a.this.f7773d.isEmpty() || a.this.f7773d.get(0) == null) {
                    return;
                }
                MediationUtilsManager.getInstance(a.this.f7770a).markAnrFileSent(((File) a.this.f7773d.get(0)).getName(), 1);
            } catch (Throwable unused) {
            }
        }
    };

    /* renamed from: i, reason: collision with root package name */
    private s f7775i = new s() { // from class: com.anythink.core.common.u.a.b.a.b.a.2
        @Override // com.anythink.core.common.m.s
        public final void onLoadCanceled(int i2) {
        }

        @Override // com.anythink.core.common.m.s
        public final void onLoadError(int i2, String str, AdError adError) {
        }

        @Override // com.anythink.core.common.m.s
        public final void onLoadFinish(int i2, Object obj) {
            try {
                if (a.this.f7773d == null || a.this.f7773d.isEmpty() || a.this.f7773d.get(0) == null) {
                    return;
                }
                MediationUtilsManager.getInstance(a.this.f7770a).markAnrFileSent(((File) a.this.f7773d.get(0)).getName(), 1);
            } catch (Throwable unused) {
            }
        }

        @Override // com.anythink.core.common.m.s
        public final void onLoadStart(int i2) {
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private Context f7770a = com.anythink.core.common.d.s.b().g();

    public final void a() {
        long jCurrentTimeMillis;
        AnrHandler anrHandler;
        if (com.anythink.core.common.d.s.b().a()) {
            try {
                anrHandler = MediationUtilsManager.getInstance(this.f7770a).getAnrHandler();
            } catch (Throwable unused) {
                jCurrentTimeMillis = 0;
            }
            if (anrHandler == null) {
                return;
            }
            List<File> anrFileList = anrHandler.getAnrFileList("1");
            this.f7773d = anrFileList;
            if (anrFileList != null && !anrFileList.isEmpty()) {
                File file = this.f7773d.get(0);
                jCurrentTimeMillis = System.currentTimeMillis();
                try {
                    String strA = a(file);
                    String name = file.getName();
                    try {
                        if (!TextUtils.isEmpty(name)) {
                            jCurrentTimeMillis = Long.parseLong(name);
                        }
                    } catch (Throwable unused2) {
                    }
                    this.f7772c.add(strA);
                } catch (Throwable unused3) {
                }
                long j2 = jCurrentTimeMillis;
                com.anythink.core.e.b bVarB = d.a(this.f7770a).b(com.anythink.core.common.d.s.b().p());
                if (bVarB == null) {
                    new C1113a(this.f7770a, 0, this.f7772c, j2).a(0, this.f7775i);
                } else {
                    if (bVarB.aL() != 2) {
                        new C1113a(this.f7770a, bVarB.x(), this.f7772c, j2).a(0, this.f7775i);
                        return;
                    }
                    com.anythink.core.common.m.d.a aVar = new com.anythink.core.common.m.d.a(this.f7772c, j2);
                    aVar.a(1, bVarB.w());
                    aVar.a(this.f7774h);
                }
            }
        }
    }

    private static String a(File file) throws IOException {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), Charset.forName("UTF-8")));
        try {
            char[] cArr = new char[8192];
            while (true) {
                int i2 = bufferedReader.read(cArr);
                if (i2 != -1) {
                    sb.append(cArr, 0, i2);
                } else {
                    bufferedReader.close();
                    return sb.toString();
                }
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
