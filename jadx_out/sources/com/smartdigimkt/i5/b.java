package com.smartdigimkt.i5;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.h.y;
import com.smartdigimkt.c5.w;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class b extends com.smartdigimkt.g5.c {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v5, types: [com.smartdigimkt.j1.f] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:243:0x05e8 -> B:255:0x0521). Please report as a decompilation issue!!! */
    @Override // com.smartdigimkt.g5.c
    public final boolean b(com.smartdigimkt.g5.a aVar) {
        com.smartdigimkt.a5.f fVar;
        com.smartdigimkt.o3.b bVar;
        SDMAdRequest sDMAdRequest;
        int i2;
        String str;
        Map map;
        Map<String, Object> map2;
        com.smartdigimkt.j1.g gVar;
        int i3;
        JSONArray jSONArrayA;
        int adWidth;
        com.smartdigimkt.j1.g gVar2;
        int i4;
        int iJ;
        int adWidth2;
        int adHeight;
        Object obj;
        int iIntValue;
        String str2 = "";
        w.a(aVar.f40412s, "request", "start", "");
        SDMAdRequest sDMAdRequest2 = aVar.f40395b;
        int i5 = aVar.f40396c;
        com.smartdigimkt.l3.a aVar2 = aVar.f40407n;
        com.smartdigimkt.o3.b bVar2 = aVar.f40409p;
        if (bVar2 == null) {
            str2 = "bidding result is null";
        } else if (aVar.f40405l == null) {
            str2 = "place strategy is null";
        } else if (aVar.f40406m == null) {
            str2 = "unit group info is null";
        } else if (aVar2 == null) {
            str2 = "ad request info is null";
        }
        if (!TextUtils.isEmpty(str2)) {
            aVar.a(com.smartdigimkt.k4.b.a("10010", "load fail:".concat(str2)));
            return false;
        }
        if (bVar2 != null && !bVar2.f42221a) {
            aVar.a(com.smartdigimkt.k4.b.a("10008", "bidding fail:" + bVar2.f42226f));
            return false;
        }
        com.smartdigimkt.f3.f fVarA = com.smartdigimkt.f3.f.a();
        String str3 = aVar.f40398e;
        fVarA.getClass();
        com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.f3.a(fVarA, str3, bVar2));
        com.smartdigimkt.q3.a aVar3 = aVar.f40412s;
        if (aVar3 == null || aVar.f40405l == null || (fVar = aVar.f40406m) == null || (bVar = fVar.f39440a) == null) {
            sDMAdRequest = sDMAdRequest2;
            i2 = i5;
            str = "10010";
        } else {
            sDMAdRequest = sDMAdRequest2;
            i2 = i5;
            aVar3.f42751b0 = fVar.f39462w;
            aVar3.f42753c0 = bVar.f42222b;
            try {
                aVar3.f42733L = SDMSDK.getInstance().getSDKVersion();
            } catch (Throwable unused) {
            }
            aVar3.f42735N = fVar.f39454o;
            aVar3.f42737P = fVar.f39441b;
            aVar3.f42738Q = fVar.f39450k;
            aVar3.f42736O = fVar.f39443d;
            if (fVar.f39452m == 2) {
                aVar3.f42739R = fVar.f39445f;
                aVar3.f42741T = fVar.f39458s;
                aVar3.f42740S = fVar.f39438B;
            } else {
                aVar3.f42739R = 0.0d;
                aVar3.f42741T = 0.0d;
                aVar3.f42740S = 0.0d;
            }
            if (fVar.f39446g != 1) {
                TextUtils.isEmpty(fVar.f39451l);
            } else if (fVar.f39455p != 2) {
                TextUtils.isEmpty(bVar.f42245M == 3 ? "ecpm_api" : bVar.f42236D);
            }
            aVar3.f42747Z = fVar.f39446g;
            try {
                Map map3 = fVar.f39444e;
                JSONObject jSONObject = new JSONObject();
                if ("0".equals(aVar3.f42752c)) {
                    int i6 = fVar.f39453n;
                    str = "10010";
                    if (3 == i6 || 7 == i6) {
                        try {
                            String strA = com.smartdigimkt.c5.k.a("layout_type", map3);
                            if (TextUtils.isEmpty(strA) || strA.equals("0")) {
                                strA = "2";
                            }
                            jSONObject.put("tpl_type", strA);
                        } catch (Throwable unused2) {
                        }
                    }
                } else {
                    str = "10010";
                }
                jSONObject.toString();
                aVar3.f42725D = ((Integer) com.smartdigimkt.c5.k.a(map3, "render_type", (Object) 0)).intValue();
                aVar3.f42726E = ((Integer) com.smartdigimkt.c5.k.a(map3, "template_type", (Object) 0)).intValue();
            } catch (Throwable unused3) {
                str = "10010";
            }
            aVar3.f42745X = bVar.f42256s;
            aVar3.f42734M = fVar.f39442c;
            aVar3.f42746Y = fVar.f39461v;
            com.smartdigimkt.a5.c cVar = fVar.f39439C;
            if (cVar != null) {
                aVar3.f42742U = cVar.f39401b;
                aVar3.f42743V = cVar.f39405f;
                aVar3.f42744W = cVar.f39403d;
                aVar3.f42749a0 = cVar.f39400a;
            }
            if (bVar.f42245M > 0) {
                aVar3.f42731J = bVar.f42244L;
            }
            aVar3.f42732K = bVar.f42246N;
            aVar3.f42772m = bVar.f42248P;
            aVar3.f42780q = bVar.f42230j;
        }
        com.smartdigimkt.y3.d.a(SDKContext.getInstance().d()).a(1, aVar.f40412s, -1L);
        com.smartdigimkt.a5.f fVar2 = aVar.f40406m;
        if (!TextUtils.equals(bVar2.f42263z, fVar2.f39450k)) {
            aVar.a(com.smartdigimkt.k4.b.a("10008", "bidding fail:bid result adsource(" + bVar2.f42263z + ") id not match unitgroup adsource(" + fVar2.f39450k + ")"));
            return false;
        }
        if (aVar.a()) {
            HashMap map4 = new HashMap();
            Map map5 = fVar2.f39444e;
            if (map5 != null && !map5.isEmpty()) {
                map4.putAll(map5);
            }
            if (sDMAdRequest != null && sDMAdRequest.getExtraMap() != null && !sDMAdRequest.getExtraMap().isEmpty()) {
                map4.putAll(sDMAdRequest.getExtraMap());
            }
            boolean zIsEmpty = map4.isEmpty();
            map = map4;
            if (zIsEmpty) {
                map = null;
            }
        } else {
            map = fVar2.f39444e;
        }
        Context context = aVar.f40394a;
        int i7 = aVar.f40396c;
        if (map == null || map.isEmpty()) {
            map2 = null;
            gVar = null;
        } else {
            if (i7 == 0) {
                int iIntValue2 = ((Integer) com.smartdigimkt.c5.k.a(map, com.anythink.core.common.k.aN, (Object) 0)).intValue();
                int iIntValue3 = ((Integer) com.smartdigimkt.c5.k.a(map, "v_m", (Object) 0)).intValue();
                String nativeVideoAutoPlay = (String) com.smartdigimkt.c5.k.a(map, "video_autoplay", "1");
                boolean zEquals = TextUtils.equals("1", com.smartdigimkt.c5.k.a("layout_type", map));
                if (zEquals) {
                    com.smartdigimkt.x.l.a().getClass();
                    jSONArrayA = com.smartdigimkt.x.l.a(map);
                } else {
                    jSONArrayA = null;
                }
                if (!zEquals) {
                    if (sDMAdRequest != null && !TextUtils.isEmpty(sDMAdRequest.getNativeVideoAutoPlay())) {
                        nativeVideoAutoPlay = sDMAdRequest.getNativeVideoAutoPlay();
                    }
                    iIntValue3 = 0;
                }
                int adHeight2 = -2;
                if (sDMAdRequest != null) {
                    adWidth = sDMAdRequest.getAdWidth() != 0 ? sDMAdRequest.getAdWidth() : -1;
                    if (sDMAdRequest.getAdHeight() != 0) {
                        adHeight2 = sDMAdRequest.getAdHeight();
                    }
                } else {
                    adWidth = -1;
                }
                if (adWidth > 0 && adWidth > (iJ = com.smartdigimkt.c5.h.j(context))) {
                    adWidth = iJ;
                }
                if (adHeight2 > 0 && adHeight2 > (i4 = com.smartdigimkt.c5.h.i(context))) {
                    adHeight2 = i4;
                }
                com.smartdigimkt.j1.g gVar3 = new com.smartdigimkt.j1.g();
                gVar3.f41078a = iIntValue3;
                gVar3.f41079b = 0;
                gVar3.f41080c = iIntValue2;
                map2 = null;
                gVar3.f41081d = null;
                gVar3.f41082e = 0;
                gVar3.f41083f = 0;
                gVar3.f41084g = 0;
                gVar3.f41086i = adHeight2;
                gVar3.f41085h = adWidth;
                gVar3.f41087j = null;
                gVar3.f41088k = false;
                gVar3.f41089l = 0;
                gVar3.f41090m = jSONArrayA;
                gVar3.f41091n = nativeVideoAutoPlay;
                gVar2 = gVar3;
            } else if (i7 == 1) {
                int iIntValue4 = ((Integer) com.smartdigimkt.c5.k.a(map, "v_m", (Object) 0)).intValue();
                int iIntValue5 = ((Integer) com.smartdigimkt.c5.k.a(map, "s_c_t", (Object) (-1))).intValue();
                gVar2 = new com.smartdigimkt.j1.g();
                gVar2.f41078a = iIntValue4;
                gVar2.f41079b = iIntValue5;
                gVar2.f41080c = 0;
                map2 = null;
                gVar2.f41081d = null;
                gVar2.f41082e = 0;
                gVar2.f41083f = 0;
                gVar2.f41084g = 0;
                gVar2.f41086i = 0;
                gVar2.f41085h = 0;
                gVar2.f41087j = null;
                gVar2.f41088k = false;
                gVar2.f41089l = 0;
                gVar2.f41090m = null;
                gVar2.f41091n = null;
            } else if (i7 == 2) {
                String str4 = (String) com.smartdigimkt.c5.k.a(map, "size", y.f4501a);
                int iIntValue6 = ((Integer) com.smartdigimkt.c5.k.a(map, com.anythink.core.common.k.aN, (Object) 0)).intValue();
                if (sDMAdRequest != null) {
                    adWidth2 = sDMAdRequest.getAdWidth();
                    adHeight = sDMAdRequest.getAdHeight();
                } else {
                    adWidth2 = 0;
                    adHeight = 0;
                }
                gVar2 = new com.smartdigimkt.j1.g();
                gVar2.f41078a = 0;
                gVar2.f41079b = 0;
                gVar2.f41080c = iIntValue6;
                gVar2.f41081d = str4;
                gVar2.f41082e = 0;
                gVar2.f41083f = 0;
                gVar2.f41084g = 0;
                gVar2.f41086i = adHeight;
                gVar2.f41085h = adWidth2;
                map2 = null;
                gVar2.f41087j = null;
                gVar2.f41088k = false;
                gVar2.f41089l = 0;
                gVar2.f41090m = null;
                gVar2.f41091n = null;
            } else if (i7 != 3) {
                if (i7 == 4) {
                    int iIntValue7 = ((Integer) com.smartdigimkt.c5.k.a(map, "orientation", (Object) 1)).intValue();
                    int iIntValue8 = ((Integer) com.smartdigimkt.c5.k.a(map, "countdown", (Object) 5)).intValue();
                    int iIntValue9 = ((Integer) com.smartdigimkt.c5.k.a(map, "end_cls", (Object) 1)).intValue();
                    int i8 = (map.containsKey("allows_skip") && (iIntValue = ((Integer) com.smartdigimkt.c5.k.a(map, "allows_skip", (Object) 0)).intValue()) != 0 && iIntValue == 1) ? 0 : 1;
                    gVar2 = new com.smartdigimkt.j1.g();
                    gVar2.f41078a = 0;
                    gVar2.f41079b = 0;
                    gVar2.f41080c = 0;
                    gVar2.f41081d = null;
                    gVar2.f41082e = iIntValue7;
                    gVar2.f41083f = iIntValue8 * 1000;
                    gVar2.f41084g = i8;
                    gVar2.f41086i = 0;
                    gVar2.f41085h = 0;
                    gVar2.f41087j = null;
                    gVar2.f41088k = false;
                    gVar2.f41089l = iIntValue9;
                    gVar2.f41090m = null;
                    gVar2.f41091n = null;
                    map2 = null;
                }
                map2 = null;
                gVar = null;
            } else {
                int iIntValue10 = ((Integer) com.smartdigimkt.c5.k.a(map, "v_m", (Object) 0)).intValue();
                int iIntValue11 = ((Integer) com.smartdigimkt.c5.k.a(map, "s_c_t", (Object) (-1))).intValue();
                String str5 = (String) com.smartdigimkt.c5.k.a(map, com.anythink.core.common.k.aG, "1");
                char c2 = (aVar2 == null || aVar2.f41636j != 67) ? (char) 0 : (!map.containsKey("unit_type") || (obj = map.get("unit_type")) == null || Integer.parseInt(obj.toString()) == 0) ? (char) 2 : (char) 1;
                boolean z2 = c2 > 0 && c2 == 1;
                gVar = new com.smartdigimkt.j1.g();
                gVar.f41078a = iIntValue10;
                gVar.f41079b = iIntValue11;
                gVar.f41080c = 0;
                map2 = null;
                gVar.f41081d = null;
                gVar.f41082e = 0;
                gVar.f41083f = 0;
                gVar.f41084g = 0;
                gVar.f41086i = 0;
                gVar.f41085h = 0;
                gVar.f41087j = str5;
                gVar.f41088k = z2;
                gVar.f41089l = 0;
                gVar.f41090m = null;
                gVar.f41091n = null;
            }
            gVar = gVar2;
        }
        aVar.f40408o = gVar;
        if (aVar2 == null) {
            i3 = i2;
        } else if (i2 != 0) {
            i3 = i2;
            if (i3 == 4) {
                Integer num = (Integer) com.smartdigimkt.c5.k.a(map, "orientation", (Object) 1);
                num.getClass();
                HashMap map6 = new HashMap();
                map6.put("orientation", num);
                if (sDMAdRequest != null) {
                    map6.put(ATAdConst.KEY.AD_WIDTH, Integer.valueOf(sDMAdRequest.getAdWidth()));
                    map6.put(ATAdConst.KEY.AD_HEIGHT, Integer.valueOf(sDMAdRequest.getAdHeight()));
                }
                aVar2.f41645s = map6;
            }
        } else {
            i3 = i2;
            aVar2.f41647u = TextUtils.equals("1", com.smartdigimkt.c5.k.a("layout_type", map));
            com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
            if (aVarA != null) {
                aVar2.f41646t = aVarA.f39354P;
            }
        }
        if (aVar2 == null) {
            String str6 = str;
            StringBuilder sb = new StringBuilder("loadContext is not valid param1:true,param2:");
            sb.append(aVar2 != null);
            aVar.a(com.smartdigimkt.k4.b.a(str6, sb.toString()));
            return false;
        }
        ?? lVar = i3 != 0 ? i3 != 1 ? i3 != 2 ? i3 != 3 ? i3 != 4 ? map2 : new com.smartdigimkt.j1.l(aVar.f40394a, aVar2, fVar2) : new com.smartdigimkt.j1.h(aVar.f40394a, aVar2, fVar2) : new com.smartdigimkt.j1.a(aVar.f40394a, aVar2, fVar2) : new com.smartdigimkt.j1.j(aVar.f40394a, aVar2, fVar2) : new com.smartdigimkt.j1.i(aVar.f40394a, aVar2, fVar2);
        if (lVar == 0) {
            aVar.a(com.smartdigimkt.k4.b.a(str, "not support format:" + aVar2.f41628b));
            return false;
        }
        Map<String, Object> customEventMap = sDMAdRequest != null ? sDMAdRequest.getCustomEventMap() : map2;
        if (customEventMap == null) {
            customEventMap = new HashMap<>();
        }
        lVar.f41072h = customEventMap;
        lVar.a(aVar.f40408o);
        lVar.f41076l = aVar.f40412s;
        com.smartdigimkt.j1.b bVar3 = new com.smartdigimkt.j1.b(lVar, new a(this, lVar, aVar));
        Map map7 = lVar.f41072h;
        if (map7 == null || map7.isEmpty() || ((Integer) com.smartdigimkt.c5.k.a(lVar.f41072h, SDMAdConst.EXTRA_PARAMS.E_L_PARAMS, (Object) 0)).intValue() != 1) {
            try {
                com.smartdigimkt.l3.a aVar4 = lVar.f41067c;
                if (aVar4 == null || TextUtils.isEmpty(aVar4.f41627a) || TextUtils.isEmpty(lVar.f41067c.f41635i)) {
                    bVar3.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4592i, com.anythink.core.common.inner.b.b.f4559B));
                } else {
                    com.smartdigimkt.y3.b bVarA = com.smartdigimkt.y3.b.a();
                    com.smartdigimkt.l3.a aVar5 = lVar.f41067c;
                    bVarA.getClass();
                    String str7 = aVar5.f41632f + "_ " + aVar5.f41631e;
                    com.smartdigimkt.y3.b.a().a(str7).f42037a = System.currentTimeMillis();
                    com.smartdigimkt.k1.h.a(lVar.f41066b).a(lVar.f41067c, lVar.f41075k, lVar.f41068d, new com.smartdigimkt.j1.e(lVar, str7, bVar3));
                }
            } catch (Throwable th) {
                th.printStackTrace();
                bVar3.a(new com.smartdigimkt.i0.f("-9999", th.getMessage()));
            }
            return false;
        }
        com.smartdigimkt.j1.c cVar2 = new com.smartdigimkt.j1.c(bVar3);
        boolean zA = com.smartdigimkt.j1.f.a(lVar.b());
        com.smartdigimkt.o1.a.a(lVar.f41067c, lVar.f41069e, lVar.f41068d);
        if (zA) {
            bVar3.b();
            return false;
        }
        if (lVar.f41067c == null) {
            return false;
        }
        com.smartdigimkt.k1.h hVarA = com.smartdigimkt.k1.h.a(lVar.f41066b);
        com.smartdigimkt.m3.b bVar4 = lVar.f41069e;
        com.smartdigimkt.l3.a aVar6 = lVar.f41067c;
        com.smartdigimkt.j1.g gVar4 = lVar.f41068d;
        com.smartdigimkt.j1.d dVar = new com.smartdigimkt.j1.d(cVar2);
        hVarA.getClass();
        com.smartdigimkt.b4.e eVarA = com.smartdigimkt.b4.e.a();
        com.smartdigimkt.k1.d dVar2 = new com.smartdigimkt.k1.d(hVarA, bVar4, aVar6, gVar4, dVar);
        eVarA.getClass();
        String name = Thread.currentThread().getName();
        eVarA.f39591a.getClass();
        if (TextUtils.equals(name, com.smartdigimkt.b4.b.a(6))) {
            dVar2.run();
            return false;
        }
        com.smartdigimkt.b4.d dVar3 = new com.smartdigimkt.b4.d(dVar2);
        Long.valueOf(System.currentTimeMillis() / 1000).intValue();
        eVarA.a(dVar3, 6);
        return false;
    }
}
