package com.meishu.sdk.core.utils;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class PackageBean implements Serializable {
    private AdBean ad;
    private AppBean app;
    private DClick dclk;
    private List<String> defImages;
    private List<DpFlagBean> dpflag;
    private int due;
    private Integer fieldExport;
    private HappyBean happy;
    private List<String> jbUrlPrefixes;
    private int noldp;
    private int olp;
    private long shakeTimeout;
    private SplashBean sty;
    private int syncSave;
    private int useBrowser;
    private String ver;
    private int verbosity;
    public List<String> webviewBlackSchemes;
    public HashMap<String, Integer> webviewLimitedSchemes;
    public int dpstay = 2;
    private int useHttps = 3;

    public static class AdBean {
        private int crdpf;
        private FeedConfigBean feed;
        private RewardConfigBean reward;
        private SplashConfigBean splash;

        public int getCrdpf() {
            return this.crdpf;
        }

        public FeedConfigBean getFeed() {
            return this.feed;
        }

        public RewardConfigBean getReward() {
            return this.reward;
        }

        public SplashConfigBean getSplash() {
            return this.splash;
        }

        public void setSplash(SplashConfigBean splashConfigBean) {
            this.splash = splashConfigBean;
        }
    }

    public static class AppBean implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        private Integer f31781a;

        /* renamed from: b, reason: collision with root package name */
        private Integer f31782b;

        /* renamed from: c, reason: collision with root package name */
        private Integer f31783c;

        /* renamed from: d, reason: collision with root package name */
        private Integer f31784d;

        /* renamed from: e, reason: collision with root package name */
        private Integer f31785e;
        private List<PackBean> others;
        private List<PackBean> required;
        private Integer ttl;
        private String url;

        public static class PackBean implements Serializable {
            private String app_package;
            private long expirationTime;
            private String id;
            private boolean isInstalled;
            private long lastCheckTime;

            public String getApp_package() {
                return this.app_package;
            }

            public long getExpirationTime() {
                return this.expirationTime;
            }

            public String getId() {
                return this.id;
            }

            public boolean getInstalled() {
                return this.isInstalled;
            }

            public long getLastCheckTime() {
                return this.lastCheckTime;
            }

            public void setApp_package(String str) {
                this.app_package = str;
            }

            public void setExpirationTime(long j2) {
                this.expirationTime = j2;
            }

            public void setId(String str) {
                this.id = str;
            }

            public void setInstalled(boolean z2) {
                this.isInstalled = z2;
            }

            public void setLastCheckTime(long j2) {
                this.lastCheckTime = j2;
            }
        }

        public Integer getA() {
            return this.f31781a;
        }

        public Integer getB() {
            return this.f31782b;
        }

        public Integer getC() {
            return this.f31783c;
        }

        public Integer getD() {
            return this.f31784d;
        }

        public Integer getE() {
            return this.f31785e;
        }

        public List<PackBean> getOthers() {
            return this.others;
        }

        public List<PackBean> getRequired() {
            return this.required;
        }

        public Integer getTtl() {
            return this.ttl;
        }

        public String getUrl() {
            return this.url;
        }

        public void setA(Integer num) {
            this.f31781a = num;
        }

        public void setB(Integer num) {
            this.f31782b = num;
        }

        public void setC(Integer num) {
            this.f31783c = num;
        }

        public void setD(Integer num) {
            this.f31784d = num;
        }

        public void setE(Integer num) {
            this.f31785e = num;
        }

        public void setOthers(List<PackBean> list) {
            this.others = list;
        }

        public void setRequired(List<PackBean> list) {
            this.required = list;
        }

        public void setTtl(Integer num) {
            this.ttl = num;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    public static class DClick implements Serializable {
        private int status;

        public int getStatus() {
            return this.status;
        }

        public void setStatus(int i2) {
            this.status = i2;
        }

        public String toString() {
            StringBuilder sbA = com.meishu.sdk.activity.a.a("DClick{status=");
            sbA.append(this.status);
            sbA.append('}');
            return sbA.toString();
        }
    }

    public static class DpFlagBean implements Serializable {
        private List<String> flag;
        private String scheme;

        public List<String> getFlag() {
            return this.flag;
        }

        public String getScheme() {
            return this.scheme;
        }

        public void setFlag(List<String> list) {
            this.flag = list;
        }

        public void setScheme(String str) {
            this.scheme = str;
        }
    }

    public static class FeedConfigBean {
        private int norlsc;
        private int useOldStyle;

        public int getNorlsc() {
            return this.norlsc;
        }

        public int getUseOldStyle() {
            return this.useOldStyle;
        }
    }

    public static class HappyBean {

        /* renamed from: i, reason: collision with root package name */
        private int f31786i;

        /* renamed from: k, reason: collision with root package name */
        private List<String> f31787k;
        private long lastTime;

        /* renamed from: r, reason: collision with root package name */
        private Map<String, Integer> f31788r;

        /* renamed from: x, reason: collision with root package name */
        private int f31789x;

        public int getI() {
            return this.f31786i;
        }

        public List<String> getK() {
            return this.f31787k;
        }

        public long getLastTime() {
            return this.lastTime;
        }

        public Map<String, Integer> getR() {
            return this.f31788r;
        }

        public int getX() {
            return this.f31789x;
        }

        public void setI(int i2) {
            this.f31786i = i2;
        }

        public void setK(List<String> list) {
            this.f31787k = list;
        }

        public void setLastTime(long j2) {
            this.lastTime = j2;
        }

        public void setR(Map<String, Integer> map) {
            this.f31788r = map;
        }

        public void setX(int i2) {
            this.f31789x = i2;
        }
    }

    public static class RewardConfigBean {
        private int ar;

        public int getAr() {
            return this.ar;
        }
    }

    public static class SplashBean implements Serializable {

        /* renamed from: v, reason: collision with root package name */
        private int f31790v;

        public int getV() {
            return this.f31790v;
        }

        public void setV(int i2) {
            this.f31790v = i2;
        }
    }

    public static class SplashConfigBean {
        private int ar;
        private int ic;
        private int nie;
        private int videoCacheTime;
        private int to = -1;
        private int rs = 1;
        private int wwtt = 0;

        public int getAr() {
            return this.ar;
        }

        public int getIc() {
            return this.ic;
        }

        public int getNie() {
            return this.nie;
        }

        public int getRs() {
            return this.rs;
        }

        public int getTo() {
            return this.to;
        }

        public int getVideoCacheTime() {
            return this.videoCacheTime;
        }

        public int getWwtt() {
            return this.wwtt;
        }

        public void setAr(int i2) {
            this.ar = i2;
        }

        public void setRs(int i2) {
            this.rs = i2;
        }

        public void setTo(int i2) {
            this.to = i2;
        }

        public void setVideoCacheTime(int i2) {
            this.videoCacheTime = i2;
        }

        public void setWwtt(int i2) {
            this.wwtt = i2;
        }
    }

    public AdBean getAd() {
        return this.ad;
    }

    public AppBean getApp() {
        return this.app;
    }

    public DClick getDclk() {
        return this.dclk;
    }

    public List<String> getDefImages() {
        return this.defImages;
    }

    public List<DpFlagBean> getDpflag() {
        return this.dpflag;
    }

    public int getDpstay() {
        return this.dpstay;
    }

    public int getDue() {
        return this.due;
    }

    public Integer getFieldExport() {
        return this.fieldExport;
    }

    public HappyBean getHappy() {
        return this.happy;
    }

    public List<String> getJbUrlPrefixes() {
        return this.jbUrlPrefixes;
    }

    public int getNoldp() {
        return this.noldp;
    }

    public int getOlp() {
        return this.olp;
    }

    public long getShakeTimeout() {
        return this.shakeTimeout;
    }

    public SplashBean getSty() {
        return this.sty;
    }

    public int getSyncSave() {
        return this.syncSave;
    }

    public int getUseBrowser() {
        return this.useBrowser;
    }

    public int getUseHttps() {
        return this.useHttps;
    }

    public String getVer() {
        return this.ver;
    }

    public int getVerbosity() {
        return this.verbosity;
    }

    public List<String> getWebviewBlackSchemes() {
        return this.webviewBlackSchemes;
    }

    public HashMap<String, Integer> getWebviewLimitedSchemes() {
        return this.webviewLimitedSchemes;
    }

    public void setAd(AdBean adBean) {
        this.ad = adBean;
    }

    public void setApp(AppBean appBean) {
        this.app = appBean;
    }

    public void setDclk(DClick dClick) {
        this.dclk = dClick;
    }

    public void setDefImages(List<String> list) {
        this.defImages = list;
    }

    public void setDpflag(List<DpFlagBean> list) {
        this.dpflag = list;
    }

    public void setDpstay(int i2) {
        this.dpstay = i2;
    }

    public void setDue(int i2) {
        this.due = i2;
    }

    public void setFieldExport(Integer num) {
        this.fieldExport = num;
    }

    public void setHappy(HappyBean happyBean) {
        this.happy = happyBean;
    }

    public void setOlp(int i2) {
        this.olp = i2;
    }

    public void setShakeTimeout(long j2) {
        this.shakeTimeout = j2;
    }

    public void setSty(SplashBean splashBean) {
        this.sty = splashBean;
    }

    public void setSyncSave(int i2) {
        this.syncSave = i2;
    }

    public void setUseBrowser(int i2) {
        this.useBrowser = i2;
    }

    public void setUseHttps(int i2) {
        this.useHttps = i2;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public void setVerbosity(int i2) {
        this.verbosity = i2;
    }

    public void setWebviewBlackSchemes(List<String> list) {
        this.webviewBlackSchemes = list;
    }

    public void setWebviewLimitedSchemes(HashMap<String, Integer> map) {
        this.webviewLimitedSchemes = map;
    }
}
