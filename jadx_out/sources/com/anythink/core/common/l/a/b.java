package com.anythink.core.common.l.a;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCommonImpressionListener;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.IATBaseAdAdapter;
import com.anythink.core.common.h.n;
import com.anythink.core.common.l.g.c;
import com.anythink.core.common.v.p;
import com.anythink.core.common.v.t;
import java.util.Map;

/* loaded from: classes2.dex */
public class b implements IATBaseAdAdapter {

    /* renamed from: a, reason: collision with root package name */
    private static final String f5437a = "b";

    /* renamed from: b, reason: collision with root package name */
    private static final String f5438b = "not support this format: %s";

    /* renamed from: c, reason: collision with root package name */
    private IATBaseAdAdapter f5439c;

    /* renamed from: d, reason: collision with root package name */
    private Map<Integer, Class<? extends ATBaseAdAdapter>> f5440d;

    /* renamed from: e, reason: collision with root package name */
    private String f5441e;

    public b(IATBaseAdAdapter iATBaseAdAdapter) {
        this.f5439c = iATBaseAdAdapter;
    }

    private boolean a() {
        return !TextUtils.isEmpty(this.f5441e) || this.f5439c == null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter != null) {
            return iATBaseAdAdapter.baseOnAdapterBridgeVersion();
        }
        return 1;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String closeAd() {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        return iATBaseAdAdapter != null ? iATBaseAdAdapter.closeAd() : "";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter != null) {
            iATBaseAdAdapter.destory();
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        if (this.f5439c != null) {
            this.f5439c = a(map, map2);
            if (!a()) {
                this.f5439c.getBidRequestInfo(context, map, map2, aTBidRequestInfoListener);
            } else if (aTBidRequestInfoListener != null) {
                aTBidRequestInfoListener.onFailed(this.f5441e);
            }
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter != null) {
            return iATBaseAdAdapter.getFormatAdapterMap();
        }
        return null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public View getMixView() {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter != null) {
            return iATBaseAdAdapter.getMixView();
        }
        return null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        com.anythink.core.common.l.d.b serverExtraInfo = getServerExtraInfo();
        if (serverExtraInfo != null && serverExtraInfo.q() != null) {
            return serverExtraInfo.q();
        }
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter != null) {
            return iATBaseAdAdapter.getNetworkInfoMap();
        }
        return null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        return iATBaseAdAdapter != null ? iATBaseAdAdapter.getNetworkName() : "";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        return iATBaseAdAdapter != null ? iATBaseAdAdapter.getNetworkPlacementId() : "";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        return iATBaseAdAdapter != null ? iATBaseAdAdapter.getNetworkSDKVersion() : "";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public com.anythink.core.common.l.d.b getServerExtraInfo() {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter != null) {
            return iATBaseAdAdapter.getServerExtraInfo();
        }
        return null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public n getTrackingInfo() {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter != null) {
            return iATBaseAdAdapter.getTrackingInfo();
        }
        return null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (this.f5439c != null) {
            IATBaseAdAdapter iATBaseAdAdapterA = a(map, map2);
            this.f5439c = iATBaseAdAdapterA;
            if (iATBaseAdAdapterA != null && iATBaseAdAdapterA.initNetworkObjectByPlacementId(context, map, map2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void internalFormatShow(Activity activity, ViewGroup viewGroup, ATCommonImpressionListener aTCommonImpressionListener) {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter != null) {
            iATBaseAdAdapter.internalFormatShow(activity, viewGroup, aTCommonImpressionListener);
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        return iATBaseAdAdapter != null && iATBaseAdAdapter.isAdReady();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void parseGlobalParams(Map<String, Object> map, Map<String, Object> map2) {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter != null) {
            iATBaseAdAdapter.parseGlobalParams(map, map2);
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void setBiddingListener(ATBiddingListener aTBiddingListener) {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter != null) {
            iATBaseAdAdapter.setBiddingListener(aTBiddingListener);
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void setLoadListener(ATCustomLoadListener aTCustomLoadListener) {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter != null) {
            iATBaseAdAdapter.setLoadListener(aTCustomLoadListener);
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void setTrackingInfo(n nVar) {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter == null || iATBaseAdAdapter.getTrackingInfo() != null || nVar == null) {
            return;
        }
        this.f5439c.setTrackingInfo(nVar);
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean setUserDataConsent(Context context, boolean z2, boolean z3) {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter == null) {
            return false;
        }
        iATBaseAdAdapter.setUserDataConsent(context, z2, z3);
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        if (this.f5439c == null) {
            return false;
        }
        this.f5439c = a(map, map2);
        if (a()) {
            if (aTBiddingListener != null) {
                aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(this.f5441e), null);
            }
            return false;
        }
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter == null || aTBiddingListener == null) {
            aTBiddingListener = null;
        } else {
            com.anythink.core.common.l.d.b serverExtraInfo = iATBaseAdAdapter.getServerExtraInfo();
            if (serverExtraInfo != null && serverExtraInfo.k()) {
                aTBiddingListener = new com.anythink.core.common.l.g.b(aTBiddingListener, serverExtraInfo);
            }
        }
        this.f5439c.setBiddingListener(aTBiddingListener);
        return this.f5439c.startBiddingRequest(context, map, map2, aTBiddingListener);
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean supportImpressionCallback() {
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        return iATBaseAdAdapter == null || iATBaseAdAdapter.supportImpressionCallback();
    }

    private IATBaseAdAdapter a(Map<String, Object> map, Map<String, Object> map2) {
        IATBaseAdAdapter iATBaseAdAdapterA;
        Class<? extends ATBaseAdAdapter> cls;
        IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
        if (iATBaseAdAdapter != null) {
            iATBaseAdAdapter.parseGlobalParams(map, map2);
        }
        com.anythink.core.common.l.d.b serverExtraInfo = getServerExtraInfo();
        if (serverExtraInfo == null || !serverExtraInfo.k()) {
            iATBaseAdAdapterA = this.f5439c;
        } else {
            int iB = serverExtraInfo.b();
            if (this.f5440d == null) {
                this.f5440d = getFormatAdapterMap();
            }
            Map<Integer, Class<? extends ATBaseAdAdapter>> map3 = this.f5440d;
            if (map3 == null || map3.size() <= 0 || (cls = this.f5440d.get(Integer.valueOf(iB))) == null) {
                this.f5441e = String.format(f5438b, Integer.valueOf(iB));
            } else {
                try {
                    iATBaseAdAdapterA = t.a(cls.getName());
                } catch (Throwable th) {
                    Log.e("anythink", th.getMessage());
                    this.f5441e = th.getMessage();
                }
            }
            iATBaseAdAdapterA = null;
        }
        if (iATBaseAdAdapterA != null && iATBaseAdAdapterA != this.f5439c) {
            try {
                serverExtraInfo.a(iATBaseAdAdapterA);
                if (serverExtraInfo.l()) {
                    int iIntValue = ((Integer) p.a(map, "nw_firm_id", 0)).intValue();
                    if (iIntValue == 39 && map2 != null) {
                        Object obj = map2.get("huawei_request_custom_dislike");
                        boolean zBooleanValue = obj instanceof Boolean ? ((Boolean) obj).booleanValue() : true;
                        map2.put("huawei_request_custom_dislike", Boolean.valueOf(zBooleanValue));
                        if (zBooleanValue && !map2.containsKey(ATAdConst.KEY.AD_CHOICES_PLACEMENT)) {
                            map2.put(ATAdConst.KEY.AD_CHOICES_PLACEMENT, 2);
                        }
                    }
                    if (!serverExtraInfo.g() || map == null) {
                        if (serverExtraInfo.f() && iIntValue == 2 && map2 != null && !map2.containsKey(ATAdConst.KEY.AD_CHOICES_PLACEMENT)) {
                            map2.put(ATAdConst.KEY.AD_CHOICES_PLACEMENT, 2);
                        }
                    } else if (iIntValue != 2) {
                        if (iIntValue != 6) {
                            if (iIntValue != 8) {
                                if (iIntValue == 28 && !map.containsKey("video_sound")) {
                                    map.put("video_sound", 0);
                                }
                            } else if (!map.containsKey("video_muted")) {
                                map.put("video_muted", "1");
                            }
                        } else if (!map.containsKey("video_muted")) {
                            map.put("video_muted", "0");
                        }
                    } else if (map2 != null && !map2.containsKey(ATAdConst.KEY.AD_CHOICES_PLACEMENT)) {
                        map2.put(ATAdConst.KEY.AD_CHOICES_PLACEMENT, 0);
                    }
                }
                iATBaseAdAdapterA.parseGlobalParams(map, map2);
                iATBaseAdAdapterA.setTrackingInfo(this.f5439c.getTrackingInfo());
            } catch (Throwable unused) {
            }
        }
        return iATBaseAdAdapterA;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2, ATCustomLoadListener aTCustomLoadListener) {
        if (this.f5439c != null) {
            this.f5439c = a(map, map2);
            if (a()) {
                if (aTCustomLoadListener != null) {
                    aTCustomLoadListener.onAdLoadError("", this.f5441e);
                    return;
                }
                return;
            }
            IATBaseAdAdapter iATBaseAdAdapter = this.f5439c;
            if (iATBaseAdAdapter == null || aTCustomLoadListener == null) {
                aTCustomLoadListener = null;
            } else {
                com.anythink.core.common.l.d.b serverExtraInfo = iATBaseAdAdapter.getServerExtraInfo();
                if (serverExtraInfo != null && serverExtraInfo.k()) {
                    aTCustomLoadListener = new c(aTCustomLoadListener, serverExtraInfo);
                }
            }
            iATBaseAdAdapter.setLoadListener(aTCustomLoadListener);
            this.f5439c.loadCustomNetworkAd(context, map, map2);
        }
    }

    private static void a(com.anythink.core.common.l.d.b bVar, Map<String, Object> map, Map<String, Object> map2) {
        if (bVar.l()) {
            int iIntValue = ((Integer) p.a(map, "nw_firm_id", 0)).intValue();
            if (iIntValue == 39 && map2 != null) {
                Object obj = map2.get("huawei_request_custom_dislike");
                boolean zBooleanValue = obj instanceof Boolean ? ((Boolean) obj).booleanValue() : true;
                map2.put("huawei_request_custom_dislike", Boolean.valueOf(zBooleanValue));
                if (zBooleanValue && !map2.containsKey(ATAdConst.KEY.AD_CHOICES_PLACEMENT)) {
                    map2.put(ATAdConst.KEY.AD_CHOICES_PLACEMENT, 2);
                }
            }
            if (!bVar.g() || map == null) {
                if (!bVar.f() || iIntValue != 2 || map2 == null || map2.containsKey(ATAdConst.KEY.AD_CHOICES_PLACEMENT)) {
                    return;
                }
                map2.put(ATAdConst.KEY.AD_CHOICES_PLACEMENT, 2);
                return;
            }
            if (iIntValue == 2) {
                if (map2 == null || map2.containsKey(ATAdConst.KEY.AD_CHOICES_PLACEMENT)) {
                    return;
                }
                map2.put(ATAdConst.KEY.AD_CHOICES_PLACEMENT, 0);
                return;
            }
            if (iIntValue == 6) {
                if (map.containsKey("video_muted")) {
                    return;
                }
                map.put("video_muted", "0");
            } else {
                if (iIntValue != 8) {
                    if (iIntValue == 28 && !map.containsKey("video_sound")) {
                        map.put("video_sound", 0);
                        return;
                    }
                    return;
                }
                if (map.containsKey("video_muted")) {
                    return;
                }
                map.put("video_muted", "1");
            }
        }
    }
}
