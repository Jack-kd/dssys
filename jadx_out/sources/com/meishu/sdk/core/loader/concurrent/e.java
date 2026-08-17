package com.meishu.sdk.core.loader.concurrent;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.splash.SplashAdLoader;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.AdPlatformError;
import com.meishu.sdk.core.loader.cache.CacheManager;
import com.meishu.sdk.core.loader.serverbidding.S2sbResultBean;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.utils.t;
import com.qq.e.comm.pi.IBidding;
import com.sigmob.windad.WindAds;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class e implements g {

    /* renamed from: a, reason: collision with root package name */
    public Context f31621a;

    /* renamed from: b, reason: collision with root package name */
    public MeishuAdInfo f31622b;

    /* renamed from: c, reason: collision with root package name */
    public Map<String, Object> f31623c;

    /* renamed from: d, reason: collision with root package name */
    public com.meishu.sdk.core.loader.strategy.a f31624d;

    /* renamed from: e, reason: collision with root package name */
    public com.meishu.sdk.core.loader.c f31625e;

    /* renamed from: f, reason: collision with root package name */
    public com.meishu.sdk.core.loader.d f31626f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f31627g;

    /* renamed from: h, reason: collision with root package name */
    public long f31628h;

    /* renamed from: j, reason: collision with root package name */
    public boolean f31630j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f31633m;

    /* renamed from: i, reason: collision with root package name */
    public Handler f31629i = new Handler(Looper.getMainLooper());

    /* renamed from: k, reason: collision with root package name */
    public List<com.meishu.sdk.core.loader.cache.a> f31631k = new LinkedList();

    /* renamed from: l, reason: collision with root package name */
    public List<com.meishu.sdk.core.loader.loadbean.a> f31632l = new ArrayList();

    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f31637a;

        static {
            int[] iArr = new int[AdType.values().length];
            f31637a = iArr;
            try {
                iArr[AdType.SPLASH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31637a[AdType.BANNER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31637a[AdType.REWARD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31637a[AdType.FEED_MIX.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f31637a[AdType.INTERSTITIAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f31637a[AdType.FULL_SCREEN_VIDEO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public e(Context context, com.meishu.sdk.core.loader.c cVar, MeishuAdInfo meishuAdInfo, Map<String, Object> map) {
        this.f31621a = context;
        this.f31622b = meishuAdInfo;
        this.f31623c = map;
        this.f31625e = cVar;
    }

    public final void a(com.meishu.sdk.core.loader.cache.a aVar) {
        try {
            Object obj = aVar.f31609d;
            SdkAdInfo sdkAdInfo = aVar.f31607b;
            if ("GDT".equals(sdkAdInfo.getSdk())) {
                if (!"bidding".equals(sdkAdInfo.getOtype())) {
                    if (TextUtils.isEmpty(sdkAdInfo.getS2sb())) {
                        return;
                    }
                    ArrayList arrayList = (ArrayList) a(sdkAdInfo.getCodPrice());
                    if (arrayList.size() > 0) {
                        a(sdkAdInfo, ((Integer) arrayList.get(0)).intValue());
                        return;
                    }
                    return;
                }
                if (obj instanceof com.meishu.sdk.core.ad.a) {
                    Object sdkAd = ((com.meishu.sdk.core.ad.a) obj).getSdkAd();
                    if (!(sdkAd instanceof IBidding) || sdkAdInfo.getCodPrice() <= 0 || sdkAdInfo.getEcpm() <= sdkAdInfo.getCodPrice()) {
                        return;
                    }
                    HashMap map = new HashMap();
                    map.put("expectCostPrice", Integer.valueOf(sdkAdInfo.getOriginEcpm()));
                    map.put("highestLossPrice", Integer.valueOf(Math.min(sdkAdInfo.getPrice(), sdkAdInfo.getOriginEcpm())));
                    ((IBidding) sdkAd).sendWinNotification(map);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final boolean b(SdkAdInfo[] sdkAdInfoArr, MeishuAdInfo meishuAdInfo) {
        String cacheKey = meishuAdInfo.getCacheKey();
        if (meishuAdInfo.getCache() > 0) {
            CacheManager cacheManager = CacheManager.INSTANCE;
            if (cacheManager.getFirstEntity(cacheKey) != null) {
                cacheManager.getFirstEntity(cacheKey);
            }
            while (true) {
                CacheManager cacheManager2 = CacheManager.INSTANCE;
                if (cacheManager2.getCacheListByKey(cacheKey) == null || cacheManager2.getCacheListByKey(cacheKey).size() <= 0) {
                    break;
                }
                com.meishu.sdk.core.loader.cache.a firstEntity = cacheManager2.getFirstEntity(cacheKey);
                if (firstEntity != null && firstEntity.a()) {
                    if (this.f31626f != null && firstEntity.f31608c <= meishuAdInfo.getCacheScore()) {
                        this.f31627g = true;
                        meishuAdInfo.setUsed(true);
                        a(false);
                        return true;
                    }
                    cacheManager2.removeFirstEntity(cacheKey);
                    try {
                        this.f31627g = true;
                        this.f31630j = true;
                        Object obj = firstEntity.f31609d;
                        a(firstEntity);
                        new com.meishu.sdk.core.loader.cache.b().a(this.f31621a, firstEntity, this.f31622b.getReq_id(), this.f31625e.startLoadTime, this.f31622b.getSdk_monitor());
                        if (this.f31625e.getLoaderListener() != null) {
                            this.f31625e.getLoaderListener().onAdLoaded(obj);
                            this.f31625e.getLoaderListener().onAdReady(obj);
                            if (obj instanceof com.meishu.sdk.core.ad.a) {
                                ((com.meishu.sdk.core.ad.a) obj).setCacheAdListener(new com.meishu.sdk.core.loader.concurrent.a(this, firstEntity));
                            }
                            this.f31629i.post(new com.meishu.sdk.core.loader.concurrent.b(this, obj));
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        this.f31627g = false;
                        this.f31630j = false;
                    }
                    if (sdkAdInfoArr == null) {
                        a(true);
                        return true;
                    }
                }
            }
        } else {
            CacheManager.INSTANCE.remove(cacheKey);
        }
        return false;
    }

    public class a implements f {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ boolean f31634a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean[] f31635b;

        public a(boolean z2, boolean[] zArr) {
            this.f31634a = z2;
            this.f31635b = zArr;
        }

        @Override // com.meishu.sdk.core.loader.concurrent.f
        public void a(AdPlatformError adPlatformError, int i2) {
            if (this.f31634a || e.this.f31625e.getLoaderListener() == null) {
                return;
            }
            LogUtil.e("ConCurrentManager", "Meishu___onAdError");
            e.this.f31625e.getLoaderListener().onAdError();
        }

        @Override // com.meishu.sdk.core.loader.concurrent.f
        public void b(Object obj, int i2) {
            if (this.f31634a || e.this.f31625e.getLoaderListener() == null) {
                return;
            }
            e.this.f31625e.getLoaderListener().onAdLoaded(obj);
        }

        @Override // com.meishu.sdk.core.loader.concurrent.f
        public void onAdExposure() {
            boolean[] zArr = this.f31635b;
            if (zArr[0]) {
                return;
            }
            zArr[0] = true;
            try {
                t.a(e.this.f31622b.getBakUrls(), e.this.f31626f);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.meishu.sdk.core.loader.concurrent.f
        public void a(Object obj, int i2) {
            if (this.f31634a) {
                String cacheKey = e.this.f31622b.getCacheKey();
                e.this.f31631k.clear();
                com.meishu.sdk.core.loader.cache.a aVar = new com.meishu.sdk.core.loader.cache.a();
                MeishuAdInfo meishuAdInfo = e.this.f31622b;
                aVar.f31613h = meishuAdInfo;
                aVar.f31609d = obj;
                aVar.f31606a = cacheKey;
                aVar.f31610e = true;
                aVar.f31611f = meishuAdInfo.getLoadedTime();
                aVar.f31612g = e.this.f31622b.getExpire_timestamp();
                SdkAdInfo sdkAdInfo = new SdkAdInfo();
                sdkAdInfo.setSdk("MS");
                aVar.f31607b = sdkAdInfo;
                aVar.f31608c = e.this.f31622b.getCacheScore();
                e.this.f31631k.add(aVar);
                CacheManager cacheManager = CacheManager.INSTANCE;
                e eVar = e.this;
                cacheManager.handleCurrentList(cacheKey, eVar.f31631k, eVar.f31622b.getCache());
                return;
            }
            e eVar2 = e.this;
            if (eVar2.f31630j) {
                return;
            }
            eVar2.f31630j = true;
            e eVar3 = e.this;
            com.meishu.sdk.core.loader.strategy.a aVar2 = eVar3.f31624d;
            if (aVar2 != null) {
                ((com.meishu.sdk.core.loader.strategy.e) aVar2).f31667r = true;
            }
            if (eVar3.f31625e.getLoaderListener() != null) {
                e.this.f31625e.getLoaderListener().onAdReady(obj);
            }
            e.a(e.this, obj);
        }

        @Override // com.meishu.sdk.core.loader.concurrent.f
        public void a(String str, int i2, int i3) {
            if (this.f31634a) {
                return;
            }
            if (e.this.f31625e.getAdType() != AdType.SPLASH) {
                try {
                    p1.b(e.this.f31622b.getEventUrl(), i2, str);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            if (e.this.f31625e.getLoaderListener() != null) {
                e.this.f31625e.getLoaderListener().onAdRenderFail(str, i2);
            }
        }
    }

    public static void a(e eVar, Object obj) {
        eVar.getClass();
        if ((obj instanceof com.meishu.sdk.core.ad.splash.c) && ((Boolean) eVar.f31623c.get(SplashAdLoader.KEY_AUTO_SHOW)).booleanValue()) {
            com.meishu.sdk.core.loader.c cVar = eVar.f31625e;
            if (cVar instanceof SplashAdLoader) {
                ((com.meishu.sdk.core.ad.splash.c) obj).showAd(((SplashAdLoader) cVar).getAdContainer());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:154:0x0328 A[Catch: all -> 0x031d, TryCatch #14 {all -> 0x031d, blocks: (B:4:0x0003, B:29:0x004e, B:30:0x0058, B:32:0x005f, B:112:0x01b5, B:152:0x0322, B:154:0x0328, B:156:0x032e, B:157:0x0336, B:158:0x0339, B:163:0x03c7, B:192:0x0494, B:191:0x0491, B:162:0x03c4, B:148:0x0319, B:111:0x01b2, B:98:0x0178, B:77:0x011e, B:60:0x00d8, B:40:0x008c, B:193:0x04b0, B:194:0x04b5, B:233:0x0569, B:236:0x056c, B:237:0x056d, B:28:0x004b, B:159:0x0363, B:195:0x04b6, B:197:0x04c5, B:200:0x04cb, B:232:0x055c, B:201:0x04d3, B:204:0x04ee, B:206:0x04f6, B:208:0x04fe, B:211:0x0504, B:213:0x0514, B:217:0x0524, B:216:0x051e, B:218:0x0526, B:220:0x0530, B:224:0x053b, B:228:0x0552, B:230:0x0556, B:227:0x054f, B:223:0x0538, B:62:0x00dc, B:64:0x00e8, B:70:0x0104, B:73:0x010c, B:74:0x0112, B:75:0x0118, B:33:0x0066, B:35:0x0070, B:37:0x0083, B:99:0x017b, B:101:0x0187, B:104:0x018f, B:106:0x019b, B:109:0x01ac, B:5:0x0009, B:11:0x0018, B:13:0x001e, B:26:0x0045, B:10:0x0013, B:78:0x0121, B:80:0x012d, B:83:0x0135, B:85:0x0141, B:92:0x015a, B:93:0x0160, B:94:0x0166, B:95:0x016c, B:96:0x0172, B:164:0x03ce, B:166:0x03da, B:168:0x03e0, B:170:0x03ee, B:172:0x03f4, B:175:0x03fd, B:176:0x0401, B:178:0x0407, B:180:0x041b, B:182:0x0429, B:183:0x042d, B:185:0x043b, B:188:0x0459, B:189:0x045e, B:186:0x0451, B:42:0x0092, B:44:0x009e, B:52:0x00b8, B:55:0x00c0, B:56:0x00c6, B:57:0x00cc, B:58:0x00d2), top: B:268:0x0003, inners: #2, #3, #5, #6, #7, #9, #10, #11, #16 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(com.meishu.sdk.core.domain.SdkAdInfo[] r19, com.meishu.sdk.core.domain.MeishuAdInfo r20) {
        /*
            Method dump skipped, instructions count: 1392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.loader.concurrent.e.a(com.meishu.sdk.core.domain.SdkAdInfo[], com.meishu.sdk.core.domain.MeishuAdInfo):void");
    }

    public final List<Integer> a(int i2) {
        List<WeakReference<com.meishu.sdk.core.loader.cache.a>> cacheListByKey;
        ArrayList arrayList = new ArrayList();
        String cacheKey = this.f31622b.getCacheKey();
        try {
            if (this.f31622b.getCache() > 0 && (cacheListByKey = CacheManager.INSTANCE.getCacheListByKey(cacheKey)) != null && cacheListByKey.size() > 0) {
                Iterator<WeakReference<com.meishu.sdk.core.loader.cache.a>> it = cacheListByKey.iterator();
                while (it.hasNext()) {
                    com.meishu.sdk.core.loader.cache.a aVar = it.next().get();
                    if (aVar.a()) {
                        SdkAdInfo sdkAdInfo = aVar.f31607b;
                        int ecpm = sdkAdInfo.getEcpm();
                        if (ecpm < i2 && ecpm > 0) {
                            arrayList.add(Integer.valueOf(sdkAdInfo.getOriginEcpm()));
                        }
                        int codPrice = sdkAdInfo.getCodPrice();
                        if (codPrice < i2 && codPrice > 0) {
                            arrayList.add(Integer.valueOf(sdkAdInfo.getPrice()));
                        }
                    }
                }
            }
            return arrayList;
        } catch (Exception e2) {
            e2.printStackTrace();
            return arrayList;
        }
    }

    public final void a(SdkAdInfo sdkAdInfo, int i2) {
        S2sbResultBean s2sbResultBean;
        try {
            if (TextUtils.isEmpty(sdkAdInfo.getS2sb()) || (s2sbResultBean = (S2sbResultBean) new Gson().fromJson(sdkAdInfo.getS2sb(), S2sbResultBean.class)) == null) {
                return;
            }
            a0.a(this.f31625e.getContext(), s2sbResultBean.getNurl().replace(WindAds.AUCTION_PRICE, String.valueOf(sdkAdInfo.getPrice())).replace(WindAds.HIGHEST_LOSS_PRICE, String.valueOf(Math.min(i2, sdkAdInfo.getPrice()))), new i());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final String a(SdkAdInfo sdkAdInfo, String str) {
        try {
            return TextUtils.replace(str, new String[]{"__ACCEPT_ID__", "__STRATEGY_DEALID__", "__ACCEPT_APPID__", "__ACCEPT_PID__", "__SDK__", "__GROUP_ID__", "__P__"}, new String[]{sdkAdInfo.getAccept_id() == null ? "" : sdkAdInfo.getAccept_id(), sdkAdInfo.getStrategy_dealid() == null ? "" : sdkAdInfo.getStrategy_dealid(), sdkAdInfo.getApp_id() == null ? "" : sdkAdInfo.getApp_id(), sdkAdInfo.getPid() == null ? "" : sdkAdInfo.getPid(), sdkAdInfo.getSdk() == null ? "" : sdkAdInfo.getSdk(), sdkAdInfo.getGroup_id() == null ? "" : sdkAdInfo.getGroup_id(), String.valueOf(sdkAdInfo.getPrice())}).toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public final void a(boolean z2) {
        StringBuilder sbA = com.meishu.sdk.activity.a.a("handleLoadMeshu + isAdFinish=");
        sbA.append(this.f31627g);
        sbA.append(",needCache=");
        sbA.append(z2);
        LogUtil.d("ConCurrentManager", sbA.toString());
        if (this.f31626f != null) {
            String[] responUrl = this.f31622b.getResponUrl();
            if (!z2 && responUrl != null && responUrl.length > 0) {
                LogUtil.d("ConCurrentManager", "send onAdLoaded");
                for (String str : responUrl) {
                    if (!TextUtils.isEmpty(str)) {
                        com.meishu.sdk.core.loader.a.a(this.f31621a, i0.a(i0.a(str, System.currentTimeMillis() - this.f31625e.startLoadTime)));
                    }
                }
            }
            this.f31626f.setLocalParams(this.f31623c);
            this.f31626f.setConCurrentLoadListener(new a(z2, new boolean[1]));
            this.f31626f.loadAd();
            return;
        }
        if (this.f31625e.getLoaderListener() == null || z2 || this.f31633m) {
            return;
        }
        this.f31633m = true;
        LogUtil.e("ConCurrentManager", "no MS ad,load error");
        this.f31625e.getLoaderListener().onAdError();
    }
}
