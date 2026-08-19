package com.fl.saas.adx.base.manager.loader;

import androidx.annotation.NonNull;
import androidx.arch.core.util.Function;
import com.fl.saas.C1176f;
import com.fl.saas.C1188j;
import com.fl.saas.C1207p0;
import com.fl.saas.H0;
import com.fl.saas.I0;
import com.fl.saas.InterfaceC1164b1;
import com.fl.saas.J0;
import com.fl.saas.O0;
import com.fl.saas.P0;
import com.fl.saas.adx.base.base.AdapterAPI;
import com.fl.saas.adx.base.bean.AdInfo;
import com.fl.saas.adx.base.bean.MaterialBean;
import com.fl.saas.adx.base.bidding.BiddingResult;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.manager.api.FailedLoader;
import com.fl.saas.adx.base.manager.api.ManagerInfoAPI;
import com.fl.saas.adx.base.manager.api.ManagerLoader;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public abstract class BaseLoader<T extends AdapterAPI> implements ManagerInfoAPI, FailedLoader {
    private boolean isHot = false;
    private String key;
    private int mAdType;
    private AdapterAPI mAdapter;

    @NonNull
    protected ManagerLoader<T> mLoader;
    private long trafficStartTime;

    public BaseLoader(@NonNull ManagerLoader<T> managerLoader, int i2) {
        this.mLoader = managerLoader;
        this.mAdType = i2;
    }

    public static /* synthetic */ AdapterAPI c(BaseLoader baseLoader, AdapterAPI adapterAPI) {
        baseLoader.getClass();
        try {
            return baseLoader.mAdapter;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return null;
        }
    }

    private C1207p0 getValidAdSource() {
        return getValidAdapter().a(new Function() { // from class: com.fl.saas.adx.base.manager.loader.e
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return ((AdapterAPI) obj).getAdSource();
            }
        });
    }

    public void biddingResultUpload(boolean z2, int i2, int i3) {
        AdapterAPI adapterAPI = this.mAdapter;
        if (adapterAPI instanceof BiddingResult) {
            ((BiddingResult) adapterAPI).biddingResult(z2, i2, i3, 0);
        }
    }

    @Override // com.fl.saas.adx.base.manager.api.ManagerInfoAPI
    public void destroy() {
        AdapterAPI adapterAPI = this.mAdapter;
        if (adapterAPI != null) {
            adapterAPI.destroy();
        }
    }

    @Override // com.fl.saas.adx.base.manager.api.ManagerInfoAPI
    public AdInfo getAdInfo() {
        return (AdInfo) getValidAdSource().a(new Function() { // from class: com.fl.saas.adx.base.manager.loader.a
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                C1188j c1188j = (C1188j) obj;
                return AdInfo.create(c1188j.f30532p, c1188j.f30535q, c1188j.f30514j, c1188j.f30517k);
            }
        }).b(new InterfaceC1164b1() { // from class: com.fl.saas.adx.base.manager.loader.b
            @Override // com.fl.saas.InterfaceC1164b1
            public final Object a() {
                return AdInfo.createEmpty();
            }
        });
    }

    @Override // com.fl.saas.adx.base.manager.api.ManagerInfoAPI
    public int getEcpm() {
        return ((Integer) getValidAdSource().a(new Function() { // from class: com.fl.saas.adx.base.manager.loader.c
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((C1188j) obj).d());
            }
        }).c(0)).intValue();
    }

    public MaterialBean getMaterial() {
        MaterialBean materialBean = new MaterialBean();
        AdapterAPI adapterAPI = this.mAdapter;
        if (adapterAPI != null) {
            adapterAPI.setMaterial(materialBean);
        }
        return materialBean;
    }

    public String getReqId() {
        return (String) getValidAdSource().a(new Function() { // from class: com.fl.saas.adx.base.manager.loader.d
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return ((C1188j) obj).f30505g;
            }
        }).c("");
    }

    public AdapterAPI getShowAdapter() {
        return this.mAdapter;
    }

    public C1207p0 getValidAdapter() {
        return C1207p0.b(this.mAdapter).a(new Function() { // from class: com.fl.saas.adx.base.manager.loader.f
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return BaseLoader.c(this.f30286a, (AdapterAPI) obj);
            }
        });
    }

    @Override // com.fl.saas.adx.base.manager.api.FailedLoader
    public boolean isFailedCallBack() {
        return this.mLoader.isFailedCallBack();
    }

    public void loadAdapter(AdapterAPI adapterAPI) {
        LogcatUtil.d("FLSDK-API", "loadAdapter");
        if (adapterAPI != null) {
            try {
                if (this.mLoader.getContext() != null) {
                    adapterAPI.setHot(this.isHot);
                    adapterAPI.setPlaceId(this.key);
                    adapterAPI.setContext(this.mLoader.getContext());
                    adapterAPI.setLinkId(this.mLoader.getLinkId());
                    this.mLoader.bindAdapter(adapterAPI);
                    adapterAPI.load();
                    LogcatUtil.d("FLSDK-API", "load");
                }
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }

    public void loadConfig() {
        this.trafficStartTime = System.currentTimeMillis();
        int i2 = this.mAdType;
        if (i2 == 1) {
            P0 p02 = new P0();
            this.mAdapter = p02;
            loadAdapter(p02);
            return;
        }
        if (i2 == 2) {
            H0 h02 = new H0();
            this.mAdapter = h02;
            loadAdapter(h02);
            return;
        }
        if (i2 == 3) {
            I0 i02 = new I0();
            this.mAdapter = i02;
            loadAdapter(i02);
        } else if (i2 == 5) {
            O0 o02 = new O0();
            this.mAdapter = o02;
            loadAdapter(o02);
        } else if (i2 == 10) {
            J0 j02 = new J0();
            j02.a(DeviceUtil.appId, this.key);
            j02.setLinkId(this.mLoader.getLinkId());
            j02.a(this.isHot);
            C1176f c1176f = new C1176f(j02);
            this.mAdapter = c1176f;
            loadAdapter(c1176f);
        }
    }

    @Override // com.fl.saas.adx.base.manager.api.FailedLoader
    public void onAdFailed(FLError fLError) {
        this.mLoader.onAdFailed(fLError);
    }

    @Override // com.fl.saas.adx.base.interfaces.AdLoadEvent
    public void onLoadFailed(FLError fLError) {
        this.mLoader.onLoadFailed(fLError);
    }

    public void request(String str) {
        this.key = str;
        LogcatUtil.d("FLSDK-API", "请求的: appId:" + DeviceUtil.appId + "   posId:" + str);
        loadConfig();
    }

    public void setHot(boolean z2) {
        this.isHot = z2;
    }
}
