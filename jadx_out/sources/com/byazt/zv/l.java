package com.byazt.zv;

import com.byazt.dg.AdDownloadController;
import com.byazt.dg.AdDownloadEventConfig;
import com.byazt.dg.AdDownloadModel;
import com.byazt.t.jl;
import com.byazt.v.DeepLink;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1425, 34})
/* loaded from: classes3.dex */
public class l implements hp {

    /* renamed from: a, reason: collision with root package name */
    public long f28612a;
    public long an;
    public String as;

    /* renamed from: b, reason: collision with root package name */
    public int f28613b;
    public JSONObject cx;

    /* renamed from: d, reason: collision with root package name */
    public int f28614d;
    public boolean di;
    public int dy;

    /* renamed from: e, reason: collision with root package name */
    public String f28615e;
    public String ea;
    public long eb;
    public String ec;

    /* renamed from: f, reason: collision with root package name */
    public int f28616f;
    public boolean fi;
    public boolean gd;
    public String gu;
    public boolean hd;
    public boolean hp;
    public long hq;

    /* renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f28617j;
    public String jl;
    public final AtomicBoolean jx;

    /* renamed from: k, reason: collision with root package name */
    public int f28618k;
    public String kg;
    public boolean ky;

    /* renamed from: l, reason: collision with root package name */
    public boolean f28619l;
    public String lv;

    /* renamed from: m, reason: collision with root package name */
    public boolean f28620m;
    public boolean mp;

    /* renamed from: ms, reason: collision with root package name */
    public boolean f28621ms;

    /* renamed from: n, reason: collision with root package name */
    public boolean f28622n;
    public long nd;
    public boolean nr;
    public long ns;
    public int nu;

    /* renamed from: o, reason: collision with root package name */
    public int f28623o;
    public transient boolean pc;
    public String pu;

    /* renamed from: q, reason: collision with root package name */
    public int f28624q;
    public boolean qu;

    /* renamed from: r, reason: collision with root package name */
    public boolean f28625r;
    public boolean rk;
    public boolean ru;
    public boolean rv;
    public long rz;

    /* renamed from: s, reason: collision with root package name */
    public String f28626s;
    public boolean su;
    public String sz;
    public long tw;

    /* renamed from: u, reason: collision with root package name */
    public int f28627u;
    public long ud;

    /* renamed from: v, reason: collision with root package name */
    public int f28628v;
    public long vq;
    public String vv;

    /* renamed from: w, reason: collision with root package name */
    public final AtomicBoolean f28629w;
    public boolean wt;
    public long wv;
    public boolean xh;
    public int xs;

    /* renamed from: y, reason: collision with root package name */
    public long f28630y;
    public String yj;

    @AdBaseConstants.FunnelType
    public int yr;
    public boolean zx;
    public String zy;

    private l() {
        this.f28624q = 1;
        this.f28622n = true;
        this.di = false;
        this.f28623o = 0;
        this.f28614d = 0;
        this.f28625r = false;
        this.ky = false;
        this.xh = true;
        this.f28621ms = true;
        this.hp = true;
        this.f28619l = true;
        this.jx = new AtomicBoolean(false);
        this.f28617j = new AtomicBoolean(false);
        this.f28629w = new AtomicBoolean(false);
        this.yr = 1;
        this.hd = true;
        this.an = -1L;
    }

    public void a(long j2) {
        if (j2 > 0) {
            this.ns = j2;
        }
    }

    public boolean an() {
        return this.wt;
    }

    public long as() {
        return this.an;
    }

    public int b() {
        return this.f28623o;
    }

    @Override // com.byazt.zv.hp
    public DownloadController cx() {
        return yj();
    }

    public synchronized void d() {
        this.f28614d++;
    }

    public synchronized void di() {
        this.f28623o++;
    }

    public String dy() {
        return this.lv;
    }

    @Override // com.byazt.zv.hp
    public String e() {
        return this.as;
    }

    public boolean ea() {
        return this.pc;
    }

    @Override // com.byazt.zv.hp
    public JSONObject eb() {
        return this.cx;
    }

    @Override // com.byazt.zv.hp
    public int ec() {
        return this.f28613b;
    }

    public boolean f() {
        return this.rv;
    }

    public boolean fi() {
        return this.gd;
    }

    public AdDownloadEventConfig gd() {
        return new AdDownloadEventConfig.Builder().setClickButtonTag(this.as).setRefer(this.kg).setIsEnableV3Event(this.mp).build();
    }

    @Override // com.byazt.zv.hp
    public JSONObject gu() {
        return null;
    }

    public long hd() {
        return this.nd;
    }

