package com.bytedance.sdk.openadsdk;

import com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;

@com.byazt.kj.hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 1945})
/* loaded from: classes3.dex */
public class CSJConfig implements AdConfig {

    /* renamed from: a, reason: collision with root package name */
    private int f28875a;

    /* renamed from: e, reason: collision with root package name */
    private boolean f28876e;
    private boolean eb;
    private Map<String, Object> gu;
    private String hp;

    /* renamed from: j, reason: collision with root package name */
    private String f28877j;
    private TTCustomController jl;
    private boolean jx;

    /* renamed from: k, reason: collision with root package name */
    private int f28878k;

    /* renamed from: l, reason: collision with root package name */
    private String f28879l;

    /* renamed from: q, reason: collision with root package name */
    private int[] f28880q;

    /* renamed from: s, reason: collision with root package name */
    private boolean f28881s;

    /* renamed from: u, reason: collision with root package name */
    private boolean f28882u;

    /* renamed from: v, reason: collision with root package name */
    private int f28883v;

    /* renamed from: w, reason: collision with root package name */
    private String f28884w;
    private IMediationConfig xs;
    private int zy;

    @com.byazt.kj.hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 1182})
    public static class hp {
        private TTCustomController gu;
        private String hp;

        /* renamed from: j, reason: collision with root package name */
        private String f28887j;
        private int jl;

        /* renamed from: l, reason: collision with root package name */
        private String f28889l;

        /* renamed from: q, reason: collision with root package name */
        private int[] f28890q;

        /* renamed from: u, reason: collision with root package name */
        private IMediationConfig f28892u;

        /* renamed from: v, reason: collision with root package name */
        private boolean f28893v;

        /* renamed from: w, reason: collision with root package name */
        private String f28894w;
        private boolean jx = false;

        /* renamed from: a, reason: collision with root package name */
        private int f28885a = 0;
        private boolean eb = true;

        /* renamed from: s, reason: collision with root package name */
        private boolean f28891s = false;

        /* renamed from: e, reason: collision with root package name */
        private boolean f28886e = false;
        private int zy = 2;

        /* renamed from: k, reason: collision with root package name */
        private int f28888k = 0;
        private Map<String, Object> xs = null;

        public hp hp(String str) {
            this.hp = str;
            return this;
        }

        public hp j(String str) {
            this.f28894w = str;
            return this;
        }

        public hp jx(String str) {
            this.f28887j = str;
            return this;
        }

        public hp l(String str) {
            this.f28889l = str;
            return this;
        }

        public hp w(boolean z2) {
            this.f28893v = z2;
            return this;
        }

        public hp hp(boolean z2) {
            this.jx = z2;
            return this;
        }

        public hp j(boolean z2) {
            this.f28886e = z2;
            return this;
        }

        public hp jx(boolean z2) {
            this.f28891s = z2;
            return this;
        }

        public hp l(boolean z2) {
            this.eb = z2;
            return this;
        }

        public hp hp(int i2) {
            this.f28885a = i2;
            return this;
        }

        public hp j(int i2) {
            this.f28888k = i2;
            return this;
        }

        public hp jx(int i2) {
            this.zy = i2;
            return this;
        }

        public hp l(int i2) {
            this.jl = i2;
            return this;
        }

        public hp hp(int... iArr) {
            this.f28890q = iArr;
            return this;
        }

        public hp hp(TTCustomController tTCustomController) {
            this.gu = tTCustomController;
            return this;
        }

        public hp hp(IMediationConfig iMediationConfig) {
            this.f28892u = iMediationConfig;
            return this;
        }

        public hp hp(String str, Object obj) {
            if (this.xs == null) {
                this.xs = new HashMap();
            }
            this.xs.put(str, obj);
            return this;
        }
    }

    public CSJConfig(hp hpVar) {
        this.jx = false;
        this.f28875a = 0;
        this.eb = true;
        this.f28881s = false;
        this.f28876e = false;
        this.hp = hpVar.hp;
        this.f28879l = hpVar.f28889l;
        this.jx = hpVar.jx;
        this.f28877j = hpVar.f28887j;
        this.f28884w = hpVar.f28894w;
        this.f28875a = hpVar.f28885a;
        this.eb = hpVar.eb;
        this.f28881s = hpVar.f28891s;
        this.f28880q = hpVar.f28890q;
        this.f28876e = hpVar.f28886e;
        this.jl = hpVar.gu;
        this.zy = hpVar.jl;
        this.f28883v = hpVar.f28888k;
        this.f28878k = hpVar.zy;
        this.f28882u = hpVar.f28893v;
        this.xs = hpVar.f28892u;
        this.gu = hpVar.xs;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int getAgeGroup() {
        return this.f28883v;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getAppId() {
        return this.hp;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getAppName() {
        return this.f28879l;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public TTCustomController getCustomController() {
        return this.jl;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getData() {
        return this.f28884w;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int[] getDirectDownloadNetworkType() {
        return this.f28880q;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public Object getExtra(String str) {
        Map<String, Object> map = this.gu;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public Map<String, Object> getInitExtra() {
        return this.gu;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getKeywords() {
        return this.f28877j;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public IMediationConfig getMediationConfig() {
        return this.xs;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int getPluginUpdateConfig() {
        return this.f28878k;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int getThemeStatus() {
        return this.zy;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int getTitleBarTheme() {
        return this.f28875a;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isAllowShowNotify() {
        return this.eb;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isDebug() {
        return this.f28881s;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isPaid() {
        return this.jx;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isSupportMultiProcess() {
        return this.f28876e;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isUseMediation() {
        return this.f28882u;
    }

    public void setAgeGroup(int i2) {
        this.f28883v = i2;
    }

    public void setAllowShowNotify(boolean z2) {
        this.eb = z2;
    }

    public void setAppId(String str) {
        this.hp = str;
    }

    public void setAppName(String str) {
        this.f28879l = str;
    }

    public void setCustomController(TTCustomController tTCustomController) {
        this.jl = tTCustomController;
    }

    public void setData(String str) {
        this.f28884w = str;
    }

    public void setDebug(boolean z2) {
        this.f28881s = z2;
    }

    public void setDirectDownloadNetworkType(int... iArr) {
        this.f28880q = iArr;
    }

    public void setKeywords(String str) {
        this.f28877j = str;
    }

    public void setPaid(boolean z2) {
        this.jx = z2;
    }

    public void setSupportMultiProcess(boolean z2) {
        this.f28876e = z2;
    }

    public void setThemeStatus(int i2) {
        this.zy = i2;
    }

    public void setTitleBarTheme(int i2) {
        this.f28875a = i2;
    }
}
