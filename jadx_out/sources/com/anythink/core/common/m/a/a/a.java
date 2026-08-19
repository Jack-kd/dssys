package com.anythink.core.common.m.a.a;

import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.common.n.a.h;
import com.anythink.core.common.n.a.m;
import com.anythink.core.common.n.b.q;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f5517a = "a";

    /* renamed from: b, reason: collision with root package name */
    private final String f5518b;

    /* renamed from: c, reason: collision with root package name */
    private final String f5519c;

    /* renamed from: d, reason: collision with root package name */
    private com.anythink.core.common.m.b.a f5520d;

    public a(String str, String str2) {
        this.f5518b = str;
        this.f5519c = str2;
    }

    private static boolean b(com.anythink.core.common.m.b.d dVar) {
        com.anythink.core.e.b bVarA = com.anythink.core.e.d.a();
        return bVarA != null && bVarA.g(dVar != null ? dVar.b() : "");
    }

    public final com.anythink.core.common.m.b.a a() {
        return this.f5520d;
    }

    public final com.anythink.core.common.m.a.d a(com.anythink.core.common.m.b.d dVar) {
        com.anythink.core.e.b bVarA = com.anythink.core.e.d.a();
        String strB = dVar != null ? dVar.b() : "";
        if (bVarA == null || !bVarA.g(strB)) {
            return null;
        }
        com.anythink.core.common.m.b.a aVar = new com.anythink.core.common.m.b.a();
        aVar.d(this.f5518b);
        aVar.e(this.f5519c);
        aVar.b(com.anythink.core.common.m.b.g.a(dVar.b()));
        this.f5520d = aVar;
        return new C0066a(aVar, dVar.b());
    }

    /* renamed from: com.anythink.core.common.m.a.a.a$a, reason: collision with other inner class name */
    public static class C0066a implements com.anythink.core.common.m.a.d {

        /* renamed from: a, reason: collision with root package name */
        private final com.anythink.core.common.m.b.a f5521a;

        /* renamed from: b, reason: collision with root package name */
        private final String f5522b;

        public C0066a(com.anythink.core.common.m.b.a aVar, String str) {
            this.f5521a = aVar;
            this.f5522b = str;
        }

        private static List<InetAddress> b(String str, com.anythink.core.common.m.b.a aVar) {
            aVar.p();
            com.anythink.core.common.n.a.c cVarA = com.anythink.core.common.n.a.c.a();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (!cVarA.b()) {
                throw new IllegalArgumentException("init custom dns server failed.");
            }
            m mVarA = cVarA.a(new h(str));
            aVar.c(SystemClock.elapsedRealtime() - jElapsedRealtime);
            com.anythink.core.common.n.a.f fVarB = mVarA != null ? mVarA.b() : null;
            if (fVarB != null) {
                aVar.a(fVarB.a());
                aVar.a(fVarB.b());
                aVar.a(fVarB.c());
            }
            InetAddress[] inetAddressArrA = mVarA != null ? mVarA.a() : null;
            if (inetAddressArrA == null || inetAddressArrA.length <= 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Collections.addAll(arrayList, inetAddressArrA);
            aVar.k();
            return arrayList;
        }

        @Override // com.anythink.core.common.m.a.d
        public final List<InetAddress> a(String str) throws UnknownHostException {
            Throwable th;
            com.anythink.core.common.m.b.a aVar;
            com.anythink.core.common.n.a.c cVarA;
            long jElapsedRealtime;
            ArrayList arrayList;
            List<InetAddress> listA = a(str, this.f5521a);
            if (listA != null && !listA.isEmpty()) {
                return listA;
            }
            try {
                aVar = this.f5521a;
                aVar.p();
                cVarA = com.anythink.core.common.n.a.c.a();
                jElapsedRealtime = SystemClock.elapsedRealtime();
            } catch (Throwable th2) {
                th = th2;
                this.f5521a.c(th + ": " + th.getMessage());
            }
            if (!cVarA.b()) {
                throw new IllegalArgumentException("init custom dns server failed.");
            }
            m mVarA = cVarA.a(new h(str));
            aVar.c(SystemClock.elapsedRealtime() - jElapsedRealtime);
            th = null;
            com.anythink.core.common.n.a.f fVarB = mVarA != null ? mVarA.b() : null;
            if (fVarB != null) {
                aVar.a(fVarB.a());
                aVar.a(fVarB.b());
                aVar.a(fVarB.c());
            }
            InetAddress[] inetAddressArrA = mVarA != null ? mVarA.a() : null;
            if (inetAddressArrA == null || inetAddressArrA.length <= 0) {
                arrayList = null;
            } else {
                arrayList = new ArrayList();
                Collections.addAll(arrayList, inetAddressArrA);
                aVar.k();
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                return arrayList;
            }
            if (th != null) {
                throw new UnknownHostException(th + ": " + th.getMessage());
            }
            String str2 = "cant not resolve \"" + str + "\".";
            if (TextUtils.isEmpty(this.f5521a.l())) {
                this.f5521a.c(str2);
            }
            throw new UnknownHostException(str2);
        }

        private static List<InetAddress> a(String str, com.anythink.core.common.m.b.a aVar) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            try {
                List<InetAddress> listA = q.f6915a.a(str);
                aVar.b(SystemClock.elapsedRealtime() - jElapsedRealtime);
                if (listA == null) {
                    return null;
                }
                if (listA.isEmpty()) {
                    return null;
                }
                return listA;
            } catch (Throwable th) {
                aVar.h();
                aVar.b(th + ": " + th.getMessage());
                return null;
            }
        }
    }
}