    public void hp(int i2) {
        this.f28623o = i2;
    }

    public long hq() {
        return this.hq;
    }

    public void j(int i2) {
        this.dy = i2;
    }

    @Override // com.byazt.zv.hp
    public long jl() {
        return this.eb;
    }

    public void jx(long j2) {
        this.ud = j2;
    }

    @Override // com.byazt.zv.hp
    public List<String> k() {
        return null;
    }

    public String kg() {
        return this.ec;
    }

    public String ky() {
        return this.vv;
    }

    public void l(int i2) {
        this.f28614d = i2;
    }

    public int lv() {
        return this.f28624q;
    }

    public String m() {
        return this.ea;
    }

    public int mp() {
        return this.f28628v;
    }

    public boolean ms() {
        return this.di;
    }

    public void n(boolean z2) {
        this.f28619l = z2;
    }

    public long nd() {
        return this.rz;
    }

    public String nr() {
        return this.yj;
    }

    public void ns(boolean z2) {
        this.gd = z2;
    }

    public int nu() {
        return this.dy;
    }

    public int o() {
        return this.f28614d;
    }

    public boolean pc() {
        return this.ru;
    }

    public int pu() {
        return this.xs;
    }

    public void q(int i2) {
        this.yr = i2;
    }

    public boolean qu() {
        return this.nr;
    }

    public long r() {
        return this.ns;
    }

    public long rk() {
        return this.tw;
    }

    public AdDownloadModel ru() {
        return new AdDownloadModel.Builder().setAdId(this.f28612a).setExtraValue(this.eb).setLogExtra(this.f28626s).setPackageName(this.f28615e).setExtra(this.cx).setIsAd(this.f28622n).setVersionCode(this.xs).setVersionName(this.vv).setDownloadUrl(this.gu).setModelType(this.f28618k).setMimeType(this.pu).setAppName(this.ec).setAppIcon(this.sz).setTaskKey(this.yj).setDeepLink(new DeepLink(this.jl, this.zy, null)).build();
    }

    public boolean rv() {
        return this.rk;
    }

    public boolean rz() {
        return this.qu;
    }

    public void s(int i2) {
        this.f28616f = i2;
    }

    public boolean su() {
        return this.fi;
    }

    @Override // com.byazt.zv.hp
    public int sz() {
        return -1;
    }

    @Override // com.byazt.zv.hp
    public JSONObject u() {
        return null;
    }

    public int ud() {
        return this.nu;
    }

    @Override // com.byazt.zv.hp
    public Object v() {
        return null;
    }

    public boolean vq() {
        return this.ky;
    }

    @Override // com.byazt.zv.hp
    public JSONObject vv() {
        return null;
    }

    public void w(long j2) {
        this.eb = j2;
    }

