package com.sigmob.sdk.manager;

import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.FrequencyControl;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.utils.s;
import com.sigmob.sdk.base.utils.v;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37801a = "WindAdFCManager";

    /* renamed from: b, reason: collision with root package name */
    private static volatile e f37802b = null;

    /* renamed from: c, reason: collision with root package name */
    private static final int f37803c = -1;

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, Integer> f37804d = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    private final Map<String, List<SoftReference<b>>> f37805e = new ConcurrentHashMap();

    private e() {
    }

    public static e a() {
        if (f37802b == null) {
            synchronized (e.class) {
                try {
                    if (f37802b == null) {
                        f37802b = new e();
                    }
                } finally {
                }
            }
        }
        return f37802b;
    }

    public String a(String str, String str2, Integer num) {
        return str + "-" + str2 + "-" + num;
    }

    public synchronized void a(b bVar) {
        if (bVar == null) {
            return;
        }
        try {
            if (v.b(Boolean.valueOf(com.sigmob.sdk.base.o.a().l()))) {
                return;
            }
            BaseAdUnit baseAdUnitE = bVar.e();
            if (baseAdUnitE == null) {
                return;
            }
            List<FrequencyControl> frequencyControl = baseAdUnitE.getFrequencyControl();
            if (com.sigmob.sdk.base.utils.f.a(frequencyControl)) {
                return;
            }
            int ad_type = baseAdUnitE.getAd_type();
            for (FrequencyControl frequencyControl2 : frequencyControl) {
                String str = frequencyControl2.strategy_id;
                String str2 = frequencyControl2.frequency_control_event;
                Integer num = frequencyControl2.frequency_control_count;
                List<Integer> list = frequencyControl2.ad_expire_type;
                if (s.b(str) && s.b(str2) && v.a((Number) num) && com.sigmob.sdk.base.utils.f.b(list)) {
                    Integer num2 = this.f37804d.get(str);
                    if (num2 == null || num2.intValue() == -1) {
                        this.f37804d.put(str, num);
                    }
                    String strA = a(str, str2, Integer.valueOf(ad_type));
                    List<SoftReference<b>> list2 = this.f37805e.get(strA);
                    if (list2 == null) {
                        ArrayList arrayList = new ArrayList();
                        this.f37805e.put(strA, arrayList);
                        arrayList.add(new SoftReference(bVar));
                        SigmobLogger.d(f37801a, "addAdManager: add", new Object[0]);
                    } else {
                        boolean zA = a(list2, bVar);
                        SigmobLogger.d(f37801a, "addAdManager: contains = " + zA, new Object[0]);
                        if (v.b(Boolean.valueOf(zA))) {
                            list2.add(new SoftReference<>(bVar));
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void a(b bVar, final String str) {
        bVar.a(AdStatus.AdStatusNone);
        d.a().c(bVar);
        String strH = bVar.h();
        final BaseAdUnit baseAdUnitE = bVar.e();
        if (baseAdUnitE == null) {
            SigmobLogger.e(f37801a, "setInvalidManager: adUnit is unavailable.", new Object[0]);
            return;
        }
        final String requestId = baseAdUnitE.getRequestId();
        SigmobLogger.i(f37801a, "setInvalidManager: requestId = " + requestId + ", requestSceneType = " + baseAdUnitE.getRequestSceneType() + ", placementId = " + strH + ", simpleName = " + bVar.getClass().getSimpleName(), new Object[0]);
        ad.a(PointCategory.SUBJECT_EXPIRE, (String) null, baseAdUnitE, new ad.a() { // from class: com.sigmob.sdk.manager.n
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                e.a(str, baseAdUnitE, requestId, obj);
            }
        });
    }

    public synchronized void a(String str, BaseAdUnit baseAdUnit, b bVar) {
        SigmobLogger.d(f37801a, "checkFrequencyControl: event = " + str, new Object[0]);
        if (!s.a((CharSequence) str) && baseAdUnit != null) {
            List<FrequencyControl> frequencyControl = baseAdUnit.getFrequencyControl();
            if (com.sigmob.sdk.base.utils.f.a(frequencyControl)) {
                SigmobLogger.e(f37801a, "checkFrequencyControl: frequency is unavailable.", new Object[0]);
                return;
            }
            for (FrequencyControl frequencyControl2 : frequencyControl) {
                String str2 = frequencyControl2.strategy_id;
                String str3 = frequencyControl2.frequency_control_event;
                Integer num = frequencyControl2.frequency_control_count;
                List<Integer> list = frequencyControl2.ad_expire_type;
                Integer numValueOf = this.f37804d.get(str2);
                boolean z2 = v.b(numValueOf) && s.a((CharSequence) str, (CharSequence) str3) && v.a((Number) num) && com.sigmob.sdk.base.utils.f.b(list);
                SigmobLogger.d(f37801a, "checkFrequencyControl: num = " + numValueOf + ", canCheck = " + z2 + ", strategyId = " + str2 + ", strategyEvent = " + str3 + ", strategyCount = " + num, new Object[0]);
                if (z2) {
                    if (numValueOf.intValue() > 0) {
                        numValueOf = Integer.valueOf(numValueOf.intValue() - 1);
                        this.f37804d.put(str2, numValueOf);
                    }
                    if (numValueOf.intValue() <= 0) {
                        ArrayList arrayList = new ArrayList();
                        Iterator<Integer> it = list.iterator();
                        while (it.hasNext()) {
                            String strA = a(str2, str3, it.next());
                            List<SoftReference<b>> list2 = this.f37805e.get(strA);
                            if (com.sigmob.sdk.base.utils.f.b(list2)) {
                                for (SoftReference<b> softReference : list2) {
                                    if (softReference != null && softReference.get() != null) {
                                        arrayList.add(softReference.get());
                                    }
                                }
                            }
                            this.f37805e.remove(strA);
                        }
                        boolean zRemove = arrayList.remove(bVar);
                        int size = arrayList.size();
                        SigmobLogger.d(f37801a, "checkFrequencyControl: result = " + zRemove + ", simpleName = " + bVar.getClass().getSimpleName() + ", size = " + size, new Object[0]);
                        int size2 = arrayList.size();
                        int i2 = 0;
                        int i3 = 0;
                        while (i3 < size2) {
                            Object obj = arrayList.get(i3);
                            i3++;
                            b bVar2 = (b) obj;
                            BaseAdUnit baseAdUnitE = bVar2.e();
                            if (baseAdUnitE == null) {
                                SigmobLogger.e(f37801a, "checkFrequencyControl: baseAdUnit is unavailable.", new Object[0]);
                            } else if (b.b(Integer.valueOf(baseAdUnitE.getRequestSceneType()))) {
                                SigmobLogger.e(f37801a, "checkFrequencyControl: unavailable requestSceneType.", new Object[0]);
                            } else {
                                a(bVar2, str2);
                                i2++;
                            }
                        }
                        SigmobLogger.d(f37801a, "checkFrequencyControl: strategyId = " + str2 + ", expiredAdNum = " + i2, new Object[0]);
                        if (i2 > 0) {
                            this.f37804d.put(str2, -1);
                        }
                    }
                }
            }
            return;
        }
        SigmobLogger.e(f37801a, "checkFrequencyControl: event or adUnit is unavailable.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, BaseAdUnit baseAdUnit, String str2, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put(PointParamKey.STRATEGY_ID, str);
            options.put(PointParamKey.EXPIRE_RELOAD_COUNT, String.valueOf(baseAdUnit.expiredAdReloadNum()));
            String vid = baseAdUnit.getVid();
            String originVid = baseAdUnit.getOriginVid();
            if (s.b(originVid)) {
                vid = originVid;
            }
            options.put(PointParamKey.ORIGIN_VID, vid);
            String adxEncPrice = baseAdUnit.getAdxEncPrice();
            if (s.b(adxEncPrice)) {
                options.put(PointParamKey.ORIGIN_PRICE, adxEncPrice);
            }
            options.put("request_id", str2);
            pointEntitySigmob.setOptions(options);
        }
    }

    private boolean a(List<SoftReference<b>> list, b bVar) {
        if (!com.sigmob.sdk.base.utils.f.a(list) && bVar != null) {
            for (SoftReference<b> softReference : list) {
                if (softReference != null && softReference.get() != null && softReference.get().equals(bVar)) {
                    return true;
                }
            }
        }
        return false;
    }
}
