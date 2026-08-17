package com.kwad.components.ad.splashscreen;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.AnyThread;
import androidx.core.location.LocationRequestCompat;
import com.ksad.json.annotation.KsJson;
import com.kwad.components.ad.splashscreen.monitor.SplashMonitorInfo;
import com.kwad.components.core.video.k;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.kwad.sdk.core.network.a.a;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.l;
import java.io.File;
import java.io.Serializable;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class SplashPreloadManager {
    private HashMap<String, PreLoadItem> GJ;
    private List<String> GK;
    private volatile SharedPreferences GL;
    private final Object mLock;

    @KsJson
    public static class PreLoadItem extends com.kwad.sdk.core.response.a.a implements Serializable {
        public long cacheTime;
        public long expiredTime;
        public int materialType;
        public String preloadId;
    }

    public static class a {
        private static final SplashPreloadManager GM = new SplashPreloadManager(0);
    }

    public /* synthetic */ SplashPreloadManager(byte b3) {
        this();
    }

    public static File ae(String str) {
        if (str == null) {
            return null;
        }
        com.kwad.sdk.core.d.c.d("PreloadManager", "getVideoFile preloadId " + str + "  url " + str);
        File fileCO = com.kwad.sdk.core.diskcache.b.a.Lx().cO(str);
        if (fileCO == null || !fileCO.exists()) {
            return null;
        }
        return fileCO;
    }

    @AnyThread
    public static boolean i(AdResultData adResultData) {
        if (!adResultData.getAdTemplateList().isEmpty()) {
            AdTemplate adTemplate = adResultData.getAdTemplateList().get(0);
            if (!adTemplate.adInfoList.isEmpty()) {
                return com.kwad.sdk.core.response.helper.a.bj(adTemplate.adInfoList.get(0));
            }
        }
        return false;
    }

    private void init() {
        Context context = ServiceProvider.getContext();
        if (context != null) {
            this.GL = context.getSharedPreferences("ksadsdk_splash_preload_id_list", 0);
            initData();
        }
    }

    private void initData() {
        Map<String, ?> all = this.GL.getAll();
        ArrayList arrayList = new ArrayList();
        for (String str : all.keySet()) {
            PreLoadItem preLoadItem = new PreLoadItem();
            try {
                Object obj = all.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (TextUtils.isEmpty(str2)) {
                        continue;
                    } else {
                        preLoadItem.parseJson(new JSONObject(str2));
                        if (TextUtils.isEmpty(preLoadItem.preloadId)) {
                            continue;
                        } else {
                            File fileCO = com.kwad.sdk.core.diskcache.b.a.Lx().cO(preLoadItem.preloadId);
                            if (fileCO == null || !fileCO.exists()) {
                                arrayList.add(preLoadItem.preloadId);
                                com.kwad.sdk.core.d.c.d("PreloadManager", "Remove null file list " + preLoadItem.preloadId);
                            } else {
                                synchronized (this.mLock) {
                                    try {
                                        this.GJ.put(str, preLoadItem);
                                        if (!this.GK.contains(str)) {
                                            this.GK.add(str);
                                        }
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    continue;
                }
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.printStackTrace(e2);
            }
        }
        SharedPreferences.Editor editorEdit = this.GL.edit();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj2 = arrayList.get(i2);
            i2++;
            editorEdit.remove((String) obj2);
        }
        editorEdit.apply();
    }

    @AnyThread
    public static boolean j(AdResultData adResultData) {
        if (!adResultData.getAdTemplateList().isEmpty()) {
            AdTemplate adTemplate = adResultData.getAdTemplateList().get(0);
            if (!adTemplate.adInfoList.isEmpty()) {
                return com.kwad.sdk.core.response.helper.a.bi(adTemplate.adInfoList.get(0));
            }
        }
        return false;
    }

    @AnyThread
    public static SplashPreloadManager lZ() {
        SplashPreloadManager splashPreloadManager = a.GM;
        if (splashPreloadManager.GL == null) {
            splashPreloadManager.init();
        }
        return splashPreloadManager;
    }

    @AnyThread
    private void p(AdInfo adInfo) {
        PreLoadItem preLoadItem = new PreLoadItem();
        preLoadItem.cacheTime = System.currentTimeMillis();
        preLoadItem.expiredTime = System.currentTimeMillis() + (adInfo.adPreloadInfo.validityPeriod * 1000);
        preLoadItem.preloadId = com.kwad.sdk.core.response.helper.a.bf(adInfo);
        preLoadItem.materialType = com.kwad.sdk.core.response.helper.a.bi(adInfo) ? 2 : 1;
        synchronized (this.mLock) {
            try {
                this.GJ.put(adInfo.adPreloadInfo.preloadId, preLoadItem);
                if (!this.GK.contains(adInfo.adPreloadInfo.preloadId)) {
                    this.GK.add(adInfo.adPreloadInfo.preloadId);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.GL != null) {
            SharedPreferences.Editor editorEdit = this.GL.edit();
            editorEdit.putString(adInfo.adPreloadInfo.preloadId, preLoadItem.toJson().toString());
            editorEdit.apply();
        }
    }

    private static boolean q(AdInfo adInfo) {
        return com.kwad.sdk.core.config.e.a(com.kwad.components.ad.splashscreen.b.a.Hn) && com.kwad.sdk.core.response.helper.a.bj(adInfo);
    }

    @AnyThread
    private boolean r(AdInfo adInfo) {
        if (q(adInfo)) {
            return KSImageLoader.isImageExist(com.kwad.sdk.core.response.helper.a.ba(adInfo).materialUrl);
        }
        String str = adInfo.adPreloadInfo.preloadId;
        if (str != null) {
            File fileCO = com.kwad.sdk.core.diskcache.b.a.Lx().cO(str);
            StringBuilder sb = new StringBuilder("check preloadId ");
            sb.append(str);
            sb.append(" file exists ");
            sb.append(fileCO == null ? "null" : Boolean.valueOf(fileCO.exists()));
            com.kwad.sdk.core.d.c.d("PreloadManager", sb.toString());
            if (fileCO != null && fileCO.exists()) {
                return true;
            }
        }
        return false;
    }

    public final List<String> W() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mLock) {
            try {
                com.kwad.sdk.core.d.c.d("PreloadManager", "getPreloadIdList start ");
                for (int i2 = 0; i2 < this.GK.size(); i2++) {
                    String str = this.GK.get(i2);
                    File fileCO = com.kwad.sdk.core.diskcache.b.a.Lx().cO(str);
                    if (fileCO != null && fileCO.exists()) {
                        arrayList.add(str);
                    }
                }
                com.kwad.sdk.core.d.c.d("PreloadManager", "getPreloadIdList end ");
            } catch (Throwable th) {
                throw th;
            }
        }
        com.kwad.sdk.core.d.c.d("PreloadManager", "getPreloadIdList " + this.GK.size());
        return arrayList;
    }

    public final void a(long j2, int i2) {
        int i3;
        int i4;
        int i5;
        int size;
        boolean z2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int size2 = this.GK.size();
        synchronized (this.mLock) {
            try {
                ArrayList arrayList = new ArrayList();
                i4 = 0;
                i5 = 0;
                for (String str : this.GJ.keySet()) {
                    PreLoadItem preLoadItem = this.GJ.get(str);
                    if (preLoadItem != null && preLoadItem.expiredTime < jCurrentTimeMillis) {
                        arrayList.add(str);
                        int i6 = preLoadItem.materialType;
                        if (i6 == 2) {
                            i4++;
                        } else if (i6 == 1) {
                            i5++;
                        }
                    }
                }
                SharedPreferences.Editor editorEdit = this.GL.edit();
                int size3 = arrayList.size();
                int i7 = 0;
                while (i7 < size3) {
                    Object obj = arrayList.get(i7);
                    i7++;
                    String str2 = (String) obj;
                    this.GK.remove(str2);
                    this.GJ.remove(str2);
                    editorEdit.remove(str2);
                    com.kwad.sdk.core.diskcache.b.a.Lx().remove(str2);
                }
                editorEdit.apply();
                size = this.GK.size();
            } finally {
            }
        }
        if (size > 30) {
            com.kwad.sdk.core.d.c.d("PreloadManager", "大于 30 按失效日期远近顺序移除");
            int i8 = size - 15;
            for (i3 = 0; i3 < i8; i3++) {
                String str3 = "";
                synchronized (this.mLock) {
                    try {
                        long j3 = LocationRequestCompat.PASSIVE_INTERVAL;
                        for (PreLoadItem preLoadItem2 : this.GJ.values()) {
                            long j4 = j3;
                            long j5 = preLoadItem2.expiredTime;
                            if (j5 < j4) {
                                str3 = preLoadItem2.preloadId;
                                j3 = j5;
                            } else {
                                j3 = j4;
                            }
                        }
                        long j6 = j3;
                        if (TextUtils.isEmpty(str3)) {
                            z2 = true;
                        } else {
                            PreLoadItem preLoadItem3 = this.GJ.get(str3);
                            if (preLoadItem3 == null) {
                                z2 = true;
                                this.GK.remove(str3);
                                this.GJ.remove(str3);
                                this.GL.edit().remove(str3).apply();
                                com.kwad.sdk.core.d.c.d("PreloadManager", "移除 preloadId = " + str3 + " expiredTime =  " + j6);
                            } else {
                                int i9 = preLoadItem3.materialType;
                                if (i9 == 2) {
                                    i4++;
                                    z2 = true;
                                    this.GK.remove(str3);
                                    this.GJ.remove(str3);
                                    this.GL.edit().remove(str3).apply();
                                    com.kwad.sdk.core.d.c.d("PreloadManager", "移除 preloadId = " + str3 + " expiredTime =  " + j6);
                                } else {
                                    z2 = true;
                                    if (i9 == 1) {
                                        i5++;
                                    }
                                    this.GK.remove(str3);
                                    this.GJ.remove(str3);
                                    this.GL.edit().remove(str3).apply();
                                    com.kwad.sdk.core.d.c.d("PreloadManager", "移除 preloadId = " + str3 + " expiredTime =  " + j6);
                                }
                            }
                        }
                    } finally {
                    }
                }
                if (!TextUtils.isEmpty(str3)) {
                    com.kwad.sdk.core.diskcache.b.a.Lx().remove(str3);
                }
            }
        }
        int i10 = i4;
        List<String> listMa = ma();
        int size4 = size2 - listMa.size();
        List<Integer> listI = i(listMa);
        com.kwad.components.ad.splashscreen.monitor.b.mv();
        com.kwad.components.ad.splashscreen.monitor.b.a(j2, listMa, listI, i2, size4, i5, i10);
    }

    @AnyThread
    public final boolean h(AdResultData adResultData) {
        if (!adResultData.getAdTemplateList().isEmpty()) {
            AdTemplate adTemplate = adResultData.getAdTemplateList().get(0);
            if (!adTemplate.adInfoList.isEmpty()) {
                AdInfo adInfo = adTemplate.adInfoList.get(0);
                if (adInfo.adPreloadInfo != null) {
                    return q(adInfo) ? KSImageLoader.isImageExist(com.kwad.sdk.core.response.helper.a.ba(adInfo).materialUrl) : r(adInfo);
                }
            }
        }
        return false;
    }

    public final List<String> ma() {
        ArrayList arrayList;
        synchronized (this.mLock) {
            com.kwad.sdk.core.d.c.d("PreloadManager", "getPreloadIdListWithoutClean start ");
            arrayList = new ArrayList(this.GK);
            com.kwad.sdk.core.d.c.d("PreloadManager", "getPreloadIdListWithoutClean end ");
        }
        com.kwad.sdk.core.d.c.d("PreloadManager", "getPreloadIdListWithoutClean " + this.GK.size());
        return arrayList;
    }

    private SplashPreloadManager() {
        this.mLock = new Object();
        this.GJ = new HashMap<>();
        this.GK = new ArrayList();
        init();
    }

    public final List<Integer> i(List<String> list) {
        PreLoadItem preLoadItem;
        ArrayList arrayList = new ArrayList();
        if (list == null || list.isEmpty()) {
            return arrayList;
        }
        synchronized (this.mLock) {
            try {
                com.kwad.sdk.core.d.c.d("PreloadManager", "getMaterialTypeList start ");
                for (int i2 = 0; i2 < list.size(); i2++) {
                    String str = list.get(i2);
                    if (this.GJ.containsKey(str) && (preLoadItem = this.GJ.get(str)) != null) {
                        arrayList.add(Integer.valueOf(preLoadItem.materialType));
                    }
                }
                com.kwad.sdk.core.d.c.d("PreloadManager", "getMaterialTypeList end ");
            } catch (Throwable th) {
                throw th;
            }
        }
        com.kwad.sdk.core.d.c.d("PreloadManager", "getMaterialTypeList " + arrayList.size());
        return arrayList;
    }

    @AnyThread
    public final int a(AdResultData adResultData, boolean z2, int i2) throws NoSuchAlgorithmException {
        Iterator<AdInfo> it;
        String strM;
        boolean zA;
        com.kwad.components.ad.splashscreen.monitor.b.mv();
        com.kwad.components.ad.splashscreen.monitor.b.k(adResultData);
        int i3 = 0;
        for (AdTemplate adTemplate : adResultData.getAdTemplateList()) {
            if (adTemplate != null) {
                Iterator<AdInfo> it2 = adTemplate.adInfoList.iterator();
                while (it2.hasNext()) {
                    AdInfo next = it2.next();
                    if (next.adPreloadInfo != null && this.GL != null) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        if (!r(next)) {
                            if (com.kwad.sdk.core.response.helper.a.bi(next)) {
                                strM = com.kwad.sdk.core.response.helper.a.M(next);
                            } else {
                                strM = com.kwad.sdk.core.response.helper.a.bj(next) ? com.kwad.sdk.core.response.helper.a.ba(next).materialUrl : null;
                            }
                            if (!TextUtils.isEmpty(strM)) {
                                String strBf = com.kwad.sdk.core.response.helper.a.bf(next);
                                if (next.adPreloadInfo.preloadType == 1 && !aq.isWifiConnected(ServiceProvider.getContext()) && !z2) {
                                    com.kwad.components.ad.splashscreen.monitor.b.mv();
                                    com.kwad.components.ad.splashscreen.monitor.b.d(adTemplate, 1, SplashMonitorInfo.ERROR_NET_MSG);
                                    it = it2;
                                } else {
                                    com.kwad.sdk.core.d.c.d("PreloadManager", "start Download preloadId " + strBf + " true url " + strM);
                                    it = it2;
                                    a(adResultData.getPosId(), 1);
                                    a.C0614a c0614a = new a.C0614a();
                                    if (q(next)) {
                                        zA = KSImageLoader.loadImageSync(strM) != null;
                                    } else {
                                        zA = k.a(strM, strBf, c0614a);
                                    }
                                    if (zA) {
                                        p(next);
                                        i3++;
                                        com.kwad.components.ad.splashscreen.monitor.b.mv();
                                        com.kwad.components.ad.splashscreen.monitor.b.b(adTemplate, SystemClock.elapsedRealtime() - jElapsedRealtime, 1, i2);
                                    } else {
                                        com.kwad.components.ad.splashscreen.monitor.b.mv();
                                        com.kwad.components.ad.splashscreen.monitor.b.d(adTemplate, 4, c0614a.msg);
                                        com.kwad.components.core.p.a.vL().g(adTemplate, 1, c0614a.msg);
                                    }
                                }
                            } else {
                                it = it2;
                                com.kwad.components.ad.splashscreen.monitor.b.mv();
                                com.kwad.components.ad.splashscreen.monitor.b.d(adTemplate, 2, SplashMonitorInfo.ERROR_URL_INVALID_MSG);
                            }
                        } else {
                            it = it2;
                            com.kwad.components.ad.splashscreen.monitor.b.mv();
                            com.kwad.components.ad.splashscreen.monitor.b.b(adTemplate, SystemClock.elapsedRealtime() - jElapsedRealtime, 2, i2);
                            p(next);
                            i3++;
                        }
                    } else {
                        it = it2;
                        com.kwad.components.ad.splashscreen.monitor.b.mv();
                        com.kwad.components.ad.splashscreen.monitor.b.d(adTemplate, 3, SplashMonitorInfo.ERROR_PRELOAD_ID_INVALID_MSG);
                    }
                    it2 = it;
                }
            }
        }
        AdTemplate adTemplate2 = adResultData.getAdTemplateList().size() > 0 ? adResultData.getAdTemplateList().get(0) : null;
        if (i3 > 0) {
            l.at("splashAd_", "onSplashVideoAdCacheSuccess");
            com.kwad.components.core.p.a.vL().i(adTemplate2, i3);
            return i3;
        }
        l.at("splashAd_", "onSplashVideoAdCacheFailed");
        return i3;
    }
}