    public JSONObject wt() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mId", this.f28612a);
            jSONObject.put("mExtValue", this.eb);
            jSONObject.put("mLogExtra", this.f28626s);
            jSONObject.put("mDownloadStatus", this.f28624q);
            jSONObject.put("mPackageName", this.f28615e);
            jSONObject.put("mIsAd", this.f28622n);
            jSONObject.put("mTimeStamp", this.ns);
            jSONObject.put("mExtras", this.cx);
            jSONObject.put("mVersionCode", this.xs);
            jSONObject.put("mVersionName", this.vv);
            jSONObject.put("mDownloadId", this.f28613b);
            jSONObject.put("mIsV3Event", this.mp);
            jSONObject.put("mScene", this.f28616f);
            jSONObject.put("mEventTag", this.as);
            jSONObject.put("mEventRefer", this.kg);
            jSONObject.put("mDownloadUrl", this.gu);
            jSONObject.put("mEnableBackDialog", this.di);
            jSONObject.put("hasSendInstallFinish", this.jx.get());
            jSONObject.put("hasSendDownloadFailedFinally", this.f28617j.get());
            jSONObject.put("hasDoRebootMarketInstallFinishCheck", this.f28629w.get());
            jSONObject.put("mLastFailedErrCode", this.dy);
            jSONObject.put("mLastFailedErrMsg", this.lv);
            jSONObject.put("mOpenUrl", this.jl);
            jSONObject.put("mLinkMode", this.f28628v);
            jSONObject.put("mDownloadMode", this.f28627u);
            jSONObject.put("mModelType", this.f28618k);
            jSONObject.put("mAppName", this.ec);
            jSONObject.put("mAppIcon", this.sz);
            jSONObject.put("mDownloadFailedTimes", this.f28623o);
            long j2 = this.wv;
            if (j2 == 0) {
                j2 = this.ns;
            }
            jSONObject.put("mRecentDownloadResumeTime", j2);
            jSONObject.put("mClickPauseTimes", this.f28614d);
            jSONObject.put("mJumpInstallTime", this.hq);
            jSONObject.put("mCancelInstallTime", this.ud);
            jSONObject.put("mLastFailedResumeCount", this.nu);
            jSONObject.put("mIsUpdateDownload", this.f28625r);
            jSONObject.put("mOriginMimeType", this.pu);
            jSONObject.put("mIsPatchApplyHandled", this.ky);
            jSONObject.put("downloadFinishReason", this.ea);
            jSONObject.put("clickDownloadTime", this.rz);
            jSONObject.put("clickDownloadSize", this.nd);
            jSONObject.put("installAfterCleanSpace", this.f28620m);
            jSONObject.put("funnelType", this.yr);
            jSONObject.put("webUrl", this.zy);
            jSONObject.put("enableShowComplianceDialog", this.hd);
            jSONObject.put("isAutoDownloadOnCardShow", this.zx);
            jSONObject.put("enable_new_activity", this.xh ? 1 : 0);
            jSONObject.put("enable_pause", this.f28621ms ? 1 : 0);
            jSONObject.put("enable_ah", this.hp ? 1 : 0);
            jSONObject.put("enable_am", this.f28619l ? 1 : 0);
            jSONObject.putOpt("intent_jump_browser_success", Boolean.valueOf(this.gd));
            jSONObject.put("task_key", this.yj);
            jSONObject.putOpt("market_install_finish_check_start_timestamp", Long.valueOf(this.tw));
            jSONObject.putOpt("download_pause_timestamp", Long.valueOf(this.f28630y));
            jSONObject.putOpt("download_finish_timestamp", Long.valueOf(this.vq));
            return jSONObject;
        } catch (Exception e2) {
            jl.sz().hp(e2, "NativeDownloadModel toJson");
            return jSONObject;
        }
    }

    public long wv() {
        long j2 = this.wv;
        return j2 == 0 ? this.ns : j2;
    }

    public int xh() {
        return this.f28616f;
    }

    public void xs(boolean z2) {
        this.zx = z2;
    }

    public String y() {
        return this.pu;
    }

    public AdDownloadController yj() {
        return new AdDownloadController.Builder().setIsEnableBackDialog(this.di).setLinkMode(this.f28628v).setDownloadMode(this.f28627u).setEnableShowComplianceDialog(this.hd).setEnableAH(this.hp).setEnableAM(this.f28619l).build();
    }

    public boolean yr() {
        return this.f28620m;
    }

    public boolean zx() {
        return this.f28625r;
    }

    @Override // com.byazt.zv.hp
    public boolean zy() {
        return this.mp;
    }

    public void a(int i2) {
        this.xs = i2;
    }

    public void e(String str) {
        this.ec = str;
    }

    public void eb(int i2) {
        this.f28613b = i2;
    }

    public void ec(boolean z2) {
        this.f28621ms = z2;
    }

    public void gu(String str) {
        this.sz = str;
    }

    public void hp(long j2) {
        this.wv = j2;
    }

    public void j(long j2) {
        this.f28612a = j2;
    }

    public void jl(int i2) {
        this.f28618k = i2;
    }

    public void jx(int i2) {
        this.nu = i2;
    }

    public void k(boolean z2) {
        this.wt = z2;
    }

    public void l(long j2) {
        this.hq = j2;
    }

    @Override // com.byazt.zv.hp
    public DownloadModel n() {
        return ru();
    }

    @Override // com.byazt.zv.hp
    public DownloadEventConfig ns() {
        return gd();
    }

    @Override // com.byazt.zv.hp
    public String q() {
        return this.kg;
    }

    @Override // com.byazt.zv.hp
    public int s() {
        return this.yr;
    }

    public void sz(boolean z2) {
        this.hp = z2;
    }

    public void u(boolean z2) {
        this.hd = z2;
    }

    public void v(boolean z2) {
        this.ru = z2;
    }

    public void vv(boolean z2) {
        this.xh = z2;
    }

    public void w(int i2) {
        this.f28624q = i2;
    }

    @Override // com.byazt.zv.hp
    public boolean xs() {
        return this.xh;
    }

    public void zy(String str) {
        this.pu = str;
    }

    public void a(String str) {
        this.as = str;
    }

    public void e(int i2) {
        this.f28628v = i2;
    }

    public void eb(String str) {
        this.kg = str;
    }

    public void gu(int i2) {
        this.f28627u = i2;
    }

    public void hp(String str) {
        this.lv = str;
    }

    @Override // com.byazt.zv.hp
    public String j() {
        return this.f28626s;
    }

    public void jl(String str) {
        this.ea = str;
    }

    public void jx(String str) {
        this.f28626s = str;
    }

    public void k(String str) {
        this.yj = str;
    }

    @Override // com.byazt.zv.hp
    public long l() {
        return this.f28612a;
    }

    public void q(String str) {
        this.jl = str;
    }

    public void s(String str) {
        this.gu = str;
    }

    @Override // com.byazt.zv.hp
    public String w() {
        return this.f28615e;
    }

    public void zy(boolean z2) {
        this.nr = z2;
    }

    @Override // com.byazt.zv.hp
    public String a() {
        return this.jl;
    }

    public void e(boolean z2) {
        this.pc = z2;
    }

    public void eb(long j2) {
        this.an = j2;
    }

    public void gu(boolean z2) {
        this.fi = z2;
    }

    public void hp(boolean z2) {
        this.f28622n = z2;
    }

    public void j(String str) {
        this.vv = str;
    }

    public void jl(boolean z2) {
        this.rk = z2;
    }

    @Override // com.byazt.zv.hp
    public boolean jx() {
        return this.f28622n;
    }

    public void l(String str) {
        this.f28615e = str;
    }

    public void q(long j2) {
        this.nd = j2;
    }

    public void s(long j2) {
        this.rz = j2;
    }

    public void w(String str) {
        this.zy = str;
    }

    public void a(boolean z2) {
        this.f28620m = z2;
    }

    public void e(long j2) {
        this.tw = j2;
    }

    public void eb(boolean z2) {
        this.qu = z2;
    }

    public void gu(long j2) {
        this.f28630y = j2;
    }

    public void hp(JSONObject jSONObject) {
        this.cx = jSONObject;
    }

    public void j(boolean z2) {
        this.su = z2;
    }

    public void jl(long j2) {
        this.vq = j2;
    }

    public void jx(boolean z2) {
        this.di = z2;
    }

    public void l(boolean z2) {
        this.mp = z2;
    }

    public void q(boolean z2) {
        this.ky = z2;
    }

    public void s(boolean z2) {
        this.f28625r = z2;
    }

    public void w(boolean z2) {
        this.rv = z2;
    }

    public static l l(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        l lVar = new l();
        try {
            lVar.j(com.byazt.pp.l.hp(jSONObject, "mId"));
            lVar.w(com.byazt.pp.l.hp(jSONObject, "mExtValue"));
            lVar.jx(jSONObject.optString("mLogExtra"));
            lVar.w(jSONObject.optInt("mDownloadStatus"));
            lVar.l(jSONObject.optString("mPackageName"));
            boolean z2 = true;
            lVar.hp(jSONObject.optBoolean("mIsAd", true));
            lVar.a(com.byazt.pp.l.hp(jSONObject, "mTimeStamp"));
            lVar.a(jSONObject.optInt("mVersionCode"));
            lVar.j(jSONObject.optString("mVersionName"));
            lVar.eb(jSONObject.optInt("mDownloadId"));
            lVar.l(jSONObject.optBoolean("mIsV3Event"));
            lVar.s(jSONObject.optInt("mScene"));
            lVar.a(jSONObject.optString("mEventTag"));
            lVar.eb(jSONObject.optString("mEventRefer"));
            lVar.s(jSONObject.optString("mDownloadUrl"));
            lVar.jx(jSONObject.optBoolean("mEnableBackDialog"));
            lVar.jx.set(jSONObject.optBoolean("hasSendInstallFinish"));
            lVar.f28617j.set(jSONObject.optBoolean("hasSendDownloadFailedFinally"));
            lVar.f28629w.set(jSONObject.optBoolean("hasDoRebootMarketInstallFinishCheck"));
            lVar.j(jSONObject.optInt("mLastFailedErrCode"));
            lVar.hp(jSONObject.optString("mLastFailedErrMsg"));
            lVar.q(jSONObject.optString("mOpenUrl"));
            lVar.e(jSONObject.optInt("mLinkMode"));
            lVar.gu(jSONObject.optInt("mDownloadMode"));
            lVar.jl(jSONObject.optInt("mModelType"));
            lVar.e(jSONObject.optString("mAppName"));
            lVar.gu(jSONObject.optString("mAppIcon"));
            lVar.hp(jSONObject.optInt("mDownloadFailedTimes", 0));
            lVar.hp(com.byazt.pp.l.hp(jSONObject, "mRecentDownloadResumeTime"));
            lVar.l(jSONObject.optInt("mClickPauseTimes"));
            lVar.l(com.byazt.pp.l.hp(jSONObject, "mJumpInstallTime"));
            lVar.jx(com.byazt.pp.l.hp(jSONObject, "mCancelInstallTime"));
            lVar.jx(jSONObject.optInt("mLastFailedResumeCount"));
            lVar.jl(jSONObject.optString("downloadFinishReason"));
            lVar.q(jSONObject.optLong("clickDownloadSize"));
            lVar.s(jSONObject.optLong("clickDownloadTime"));
            lVar.s(jSONObject.optBoolean("mIsUpdateDownload"));
            lVar.zy(jSONObject.optString("mOriginMimeType"));
            lVar.q(jSONObject.optBoolean("mIsPatchApplyHandled"));
            lVar.a(jSONObject.optBoolean("installAfterCleanSpace"));
            lVar.q(jSONObject.optInt("funnelType", 1));
            lVar.w(jSONObject.optString("webUrl"));
            lVar.u(jSONObject.optBoolean("enableShowComplianceDialog", true));
            lVar.xs(jSONObject.optBoolean("isAutoDownloadOnCardShow"));
            lVar.vv(jSONObject.optInt("enable_new_activity", 1) == 1);
            lVar.ec(jSONObject.optInt("enable_pause", 1) == 1);
            lVar.sz(jSONObject.optInt("enable_ah", 1) == 1);
            if (jSONObject.optInt("enable_am", 1) != 1) {
                z2 = false;
            }
            lVar.n(z2);
            lVar.hp(jSONObject.optJSONObject("mExtras"));
            lVar.ns(jSONObject.optBoolean("intent_jump_browser_success"));
            lVar.k(jSONObject.optString("task_key"));
            lVar.e(jSONObject.optLong("market_install_finish_check_start_timestamp"));
            lVar.gu(jSONObject.optLong("download_pause_timestamp", 0L));
            lVar.jl(jSONObject.optLong("download_finish_timestamp", 0L));
            return lVar;
        } catch (Exception e2) {
            jl.sz().hp(e2, "NativeDownloadModel fromJson");
            return lVar;
        }
    }

    @Override // com.byazt.zv.hp
    public String hp() {
        return this.gu;
    }

    public l(DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        this(downloadModel, downloadEventConfig, downloadController, 0);
    }

    public l(DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, int i2) {
        this.f28624q = 1;
        this.f28622n = true;
        this.di = false;
        this.f28623o = 0;
        this.f28614d = 0;
        this.f28625r = false;
        this.ky = false;
        this.xh = true;
        this.f28621ms = true;
        this.hp = true;
        this.f28619l = true;
        this.jx = new AtomicBoolean(false);
        this.f28617j = new AtomicBoolean(false);
        this.f28629w = new AtomicBoolean(false);
        this.yr = 1;
        this.hd = true;
        this.an = -1L;
        this.f28612a = downloadModel.getId();
        this.eb = downloadModel.getExtraValue();
        this.f28626s = downloadModel.getLogExtra();
        this.f28615e = downloadModel.getPackageName();
        this.cx = downloadModel.getExtra();
        this.f28622n = downloadModel.isAd();
        this.xs = downloadModel.getVersionCode();
        this.vv = downloadModel.getVersionName();
        this.gu = downloadModel.getDownloadUrl();
        if (downloadModel.getDeepLink() != null) {
            this.jl = downloadModel.getDeepLink().getOpenUrl();
            this.zy = downloadModel.getDeepLink().getWebUrl();
        }
        this.f28618k = downloadModel.getModelType();
        this.ec = downloadModel.getName();
        this.sz = downloadModel.getAppIcon();
        this.pu = downloadModel.getMimeType();
        this.as = downloadEventConfig.getClickButtonTag();
        this.kg = downloadEventConfig.getRefer();
        this.mp = downloadEventConfig.isEnableV3Event();
        this.di = downloadController.isEnableBackDialog();
        this.f28628v = downloadController.getLinkMode();
        this.f28627u = downloadController.getDownloadMode();
        this.hd = downloadController.enableShowComplianceDialog();
        this.zx = downloadController.isAutoDownloadOnCardShow();
        this.xh = downloadController.enableNewActivity();
        this.hp = downloadController.enableAH();
        this.f28619l = downloadController.enableAM();
        this.f28613b = i2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.ns = jCurrentTimeMillis;
        this.wv = jCurrentTimeMillis;
        this.ky = downloadModel.shouldDownloadWithPatchApply();
        if (downloadModel instanceof AdDownloadModel) {
            this.yj = ((AdDownloadModel) downloadModel).getTaskKey();
        }
    }
}
