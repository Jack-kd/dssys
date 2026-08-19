package com.anythink.core.api;

import android.util.Log;
import android.util.Pair;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATWaterfallFilter;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.cd;
import com.anythink.core.common.v.aa;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class ATAdFilter {
    public static final String KEY_BIDDING_TYPE = "biddingType";
    public static final String KEY_E_CPM = "e_cpm";
    public static final String KEY_NETWORK_ID = "networkId";
    public static final String KEY_NETWORK_PLACEMENT_ID = "networkPlacementId";
    private static final String TAG = "anythink_ad_filter";
    private final Stack<Map<String, Object>> stack = new Stack<>();

    public static class a {
        Map<String, Object> filterCondition;
        cd filterData;
        List<b> list;

        public a(Map<String, Object> map, cd cdVar) {
            this.filterCondition = map;
            this.filterData = cdVar;
            ArrayList arrayList = new ArrayList();
            this.list = arrayList;
            arrayList.add(new e());
            this.list.add(new d());
            this.list.add(new f());
            this.list.add(new c());
        }

        public final AdError filter() {
            Object obj;
            ArrayList arrayList = new ArrayList();
            List<b> list = this.list;
            if (list == null || list.isEmpty()) {
                return null;
            }
            Iterator<b> it = this.list.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                Pair<Boolean, AdError> pairFilter = it.next().filter(this.filterCondition, this.filterData);
                if (pairFilter != null && (obj = pairFilter.first) != null && ((Boolean) obj).booleanValue()) {
                    i2++;
                    Object obj2 = pairFilter.second;
                    if (obj2 != null) {
                        arrayList.add((AdError) obj2);
                    }
                }
            }
            if (arrayList.isEmpty() || arrayList.size() != i2) {
                return null;
            }
            return (AdError) arrayList.get(arrayList.size() - 1);
        }
    }

    public interface b {
        Pair<Boolean, AdError> filter(Map<String, Object> map, cd cdVar);
    }

    public static class c implements b {
        @Override // com.anythink.core.api.ATAdFilter.b
        public final Pair<Boolean, AdError> filter(Map<String, Object> map, cd cdVar) {
            try {
                Object obj = map.get(ATAdFilter.KEY_NETWORK_PLACEMENT_ID);
                if (obj != null && cdVar != null && (obj instanceof List)) {
                    List list = (List) obj;
                    if (!list.isEmpty()) {
                        return list.contains(cdVar.f4183b) ? new Pair<>(Boolean.TRUE, ErrorCode.getErrorCode(ErrorCode.adSourceLoadUnitFilterError, "", "Filter by network adUnitId.")) : new Pair<>(Boolean.TRUE, null);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return new Pair<>(Boolean.FALSE, null);
        }
    }

    public static class d implements b {
        @Override // com.anythink.core.api.ATAdFilter.b
        public final Pair<Boolean, AdError> filter(Map<String, Object> map, cd cdVar) {
            try {
                Object obj = map.get(ATAdFilter.KEY_BIDDING_TYPE);
                if (obj != null && cdVar != null && (obj instanceof List)) {
                    List list = (List) obj;
                    if (!list.isEmpty()) {
                        return list.contains(cdVar.b()) ? new Pair<>(Boolean.TRUE, ErrorCode.getErrorCode(ErrorCode.adSourceLoadBidTypeFilterError, "", "Filter by bid type.")) : new Pair<>(Boolean.TRUE, null);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return new Pair<>(Boolean.FALSE, null);
        }
    }

    public static class e implements b {
        @Override // com.anythink.core.api.ATAdFilter.b
        public final Pair<Boolean, AdError> filter(Map<String, Object> map, cd cdVar) {
            try {
                Object obj = map.get(ATAdFilter.KEY_NETWORK_ID);
                if (obj != null && cdVar != null && (obj instanceof List)) {
                    List list = (List) obj;
                    if (!list.isEmpty()) {
                        return list.contains(cdVar.f4182a) ? new Pair<>(Boolean.TRUE, ErrorCode.getErrorCode(ErrorCode.networkFirmIdFilterSourceError, "", "Filter by network firm id.")) : new Pair<>(Boolean.TRUE, null);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return new Pair<>(Boolean.FALSE, null);
        }
    }

    public static class f implements b {
        @Override // com.anythink.core.api.ATAdFilter.b
        public final Pair<Boolean, AdError> filter(Map<String, Object> map, cd cdVar) {
            ATWaterfallFilter.PriceInterval priceInterval;
            ATAdConst.CURRENCY scurrency;
            try {
                Object obj = map.get(ATAdFilter.KEY_E_CPM);
                if (obj != null && cdVar != null && (obj instanceof ATWaterfallFilter.PriceInterval) && (scurrency = (priceInterval = (ATWaterfallFilter.PriceInterval) obj).getScurrency()) != null) {
                    double rmbChangeToUsdRate = scurrency == ATAdConst.CURRENCY.RMB ? ATSDKUtils.getRmbChangeToUsdRate() : scurrency == ATAdConst.CURRENCY.RMB_CENT ? ATSDKUtils.getRmbChangeToUsdRate() / 100.0d : 1.0d;
                    aa.b(ATAdFilter.TAG, "filter price coefficient:".concat(String.valueOf(rmbChangeToUsdRate)));
                    if (rmbChangeToUsdRate != 0.0d) {
                        if (priceInterval.getMorePrice() != null && priceInterval.getLessPrice() != null) {
                            aa.b(ATAdFilter.TAG, "filter price getMorePrice:" + (priceInterval.getMorePrice().doubleValue() * rmbChangeToUsdRate));
                            aa.b(ATAdFilter.TAG, "filter price getLessPrice:" + (priceInterval.getLessPrice().doubleValue() * rmbChangeToUsdRate));
                            aa.b(ATAdFilter.TAG, "filter price getPrice:" + cdVar.a());
                            if (priceInterval.getMorePrice().doubleValue() == priceInterval.getLessPrice().doubleValue()) {
                                if (cdVar.a() != priceInterval.getMorePrice().doubleValue() * rmbChangeToUsdRate) {
                                    return new Pair<>(Boolean.TRUE, null);
                                }
                                cdVar.a(priceInterval.getMorePrice().doubleValue() * rmbChangeToUsdRate);
                                return new Pair<>(Boolean.TRUE, ErrorCode.getErrorCode(ErrorCode.adSourceLoadPriceFilterError, "", "Filter by bid price."));
                            }
                            if (priceInterval.getLessPrice().doubleValue() > priceInterval.getMorePrice().doubleValue()) {
                                if (cdVar.a() < priceInterval.getMorePrice().doubleValue() * rmbChangeToUsdRate || cdVar.a() > priceInterval.getLessPrice().doubleValue() * rmbChangeToUsdRate) {
                                    return new Pair<>(Boolean.TRUE, null);
                                }
                                cdVar.a(priceInterval.getLessPrice().doubleValue() * rmbChangeToUsdRate);
                                return new Pair<>(Boolean.TRUE, ErrorCode.getErrorCode(ErrorCode.adSourceLoadPriceFilterError, "", "Filter by bid price."));
                            }
                            if (s.b().G()) {
                                Log.e(ATAdFilter.TAG, "filter price min and max is exception:" + priceInterval.getLessPrice() + ":" + priceInterval.getMorePrice());
                            }
                            return new Pair<>(Boolean.TRUE, null);
                        }
                        if (priceInterval.getMorePrice() != null) {
                            aa.b(ATAdFilter.TAG, "filter price getMorePrice:" + (priceInterval.getMorePrice().doubleValue() * rmbChangeToUsdRate));
                            aa.b(ATAdFilter.TAG, "filter price getPrice:" + cdVar.a());
                            if (cdVar.a() < priceInterval.getMorePrice().doubleValue() * rmbChangeToUsdRate) {
                                return new Pair<>(Boolean.TRUE, null);
                            }
                            cdVar.a(priceInterval.getMorePrice().doubleValue() * rmbChangeToUsdRate);
                            return new Pair<>(Boolean.TRUE, ErrorCode.getErrorCode(ErrorCode.adSourceLoadPriceFilterError, "", "Filter by bid price."));
                        }
                        if (priceInterval.getLessPrice() != null) {
                            aa.b(ATAdFilter.TAG, "filter price getLessPrice:" + (priceInterval.getLessPrice().doubleValue() * rmbChangeToUsdRate));
                            aa.b(ATAdFilter.TAG, "filter price getPrice:" + cdVar.a());
                            if (cdVar.a() <= 0.0d || cdVar.a() > priceInterval.getLessPrice().doubleValue() * rmbChangeToUsdRate) {
                                return new Pair<>(Boolean.TRUE, null);
                            }
                            cdVar.a(priceInterval.getLessPrice().doubleValue() * rmbChangeToUsdRate);
                            return new Pair<>(Boolean.TRUE, ErrorCode.getErrorCode(ErrorCode.adSourceLoadPriceFilterError, "", "Filter by bid price."));
                        }
                    } else if (s.b().G()) {
                        Log.e(ATAdFilter.TAG, "filter price coefficient is exception:".concat(String.valueOf(rmbChangeToUsdRate)));
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return new Pair<>(Boolean.FALSE, null);
        }
    }

    private synchronized ATAdFilter filter(String str, Object obj) {
        try {
            Map<String, Object> mapPop = !this.stack.isEmpty() ? this.stack.pop() : null;
            if (mapPop == null) {
                mapPop = new HashMap<>();
            }
            mapPop.put(str, obj);
            this.stack.push(mapPop);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    private String getStackJson() {
        try {
            if (this.stack.isEmpty()) {
                return "";
            }
            ArrayList arrayList = new ArrayList(this.stack);
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                Map map = (Map) arrayList.get(i2);
                if (map != null && !map.isEmpty()) {
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry entry : map.entrySet()) {
                        String str = (String) entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof ATWaterfallFilter.PriceInterval) {
                            jSONObject.put(str, ((ATWaterfallFilter.PriceInterval) value).getJsonObject());
                        } else if (value instanceof List) {
                            JSONArray jSONArray2 = new JSONArray();
                            Iterator it = ((List) value).iterator();
                            while (it.hasNext()) {
                                jSONArray2.put((String) it.next());
                            }
                            jSONObject.put(str, jSONArray2);
                        }
                    }
                    jSONArray.put(jSONObject);
                }
            }
            return jSONArray.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public final AdError doFilter(cd cdVar) {
        if (cdVar == null) {
            return null;
        }
        try {
            if (this.stack.isEmpty()) {
                return null;
            }
            ArrayList arrayList = new ArrayList(this.stack);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                Map map = (Map) arrayList.get(i2);
                if (map == null || map.isEmpty()) {
                    if (s.b().G()) {
                        Log.e(TAG, "doFilter start filterData useless filterCondition" + i2 + ":" + cdVar);
                    }
                } else if (cdVar.f4184c != 1 || !map.containsKey(KEY_E_CPM)) {
                    aa.b(TAG, "doFilter start filterData:" + i2 + ":" + cdVar);
                    AdError adErrorFilter = new a(map, cdVar).filter();
                    if (adErrorFilter != null) {
                        if (s.b().G()) {
                            Log.e(TAG, "doFilter  filter reason:".concat(String.valueOf(adErrorFilter)));
                        }
                        cdVar.a(getStackJson());
                        return adErrorFilter;
                    }
                } else if (s.b().G()) {
                    Log.e(TAG, "doFilter start filterData continue:" + i2 + ":" + cdVar);
                }
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public ATAdFilter filterAdPrice(ATWaterfallFilter.PriceInterval priceInterval) {
        return filter(KEY_E_CPM, priceInterval);
    }

    public ATAdFilter filterBidTypes(List<String> list) {
        return filter(KEY_BIDDING_TYPE, list);
    }

    public ATAdFilter filterNetworkIds(List<String> list) {
        return filter(KEY_NETWORK_ID, list);
    }

    public ATAdFilter filterNetworkPlacementIds(List<String> list) {
        return filter(KEY_NETWORK_PLACEMENT_ID, list);
    }

    public Stack<Map<String, Object>> getStack() {
        return this.stack;
    }

    public synchronized ATAdFilter orFilter() {
        this.stack.push(new HashMap());
        return this;
    }
}
