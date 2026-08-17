package com.smartdigimkt.d4;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.smartdigimkt.f3.s;
import com.smartdigimkt.h3.l;
import com.smartdigimkt.h3.m;
import com.smartdigimkt.sdk.api.ISDMAdManager;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class i implements ISDMAdManager {

    /* renamed from: a, reason: collision with root package name */
    public static volatile i f39908a;

    public static i a() {
        if (f39908a == null) {
            synchronized (i.class) {
                try {
                    if (f39908a == null) {
                        f39908a = new i();
                    }
                } finally {
                }
            }
        }
        return f39908a;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006f A[Catch: all -> 0x001e, TryCatch #1 {all -> 0x001e, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x0013, B:13:0x0023, B:15:0x0029, B:17:0x004a, B:18:0x0057, B:22:0x0064, B:23:0x006f, B:25:0x0078), top: B:40:0x0003 }] */
    @Override // com.smartdigimkt.sdk.api.ISDMAdManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void getBidTokenJSONObject(java.util.Map r5, com.smartdigimkt.sdk.api.ISDMAdManager.BidTokenCallBack r6) {
        /*
            r4 = this;
            r0 = 0
            if (r5 == 0) goto L6f
            boolean r1 = r5.isEmpty()     // Catch: java.lang.Throwable -> L1e
            if (r1 != 0) goto L6f
            java.lang.String r1 = "sdm_load_data"
            java.lang.Object r1 = r5.get(r1)     // Catch: java.lang.Throwable -> L1e
            boolean r2 = r1 instanceof android.os.Bundle     // Catch: java.lang.Throwable -> L1e
            if (r2 == 0) goto L20
            android.os.Bundle r1 = (android.os.Bundle) r1     // Catch: java.lang.Throwable -> L1e
            java.lang.Class<com.smartdigimkt.sdk.core.bridge.entity.LoadInfoEntity> r2 = com.smartdigimkt.sdk.core.bridge.entity.LoadInfoEntity.class
            com.smartdigimkt.sdk.core.bridge.entity.BaseInfoEntity r1 = com.smartdigimkt.d3.b.a(r1, r2)     // Catch: java.lang.Throwable -> L1e
            com.smartdigimkt.sdk.core.bridge.entity.LoadInfoEntity r1 = (com.smartdigimkt.sdk.core.bridge.entity.LoadInfoEntity) r1     // Catch: java.lang.Throwable -> L1e
            goto L21
        L1e:
            r5 = move-exception
            goto L7c
        L20:
            r1 = r0
        L21:
            if (r1 == 0) goto L62
            com.smartdigimkt.sdk.core.bridge.entity.RequestInfoEntity r2 = r1.getRequestInfoEntity()     // Catch: java.lang.Throwable -> L1e
            if (r2 == 0) goto L62
            com.smartdigimkt.sdk.core.bridge.entity.RequestInfoEntity r1 = r1.getRequestInfoEntity()     // Catch: java.lang.Throwable -> L1e
            com.smartdigimkt.l3.a r1 = r1.convertToBaseAdRequestInfo()     // Catch: java.lang.Throwable -> L1e
            com.smartdigimkt.x.l r2 = com.smartdigimkt.x.l.a()     // Catch: java.lang.Throwable -> L1e
            com.smartdigimkt.d4.h r3 = new com.smartdigimkt.d4.h     // Catch: java.lang.Throwable -> L1e
            r3.<init>(r4, r6, r5, r1)     // Catch: java.lang.Throwable -> L1e
            r2.getClass()     // Catch: java.lang.Throwable -> L1e
            com.smartdigimkt.b4.e r5 = com.smartdigimkt.b4.e.a()     // Catch: java.lang.Throwable -> L1e
            r5.getClass()     // Catch: java.lang.Throwable -> L1e
            boolean r5 = com.smartdigimkt.b4.e.b()     // Catch: java.lang.Throwable -> L1e
            if (r5 == 0) goto L57
            com.smartdigimkt.b4.e r5 = com.smartdigimkt.b4.e.a()     // Catch: java.lang.Throwable -> L1e
            com.smartdigimkt.x.d r1 = new com.smartdigimkt.x.d     // Catch: java.lang.Throwable -> L1e
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L1e
            r5.c(r1)     // Catch: java.lang.Throwable -> L1e
            goto L5a
        L57:
            r2.a(r3)     // Catch: java.lang.Throwable -> L1e
        L5a:
            com.smartdigimkt.z4.d r5 = com.smartdigimkt.z4.d.c()
            r5.e()
            return
        L62:
            if (r6 == 0) goto L91
            com.smartdigimkt.sdk.core.SDKContext r5 = com.smartdigimkt.sdk.core.SDKContext.getInstance()     // Catch: java.lang.Throwable -> L1e
            r5.j()     // Catch: java.lang.Throwable -> L1e
            r6.onComplete(r0)     // Catch: java.lang.Throwable -> L1e
            goto L91
        L6f:
            com.smartdigimkt.sdk.core.SDKContext r5 = com.smartdigimkt.sdk.core.SDKContext.getInstance()     // Catch: java.lang.Throwable -> L1e
            r5.j()     // Catch: java.lang.Throwable -> L1e
            if (r6 == 0) goto L91
            r6.onComplete(r0)     // Catch: java.lang.Throwable -> L1e
            goto L91
        L7c:
            com.smartdigimkt.sdk.core.SDKContext r1 = com.smartdigimkt.sdk.core.SDKContext.getInstance()     // Catch: java.lang.Throwable -> L8a
            boolean r1 = r1.j()     // Catch: java.lang.Throwable -> L8a
            if (r1 == 0) goto L8c
            r5.getMessage()     // Catch: java.lang.Throwable -> L8a
            goto L8c
        L8a:
            r5 = move-exception
            goto L99
        L8c:
            if (r6 == 0) goto L91
            r6.onComplete(r0)     // Catch: java.lang.Throwable -> L8a
        L91:
            com.smartdigimkt.z4.d r5 = com.smartdigimkt.z4.d.c()
            r5.e()
            return
        L99:
            com.smartdigimkt.z4.d r6 = com.smartdigimkt.z4.d.c()
            r6.e()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.d4.i.getBidTokenJSONObject(java.util.Map, com.smartdigimkt.sdk.api.ISDMAdManager$BidTokenCallBack):void");
    }

    @Override // com.smartdigimkt.sdk.api.ISDMAdManager
    public final JSONObject getDirectlyBidTokenJSONObject(Context context, Map map, Map map2) {
        if (map2 != null) {
            try {
                if (!map2.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    for (Map.Entry entry : map2.entrySet()) {
                        arrayList.add((String) entry.getKey());
                        com.smartdigimkt.g3.c.a(context).a((String) entry.getKey(), (String) entry.getValue());
                    }
                    JSONObject jSONObject = new JSONObject();
                    ArrayList arrayListA = com.smartdigimkt.g3.c.a(context).a(arrayList);
                    if (arrayListA.size() > 0) {
                        JSONObject jSONObject2 = new JSONObject();
                        JSONObject jSONObject3 = new JSONObject();
                        int size = arrayListA.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayListA.get(i2);
                            i2++;
                            com.smartdigimkt.m3.i iVar = (com.smartdigimkt.m3.i) obj;
                            int i3 = iVar.f42036e;
                            if (i3 > 0) {
                                jSONObject2.put(iVar.f42033b, i3);
                            }
                            int i4 = iVar.f42035d;
                            if (i4 > 0) {
                                jSONObject3.put(iVar.f42033b, i4);
                            }
                        }
                        if (jSONObject2.length() > 0) {
                            jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.DIRECTLY_DA_OFFER_CLICK, jSONObject2);
                        }
                        if (jSONObject3.length() > 0) {
                            jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.DIRECTLY_DA_OFFER_IMPRESSION, jSONObject3);
                        }
                    }
                    return jSONObject;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    @Override // com.smartdigimkt.sdk.api.ISDMAdManager
    public final void getS2SBidToken(String str, Map map, ISDMAdManager.S2SBidTokenCallback s2SBidTokenCallback) {
        if (s2SBidTokenCallback == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            com.smartdigimkt.b4.e.a().c(new f(s2SBidTokenCallback, ""));
            return;
        }
        m mVarB = m.b();
        mVarB.getClass();
        com.smartdigimkt.b4.e.a().a(new l(mVarB), 0L, 17);
        SDKContext sDKContext = SDKContext.getInstance();
        boolean z2 = sDKContext.f44116e;
        boolean z3 = sDKContext.f44117f;
        if (!z2 || !z3) {
            com.smartdigimkt.b4.e.a().c(new c(z2, z3, sDKContext, str, map, s2SBidTokenCallback));
            return;
        }
        com.smartdigimkt.z4.d.c().e();
        com.smartdigimkt.a5.e eVarA = com.smartdigimkt.z4.m.a().a(str);
        com.smartdigimkt.j4.a aVar = new com.smartdigimkt.j4.a(str);
        aVar.f41118b = eVarA;
        aVar.f41119c = new d(str, map, s2SBidTokenCallback);
        com.smartdigimkt.b4.e.a().c(new e(new com.smartdigimkt.j4.b(aVar)));
    }

    public static JSONObject a(ArrayList arrayList) {
        JSONObject jSONObject = new JSONObject();
        try {
            HashMap map = new HashMap();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                s sVar = (s) obj;
                List arrayList2 = (List) map.get(sVar.f40253a);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    map.put(sVar.f40253a, arrayList2);
                }
                arrayList2.add(sVar.f40254b);
            }
            for (Map.Entry entry : map.entrySet()) {
                jSONObject.put((String) entry.getKey(), new JSONArray((Collection) entry.getValue()));
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public static void a(JSONObject jSONObject, Map map, int i2) {
        try {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        String string = map.get("size").toString();
                        if (TextUtils.isEmpty(string)) {
                            return;
                        }
                        String[] strArrSplit = string.split("x");
                        int i3 = Integer.parseInt(strArrSplit[0]);
                        int i4 = Integer.parseInt(strArrSplit[1]);
                        jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_WIDTH, i3);
                        jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_HEIGHT, i4);
                        return;
                    }
                    if (i2 != 3 && i2 != 4) {
                        return;
                    }
                }
                jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_WIDTH, com.smartdigimkt.c5.h.j(SDKContext.getInstance().d()));
                jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_HEIGHT, com.smartdigimkt.c5.h.i(SDKContext.getInstance().d()));
                return;
            }
            jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_WIDTH, com.smartdigimkt.c5.h.j(SDKContext.getInstance().d()));
            jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_HEIGHT, com.smartdigimkt.c5.h.i(SDKContext.getInstance().d()));
        } catch (Throwable unused) {
        }
    }
}
