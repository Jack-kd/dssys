package com.anythink.core.c;

import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.n;
import com.anythink.core.common.h.p;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.o;
import com.anythink.core.common.v.t;
import com.anythink.core.e.m;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public static String f2140a = "h";

    /* renamed from: b, reason: collision with root package name */
    com.anythink.core.common.h.a f2141b;

    /* renamed from: c, reason: collision with root package name */
    Map<String, Object> f2142c;

    /* renamed from: d, reason: collision with root package name */
    a f2143d;

    /* renamed from: e, reason: collision with root package name */
    String f2144e;

    /* renamed from: f, reason: collision with root package name */
    long f2145f;

    /* renamed from: g, reason: collision with root package name */
    boolean f2146g;

    /* renamed from: h, reason: collision with root package name */
    boolean f2147h;

    /* renamed from: com.anythink.core.c.h$2, reason: invalid class name */
    public class AnonymousClass2 implements ATBidRequestInfoListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ by f2151a;

        public AnonymousClass2(by byVar) {
            this.f2151a = byVar;
        }

        @Override // com.anythink.core.api.ATBidRequestInfoListener
        public final void onFailed(String str) {
            a aVar = h.this.f2143d;
            if (aVar != null) {
                aVar.b(new com.anythink.core.c.c.a(this.f2151a, str));
            }
        }

        @Override // com.anythink.core.api.ATBidRequestInfoListener
        public final void onSuccess(ATBidRequestInfo aTBidRequestInfo) {
            h.a(h.this, this.f2151a, aTBidRequestInfo);
        }
    }

    public interface a {
        void a(com.anythink.core.c.c.a aVar);

        void a(by byVar, ATBaseAdAdapter aTBaseAdAdapter);

        void b(com.anythink.core.c.c.a aVar);
    }

    public h(String str, com.anythink.core.common.h.a aVar, long j2) {
        this.f2144e = str;
        this.f2141b = aVar;
        this.f2142c = aVar.f3583q;
        this.f2145f = j2;
    }

    private void a() {
        this.f2146g = true;
    }

    private void b() {
        this.f2147h = true;
    }

    public final void a(final by byVar, final a aVar) {
        this.f2143d = aVar;
        com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bT, new Runnable() { // from class: com.anythink.core.c.h.1
            @Override // java.lang.Runnable
            public final void run() {
                p pVarB = t.b(byVar);
                ATBaseAdAdapter aTBaseAdAdapter = pVarB != null ? pVarB.f4352a : null;
                if (aTBaseAdAdapter != null) {
                    h.a(h.this, aTBaseAdAdapter, byVar);
                    return;
                }
                String strB = ATBidRequestInfo.NO_ADAPTER_ERROR_TYPE;
                if (pVarB != null) {
                    strB = pVarB.b(ATBidRequestInfo.NO_ADAPTER_ERROR_TYPE);
                }
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.b(new com.anythink.core.c.c.a(byVar, strB));
                }
            }
        }));
    }

    private void a(ATBaseAdAdapter aTBaseAdAdapter, by byVar) {
        try {
            as asVar = this.f2141b.f3569c;
            ATAdRequest aTAdRequestB = asVar != null ? asVar.b() : null;
            m mVarA = this.f2141b.f3580n.a();
            com.anythink.core.common.h.a aVar = this.f2141b;
            Map<String, Object> mapA = mVarA.a(aVar.f3571e, aVar.f3570d, byVar, aTAdRequestB);
            n nVarAh = this.f2141b.f3585s.ah();
            ah.a(nVarAh, byVar, 0, false);
            o.a(mapA, nVarAh);
            if (byVar.n() == 66) {
                byVar.a(aTBaseAdAdapter);
            }
            aTBaseAdAdapter.internalGetBidRequestInfo(this.f2141b.f3568b, mapA, this.f2142c, new AnonymousClass2(byVar));
            a aVar2 = this.f2143d;
            if (aVar2 != null) {
                aVar2.a(byVar, aTBaseAdAdapter);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            a aVar3 = this.f2143d;
            if (aVar3 != null) {
                aVar3.b(new com.anythink.core.c.c.a(byVar, th.getMessage()));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x008c A[Catch: all -> 0x0045, TryCatch #2 {all -> 0x0045, blocks: (B:3:0x0002, B:6:0x000a, B:13:0x0038, B:15:0x003f, B:18:0x0049, B:20:0x0053, B:22:0x0059, B:24:0x0063, B:26:0x0069, B:27:0x006b, B:29:0x007b, B:33:0x0085, B:35:0x008c, B:37:0x0096, B:58:0x00f5, B:60:0x00fa, B:30:0x007d, B:32:0x0081, B:71:0x0129, B:74:0x0141, B:76:0x015e, B:78:0x0162, B:80:0x0166, B:82:0x016a, B:84:0x0170, B:85:0x018e, B:87:0x0192, B:12:0x0035, B:88:0x0196, B:90:0x019a, B:9:0x0026, B:43:0x00a3, B:45:0x00be, B:46:0x00c4, B:48:0x00ca, B:51:0x00da, B:53:0x00de, B:54:0x00e5, B:56:0x00e9), top: B:102:0x0002, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00fa A[Catch: all -> 0x0045, TRY_LEAVE, TryCatch #2 {all -> 0x0045, blocks: (B:3:0x0002, B:6:0x000a, B:13:0x0038, B:15:0x003f, B:18:0x0049, B:20:0x0053, B:22:0x0059, B:24:0x0063, B:26:0x0069, B:27:0x006b, B:29:0x007b, B:33:0x0085, B:35:0x008c, B:37:0x0096, B:58:0x00f5, B:60:0x00fa, B:30:0x007d, B:32:0x0081, B:71:0x0129, B:74:0x0141, B:76:0x015e, B:78:0x0162, B:80:0x0166, B:82:0x016a, B:84:0x0170, B:85:0x018e, B:87:0x0192, B:12:0x0035, B:88:0x0196, B:90:0x019a, B:9:0x0026, B:43:0x00a3, B:45:0x00be, B:46:0x00c4, B:48:0x00ca, B:51:0x00da, B:53:0x00de, B:54:0x00e5, B:56:0x00e9), top: B:102:0x0002, inners: #1, #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.anythink.core.common.h.by r11, com.anythink.core.api.ATBidRequestInfo r12) {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.c.h.a(com.anythink.core.common.h.by, com.anythink.core.api.ATBidRequestInfo):void");
    }

    private static void a(JSONObject jSONObject, by byVar) {
        if (byVar == null || jSONObject == null || byVar.n() != 2) {
            return;
        }
        try {
            jSONObject.put("admob_bid_type", byVar.aU());
            jSONObject.put("network_id", byVar.aT());
        } catch (Throwable unused) {
        }
    }

    public static /* synthetic */ void a(h hVar, ATBaseAdAdapter aTBaseAdAdapter, by byVar) {
        try {
            as asVar = hVar.f2141b.f3569c;
            ATAdRequest aTAdRequestB = asVar != null ? asVar.b() : null;
            m mVarA = hVar.f2141b.f3580n.a();
            com.anythink.core.common.h.a aVar = hVar.f2141b;
            Map<String, Object> mapA = mVarA.a(aVar.f3571e, aVar.f3570d, byVar, aTAdRequestB);
            n nVarAh = hVar.f2141b.f3585s.ah();
            ah.a(nVarAh, byVar, 0, false);
            o.a(mapA, nVarAh);
            if (byVar.n() == 66) {
                byVar.a(aTBaseAdAdapter);
            }
            aTBaseAdAdapter.internalGetBidRequestInfo(hVar.f2141b.f3568b, mapA, hVar.f2142c, hVar.new AnonymousClass2(byVar));
            a aVar2 = hVar.f2143d;
            if (aVar2 != null) {
                aVar2.a(byVar, aTBaseAdAdapter);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            a aVar3 = hVar.f2143d;
            if (aVar3 != null) {
                aVar3.b(new com.anythink.core.c.c.a(byVar, th.getMessage()));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x008c A[Catch: all -> 0x0045, TryCatch #2 {all -> 0x0045, blocks: (B:3:0x0002, B:6:0x000a, B:13:0x0038, B:15:0x003f, B:18:0x0049, B:20:0x0053, B:22:0x0059, B:24:0x0063, B:26:0x0069, B:27:0x006b, B:29:0x007b, B:33:0x0085, B:35:0x008c, B:37:0x0096, B:58:0x00f5, B:60:0x00fa, B:30:0x007d, B:32:0x0081, B:71:0x0129, B:74:0x0141, B:76:0x015e, B:78:0x0162, B:80:0x0166, B:82:0x016a, B:84:0x0170, B:85:0x018e, B:87:0x0192, B:12:0x0035, B:88:0x0196, B:90:0x019a, B:9:0x0026, B:43:0x00a3, B:45:0x00be, B:46:0x00c4, B:48:0x00ca, B:51:0x00da, B:53:0x00de, B:54:0x00e5, B:56:0x00e9), top: B:102:0x0002, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00fa A[Catch: all -> 0x0045, TRY_LEAVE, TryCatch #2 {all -> 0x0045, blocks: (B:3:0x0002, B:6:0x000a, B:13:0x0038, B:15:0x003f, B:18:0x0049, B:20:0x0053, B:22:0x0059, B:24:0x0063, B:26:0x0069, B:27:0x006b, B:29:0x007b, B:33:0x0085, B:35:0x008c, B:37:0x0096, B:58:0x00f5, B:60:0x00fa, B:30:0x007d, B:32:0x0081, B:71:0x0129, B:74:0x0141, B:76:0x015e, B:78:0x0162, B:80:0x0166, B:82:0x016a, B:84:0x0170, B:85:0x018e, B:87:0x0192, B:12:0x0035, B:88:0x0196, B:90:0x019a, B:9:0x0026, B:43:0x00a3, B:45:0x00be, B:46:0x00c4, B:48:0x00ca, B:51:0x00da, B:53:0x00de, B:54:0x00e5, B:56:0x00e9), top: B:102:0x0002, inners: #1, #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(com.anythink.core.c.h r10, com.anythink.core.common.h.by r11, com.anythink.core.api.ATBidRequestInfo r12) {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.c.h.a(com.anythink.core.c.h, com.anythink.core.common.h.by, com.anythink.core.api.ATBidRequestInfo):void");
    }
}
