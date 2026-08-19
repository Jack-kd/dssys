package com.byazt.t;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.b.IDownloadButtonClickListener;
import com.byazt.b.OnItemClickListener;
import com.byazt.b.n;
import com.byazt.dg.AdDownloadModel;
import com.byazt.fn.IDownloadListener;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.ni.DownloadHandlerService;
import com.byazt.t.s;
import com.byazt.v.DownloadShortInfo;
import com.byazt.y.k;
import com.byazt.yk.Downloader;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import com.byazt.yy.DownloadStatusChangeListener;
import com.byazt.yy.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 311, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements eb, k.hp {
    public static final String hp = "w";

    /* renamed from: a, reason: collision with root package name */
    public final Map<Integer, Object> f25666a;

    /* renamed from: e, reason: collision with root package name */
    public final IDownloadListener f25667e;
    public DownloadShortInfo eb;
    public boolean ec;
    public boolean gu;

    /* renamed from: j, reason: collision with root package name */
    public j f25668j;
    public long jl;
    public s jx;

    /* renamed from: k, reason: collision with root package name */
    public long f25669k;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.y.k f25670l;

    /* renamed from: n, reason: collision with root package name */
    public SoftReference<IDownloadButtonClickListener> f25671n;

    /* renamed from: q, reason: collision with root package name */
    public jx f25672q;

    /* renamed from: s, reason: collision with root package name */
    public DownloadInfo f25673s;
    public final boolean sz;

    /* renamed from: u, reason: collision with root package name */
    public DownloadEventConfig f25674u;

    /* renamed from: v, reason: collision with root package name */
    public DownloadModel f25675v;
    public SoftReference<OnItemClickListener> vv;

    /* renamed from: w, reason: collision with root package name */
    public WeakReference<Context> f25676w;
    public DownloadController xs;
    public String zy;

    public interface hp {
        void hp();
    }

    public interface l {
        void hp(long j2);
    }

    public w() {
        com.byazt.y.k kVar = new com.byazt.y.k(Looper.getMainLooper(), this);
        this.f25670l = kVar;
        this.f25666a = new ConcurrentHashMap();
        this.f25667e = new s.hp(kVar);
        this.f25669k = -1L;
        this.f25675v = null;
        this.f25674u = null;
        this.xs = null;
        this.jx = new s(this);
        this.f25668j = new j(kVar);
        this.sz = com.byazt.jb.hp.jx().hp("ttdownloader_callback_twice");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        WeakReference<Context> weakReference = this.f25676w;
        return (weakReference == null || weakReference.get() == null) ? jl.getContext() : this.f25676w.get();
    }

    private void gu() {
        SoftReference<OnItemClickListener> softReference = this.vv;
        if (softReference != null && softReference.get() != null) {
            this.vv.get().onItemClick(this.f25675v, jl(), zy());
            this.vv = null;
        } else {
            jl.l();
            getContext();
            zy();
            jl();
        }
    }

    @NonNull
    private DownloadEventConfig jl() {
        DownloadEventConfig downloadEventConfig = this.f25674u;
        return downloadEventConfig == null ? new j.hp().hp() : downloadEventConfig;
    }

    private void k() {
        String str = hp;
        com.byazt.y.gu.hp(str, "pICD", null);
        if (this.jx.j(this.f25673s)) {
            com.byazt.y.gu.hp(str, "pICD BC", null);
            a(false);
        } else {
            com.byazt.y.gu.hp(str, "pICD IC", null);
            gu();
        }
    }

    private void u() {
        jx jxVar = this.f25672q;
        if (jxVar != null && jxVar.getStatus() != AsyncTask.Status.FINISHED) {
            this.f25672q.cancel(true);
        }
        this.f25672q = new jx();
        if (TextUtils.isEmpty(this.zy)) {
            com.byazt.y.l.hp(this.f25672q, this.f25675v.getDownloadUrl(), this.f25675v.getPackageName());
        } else {
            com.byazt.y.l.hp(this.f25672q, this.f25675v.getDownloadUrl(), this.f25675v.getPackageName(), this.zy);
        }
    }

    private boolean v() {
        if (!com.byazt.jb.hp.jx().hp("fix_click_start")) {
            DownloadInfo downloadInfo = this.f25673s;
            if (downloadInfo == null) {
                return true;
            }
            return !(downloadInfo.getStatus() == -3 || Downloader.getInstance(jl.getContext()).canResume(this.f25673s.getId())) || this.f25673s.getStatus() == 0;
        }
        DownloadInfo downloadInfo2 = this.f25673s;
        if (downloadInfo2 == null) {
            return true;
        }
        if ((downloadInfo2.getStatus() == -3 && this.f25673s.getCurBytes() <= 0) || this.f25673s.getStatus() == 0 || this.f25673s.getStatus() == -4) {
            return true;
        }
        return com.byazt.xq.a.hp(this.f25673s.getStatus(), this.f25673s.getSavePath(), this.f25673s.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DownloadShortInfo xs() {
        if (this.eb == null) {
            this.eb = new DownloadShortInfo();
        }
        return this.eb;
    }

    @NonNull
    private DownloadController zy() {
        if (this.xs == null) {
            this.xs = new com.byazt.yy.jx();
        }
        return this.xs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eb(final boolean z2) {
        this.f25668j.hp(new com.byazt.w.w(this.f25669k, this.f25675v, jl(), zy()));
        this.f25668j.hp(0, 0L, 0L, new hp() { // from class: com.byazt.t.w.9
            @Override // com.byazt.t.w.hp
            public void hp() throws JSONException {
                if (w.this.f25668j.hp()) {
                    return;
                }
                w.this.s(z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(boolean z2) throws JSONException {
        Iterator<DownloadStatusChangeListener> it = s.hp(this.f25666a).iterator();
        while (it.hasNext()) {
            it.next().onDownloadStart(this.f25675v, zy());
        }
        int iHp = this.jx.hp(jl.getContext(), this.f25667e);
        String str = hp;
        com.byazt.y.gu.hp(str, "beginDown id:" + iHp, null);
        if (iHp == 0) {
            DownloadInfo downloadInfoHp = new DownloadInfo.hp(this.f25675v.getDownloadUrl()).hp();
            downloadInfoHp.setStatus(-1);
            hp(downloadInfoHp);
            com.byazt.r.hp.hp().hp(this.f25669k, new BaseException(2, "start download failed, id=0"));
            com.byazt.u.jx.hp().l("beginDown");
        } else if (this.f25673s != null && !com.byazt.jb.hp.jx().hp("fix_click_start")) {
            this.jx.hp(this.f25673s, false);
        } else if (z2) {
            this.jx.hp();
        }
        if (this.jx.hp(jx())) {
            com.byazt.y.gu.hp(str, "beginDown IC id:" + iHp, null);
            gu();
        }
    }

    public void a() {
        this.f25670l.post(new Runnable() { // from class: com.byazt.t.w.2
            @Override // java.lang.Runnable
            public void run() {
                Iterator<DownloadStatusChangeListener> it = s.hp((Map<Integer, Object>) w.this.f25666a).iterator();
                while (it.hasNext()) {
                    it.next().onInstalled(w.this.xs());
                }
            }
        });
    }

    @Override // com.byazt.t.eb
    public long j() {
        return this.jl;
    }

    public boolean jx() {
        DownloadInfo downloadInfo = this.f25673s;
        return (downloadInfo == null || downloadInfo.getStatus() == 0) ? false : true;
    }

    public boolean q() {
        SoftReference<IDownloadButtonClickListener> softReference = this.f25671n;
        if (softReference == null) {
            return false;
        }
        return q.hp(this.f25675v, softReference.get());
    }

    public boolean w() {
        return jl.q().optInt("quick_app_enable_switch", 0) == 0 && this.f25675v.getQuickAppModel() != null && !TextUtils.isEmpty(this.f25675v.getQuickAppModel().hp()) && com.byazt.t.jx.hp(this.f25673s) && com.byazt.y.zy.hp(getContext(), new Intent("android.intent.action.VIEW", Uri.parse(this.f25675v.getQuickAppModel().hp())));
    }

    private void a(final boolean z2) {
        DownloadModel downloadModel;
        DownloadController downloadController;
        DownloadController downloadController2;
        String str = hp;
        com.byazt.y.gu.hp(str, "pBCD", null);
        if (v()) {
            com.byazt.w.w wVarW = com.byazt.w.a.hp().w(this.f25669k);
            if (this.ec) {
                if (q()) {
                    if (j(false) && (downloadController2 = wVarW.f26872j) != null && downloadController2.isAutoDownloadOnCardShow()) {
                        hp(z2, true);
                        return;
                    }
                    return;
                }
                hp(z2, true);
                return;
            }
            if (this.f25675v.isAd() && (downloadController = wVarW.f26872j) != null && downloadController.enableShowComplianceDialog() && wVarW.f26873l != null && com.byazt.i.l.hp().hp(wVarW.f26873l) && com.byazt.i.l.hp().hp(wVarW)) {
                return;
            }
            hp(z2, true);
            return;
        }
        com.byazt.y.gu.hp(str, "pBCD continue download, status:" + this.f25673s.getStatus(), null);
        DownloadInfo downloadInfo = this.f25673s;
        if (downloadInfo != null && (downloadModel = this.f25675v) != null) {
            downloadInfo.setOnlyWifi(downloadModel.isNeedWifi());
        }
        final int status = this.f25673s.getStatus();
        final int id = this.f25673s.getId();
        final com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(this.f25673s);
        if (status != -2 && status != -1) {
            if (v.hp(status)) {
                if (this.f25675v.enablePause()) {
                    this.f25668j.hp(true);
                    com.byazt.n.s.hp().l(com.byazt.w.a.hp().j(this.f25669k));
                    if (com.byazt.y.w.hp((com.byazt.zv.hp) lVarHp).hp("cancel_pause_optimise_switch", 0) == 1) {
                        com.byazt.d.j.hp().hp(lVarHp, status, new com.byazt.d.s() { // from class: com.byazt.t.w.6
                            @Override // com.byazt.d.s
                            public void hp(com.byazt.zv.l lVar) throws JSONException {
                                if (w.this.f25673s == null && com.byazt.jb.hp.jx().hp("fix_handle_pause")) {
                                    w.this.f25673s = Downloader.getInstance(jl.getContext()).getDownloadInfo(id);
                                }
                                w.this.jx.hp(w.this.f25673s, z2);
                                if (w.this.f25673s != null && com.byazt.xq.a.l(jl.getContext()) && w.this.f25673s.isPauseReserveOnWifi()) {
                                    w.this.f25673s.stopPauseReserveOnWifi();
                                    com.byazt.r.hp.hp().hp("cancel_pause_reserve_wifi_cancel_on_wifi", lVarHp);
                                } else {
                                    gu.hp().hp(w.this.f25675v, w.this.f25673s);
                                    lVar.gu(System.currentTimeMillis());
                                    w wVar = w.this;
                                    wVar.hp(id, status, wVar.f25673s);
                                }
                            }
                        }, new com.byazt.m.jx() { // from class: com.byazt.t.w.5
                            @Override // com.byazt.m.jx
                            public void delete() {
                                w.this.hp(true);
                            }
                        });
                        return;
                    } else {
                        com.byazt.d.gu.hp().hp(lVarHp, status, new com.byazt.d.s() { // from class: com.byazt.t.w.7
                            @Override // com.byazt.d.s
                            public void hp(com.byazt.zv.l lVar) throws JSONException {
                                if (w.this.f25673s == null && com.byazt.jb.hp.jx().hp("fix_handle_pause")) {
                                    w.this.f25673s = Downloader.getInstance(jl.getContext()).getDownloadInfo(id);
                                }
                                w.this.jx.hp(w.this.f25673s, z2);
                                if (w.this.f25673s != null && com.byazt.xq.a.l(jl.getContext()) && w.this.f25673s.isPauseReserveOnWifi()) {
                                    w.this.f25673s.stopPauseReserveOnWifi();
                                    com.byazt.r.hp.hp().l("pause_reserve_wifi_cancel_on_wifi", lVarHp);
                                } else {
                                    gu.hp().hp(w.this.f25675v, w.this.f25673s);
                                    lVar.gu(System.currentTimeMillis());
                                    w wVar = w.this;
                                    wVar.hp(id, status, wVar.f25673s);
                                }
                            }
                        });
                        return;
                    }
                }
                return;
            }
            this.jx.hp(this.f25673s, z2);
            hp(id, status, this.f25673s);
            return;
        }
        this.jx.hp(this.f25673s, z2);
        if (lVarHp != null) {
            lVarHp.s(System.currentTimeMillis());
            lVarHp.q(this.f25673s.getCurBytes());
        }
        this.f25673s.setDownloadFromReserveWifi(false);
        this.f25668j.hp(new com.byazt.w.w(this.f25669k, this.f25675v, jl(), zy()));
        this.f25668j.hp(id, this.f25673s.getCurBytes(), this.f25673s.getTotalBytes(), new hp() { // from class: com.byazt.t.w.3
            @Override // com.byazt.t.w.hp
            public void hp() {
                if (w.this.f25668j.hp()) {
                    return;
                }
                w wVar = w.this;
                wVar.hp(id, status, wVar.f25673s);
            }
        });
        if (status == -2 && com.byazt.y.w.hp((com.byazt.zv.hp) lVarHp).hp("show_pause_continue_toast", 0) == 1) {
            com.byazt.l.s.hp().l().postDelayed(new Runnable() { // from class: com.byazt.t.w.4
                @Override // java.lang.Runnable
                public void run() {
                    jl.jx().hp(13, jl.getContext(), w.this.f25675v, "已恢复下载", null, 0);
                }
            }, 500L);
        }
    }

    private boolean jx(int i2) {
        if (!w()) {
            return false;
        }
        String strHp = this.f25675v.getQuickAppModel().hp();
        int i3 = i2 != 1 ? i2 != 2 ? -1 : 4 : 5;
        DownloadModel downloadModel = this.f25675v;
        if (downloadModel instanceof AdDownloadModel) {
            ((AdDownloadModel) downloadModel).setFunnelType(3);
        }
        boolean zJx = com.byazt.y.q.jx(jl.getContext(), strHp);
        if (zJx) {
            com.byazt.r.hp.hp().hp(this.f25669k, i2);
            Message messageObtain = Message.obtain();
            messageObtain.what = i3;
            messageObtain.obj = Long.valueOf(this.f25675v.getId());
            com.byazt.t.jx.hp().hp(this, i3, this.f25675v);
            return zJx;
        }
        com.byazt.r.hp.hp().hp(this.f25669k, false, 0);
        return zJx;
    }

    public boolean j(boolean z2) throws JSONException {
        SoftReference<IDownloadButtonClickListener> softReference = this.f25671n;
        if (softReference != null && softReference.get() != null) {
            try {
                if (!z2) {
                    this.f25671n.get().handleComplianceDialog(true);
                } else {
                    this.f25671n.get().handleMarketFailedComplianceDialog();
                }
                this.f25671n = null;
                return true;
            } catch (Exception unused) {
                com.byazt.u.jx.hp().l("mDownloadButtonClickListener has recycled");
                return false;
            }
        }
        com.byazt.u.jx.hp().l("mDownloadButtonClickListener has recycled");
        return false;
    }

    public void eb() {
        if (this.f25666a.size() == 0) {
            return;
        }
        Iterator<DownloadStatusChangeListener> it = s.hp(this.f25666a).iterator();
        while (it.hasNext()) {
            it.next().onIdle();
        }
        DownloadInfo downloadInfo = this.f25673s;
        if (downloadInfo != null) {
            downloadInfo.setStatus(-4);
        }
    }

    @Override // com.byazt.t.eb
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public w l(Context context) {
        if (context != null) {
            this.f25676w = new WeakReference<>(context);
        }
        jl.l(context);
        return this;
    }

    private void w(boolean z2) {
        if (com.byazt.y.w.l(this.f25675v).l("notification_opt_2") == 1 && this.f25673s != null) {
            com.byazt.li.l.hp().a(this.f25673s.getId());
        }
        a(z2);
    }

    @Override // com.byazt.t.eb
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public w l(int i2, DownloadStatusChangeListener downloadStatusChangeListener) {
        if (downloadStatusChangeListener != null) {
            if (jl.q().optInt("back_use_softref_listener") == 1) {
                this.f25666a.put(Integer.valueOf(i2), downloadStatusChangeListener);
                return this;
            }
            if (jl.q().optInt("use_weakref_listener") == 1) {
                this.f25666a.put(Integer.valueOf(i2), new WeakReference(downloadStatusChangeListener));
                return this;
            }
            this.f25666a.put(Integer.valueOf(i2), new SoftReference(downloadStatusChangeListener));
        }
        return this;
    }

    @Override // com.byazt.t.eb
    public boolean l() {
        return this.gu;
    }

    @Override // com.byazt.t.eb
    public void l(final int i2) throws JSONException {
        if (i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("error actionType");
        }
        this.jx.hp(this.f25669k);
        if (!com.byazt.w.a.hp().w(this.f25669k).di()) {
            com.byazt.u.jx.hp().hp("handleDownload ModelBox !isStrictValid");
        }
        if (this.jx.hp(i2, this.f25675v)) {
            com.byazt.i.a.hp().hp(this.jx.hp, new com.byazt.i.s() { // from class: com.byazt.t.w.1
                @Override // com.byazt.i.s
                public void hp(String str) throws JSONException {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.putOpt("download_miui_new_market", 1);
                        jSONObject.putOpt("download_miui_market_deeplink", str);
                        if (com.byazt.y.s.hp(w.this.getContext(), w.this.jx.hp, str, jSONObject, true, i2)) {
                            jSONObject.putOpt("download_miui_jump_market_success", 1);
                            com.byazt.i.a.hp().hp(0, w.this.jx.hp, jSONObject);
                            return;
                        }
                        jSONObject.putOpt("download_miui_jump_market_success", 0);
                        com.byazt.i.a.hp().hp(1, w.this.jx.hp, jSONObject);
                        int i3 = i2;
                        if (i3 == 1) {
                            com.byazt.nu.hp.hp(w.hp, "miui new rollback fail: handleDownload id:" + w.this.f25669k + ",tryPerformButtonClick:", null);
                            w.this.jx(true);
                            return;
                        }
                        if (i3 != 2) {
                            return;
                        }
                        com.byazt.nu.hp.hp(w.hp, "miui new rollback fail: handleDownload id:" + w.this.f25669k + ",tryPerformButtonClick:", null);
                        w.this.l(true);
                    } catch (Exception e2) {
                        com.byazt.u.jx.hp().hp(e2, "generate miui new market param error");
                    }
                }

                @Override // com.byazt.i.s
                public void hp() {
                    int i3 = i2;
                    if (i3 == 1) {
                        com.byazt.nu.hp.hp(w.hp, "miui new get miui deeplink fail: handleDownload id:" + w.this.f25669k + ",tryPerformButtonClick:", null);
                        w.this.jx(true);
                        return;
                    }
                    if (i3 != 2) {
                        return;
                    }
                    com.byazt.nu.hp.hp(w.hp, "miui new get miui deeplink fail: handleDownload id:" + w.this.f25669k + ",tryPerformButtonClick:", null);
                    w.this.l(true);
                }
            });
            return;
        }
        if (this.jx.hp(getContext(), i2, this.ec)) {
            return;
        }
        boolean zJx = jx(i2);
        if (i2 == 1) {
            if (zJx) {
                return;
            }
            com.byazt.y.gu.hp(hp, "handleDownload id:" + this.f25669k + ",pIC:", null);
            jx(true);
            return;
        }
        if (i2 == 2 && !zJx) {
            com.byazt.y.gu.hp(hp, "handleDownload id:" + this.f25669k + ",pBC:", null);
            l(true);
        }
    }

    @Override // com.byazt.t.eb
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public w l(DownloadModel downloadModel) throws JSONException {
        if (downloadModel != null) {
            if (downloadModel.isAd()) {
                if (downloadModel.getId() <= 0 || TextUtils.isEmpty(downloadModel.getLogExtra())) {
                    com.byazt.u.jx.hp().hp("setDownloadModel ad error");
                }
            } else if (downloadModel.getId() == 0 && (downloadModel instanceof AdDownloadModel)) {
                com.byazt.u.jx.hp().hp(false, "setDownloadModel id=0");
                if (com.byazt.jb.hp.jx().hp("fix_model_id")) {
                    ((AdDownloadModel) downloadModel).setId(downloadModel.getDownloadUrl().hashCode());
                }
            }
            com.byazt.w.a.hp().hp(downloadModel);
            this.f25669k = downloadModel.getId();
            this.f25675v = downloadModel;
            if (q.hp(downloadModel)) {
                ((AdDownloadModel) downloadModel).setExtraValue(3L);
                com.byazt.zv.l lVarJ = com.byazt.w.a.hp().j(this.f25669k);
                if (lVarJ != null && lVarJ.jl() != 3) {
                    lVarJ.w(3L);
                    com.byazt.w.q.hp().hp(lVarJ);
                }
            }
        }
        return this;
    }

    @com.byazt.kj.hp(hp = {0, 1, 311, 865})
    public class jx extends com.byazt.shx.l<String, Void, DownloadInfo> {
        private jx() {
        }

        @Override // android.os.AsyncTask
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public DownloadInfo doInBackground(String... strArr) {
            DownloadInfo downloadInfo = null;
            if (strArr != null && (strArr.length <= 0 || !TextUtils.isEmpty(strArr[0]))) {
                String str = (strArr.length < 3 || TextUtils.isEmpty(strArr[2])) ? "" : strArr[2];
                String str2 = strArr[0];
                if (w.this.f25675v != null && !TextUtils.isEmpty(w.this.f25675v.getFilePath())) {
                    downloadInfo = !TextUtils.isEmpty(str) ? Downloader.getInstance(jl.getContext()).getDownloadInfo(Downloader.getInstance(jl.getContext()).getDownloadId(str, w.this.f25675v.getFilePath())) : Downloader.getInstance(jl.getContext()).getDownloadInfo(str2, w.this.f25675v.getFilePath());
                }
                if (downloadInfo == null) {
                    return !TextUtils.isEmpty(str) ? com.byazt.ni.j.gu().hp(jl.getContext(), str) : com.byazt.ni.j.gu().hp(jl.getContext(), str2);
                }
            }
            return downloadInfo;
        }

        @Override // android.os.AsyncTask
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(DownloadInfo downloadInfo) {
            super.onPostExecute(downloadInfo);
            if (isCancelled() || w.this.f25675v == null) {
                return;
            }
            try {
                com.byazt.w.jx jxVarHp = com.byazt.y.zy.hp(w.this.f25675v.getPackageName(), w.this.f25675v.getVersionCode(), w.this.f25675v.getVersionName());
                com.byazt.w.s.hp().hp(w.this.f25675v.getVersionCode(), jxVarHp.l(), com.byazt.w.a.hp().hp(downloadInfo));
                boolean zHp = jxVarHp.hp();
                if (downloadInfo != null && downloadInfo.getId() != 0 && (zHp || !Downloader.getInstance(jl.getContext()).isDownloadSuccessAndFileNotExist(downloadInfo))) {
                    Downloader.getInstance(jl.getContext()).removeTaskMainListener(downloadInfo.getId());
                    if (w.this.f25673s == null || w.this.f25673s.getStatus() != -4) {
                        w.this.f25673s = downloadInfo;
                        if (w.this.sz) {
                            Downloader.getInstance(jl.getContext()).setMainThreadListener(w.this.f25673s.getId(), w.this.f25667e, false);
                        } else {
                            Downloader.getInstance(jl.getContext()).setMainThreadListener(w.this.f25673s.getId(), w.this.f25667e);
                        }
                    } else {
                        w.this.f25673s = null;
                    }
                    w.this.jx.hp(w.this.f25673s, w.this.xs(), s.hp((Map<Integer, Object>) w.this.f25666a), zHp);
                } else {
                    if (downloadInfo != null && Downloader.getInstance(jl.getContext()).isDownloadSuccessAndFileNotExist(downloadInfo)) {
                        com.byazt.li.l.hp().a(downloadInfo.getId());
                        w.this.f25673s = null;
                    }
                    if (w.this.f25673s != null) {
                        Downloader.getInstance(jl.getContext()).removeTaskMainListener(w.this.f25673s.getId());
                        if (w.this.sz) {
                            Downloader.getInstance(w.this.getContext()).setMainThreadListener(w.this.f25673s.getId(), w.this.f25667e, false);
                        } else {
                            Downloader.getInstance(w.this.getContext()).setMainThreadListener(w.this.f25673s.getId(), w.this.f25667e);
                        }
                    }
                    if (!zHp) {
                        Iterator<DownloadStatusChangeListener> it = s.hp((Map<Integer, Object>) w.this.f25666a).iterator();
                        while (it.hasNext()) {
                            it.next().onIdle();
                        }
                        w.this.f25673s = null;
                    } else {
                        w wVar = w.this;
                        wVar.f25673s = new DownloadInfo.hp(wVar.f25675v.getDownloadUrl()).hp();
                        w.this.f25673s.setStatus(-3);
                        w.this.jx.hp(w.this.f25673s, w.this.xs(), s.hp((Map<Integer, Object>) w.this.f25666a), zHp);
                    }
                }
                w.this.jx.jx(w.this.f25673s);
            } catch (Exception unused) {
            }
        }
    }

    public void jx(boolean z2) {
        if (z2) {
            com.byazt.r.hp.hp().hp(this.f25669k, 1);
        }
        k();
    }

    @Override // com.byazt.t.eb
    public void s() {
        com.byazt.w.a.hp().a(this.f25669k);
    }

    public void l(boolean z2) {
        w(z2);
    }

    @Override // com.byazt.t.eb
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public w l(DownloadController downloadController) {
        JSONObject extra;
        this.xs = downloadController;
        if (com.byazt.y.w.l(this.f25675v).l("force_auto_open") == 1) {
            zy().setLinkMode(1);
        }
        if (com.byazt.jb.hp.jx().hp("fix_show_dialog") && (extra = this.f25675v.getExtra()) != null && extra.optInt("subprocess") > 0) {
            zy().setEnableNewActivity(false);
        }
        com.byazt.w.a.hp().hp(this.f25669k, zy());
        return this;
    }

    @Override // com.byazt.t.eb
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public w l(DownloadEventConfig downloadEventConfig) {
        this.f25674u = downloadEventConfig;
        this.ec = jl().getDownloadScene() == 0;
        com.byazt.w.a.hp().hp(this.f25669k, jl());
        return this;
    }

    @Override // com.byazt.t.eb
    public eb hp(OnItemClickListener onItemClickListener) {
        if (onItemClickListener == null) {
            this.vv = null;
            return this;
        }
        this.vv = new SoftReference<>(onItemClickListener);
        return this;
    }

    @Override // com.byazt.t.eb
    public void hp() {
        this.gu = true;
        com.byazt.w.a.hp().hp(this.f25669k, jl());
        com.byazt.w.a.hp().hp(this.f25669k, zy());
        this.jx.hp(this.f25669k);
        u();
        if (jl.q().optInt("enable_empty_listener", 1) == 1 && this.f25666a.get(Integer.MIN_VALUE) == null) {
            l(Integer.MIN_VALUE, new com.byazt.b.hp());
        }
    }

    @Override // com.byazt.t.eb
    public boolean hp(int i2) {
        if (i2 == 0) {
            this.f25666a.clear();
        } else {
            this.f25666a.remove(Integer.valueOf(i2));
        }
        if (this.f25666a.isEmpty()) {
            this.gu = false;
            this.jl = System.currentTimeMillis();
            if (this.f25673s != null) {
                Downloader.getInstance(jl.getContext()).removeTaskMainListener(this.f25673s.getId());
            }
            jx jxVar = this.f25672q;
            if (jxVar != null && jxVar.getStatus() != AsyncTask.Status.FINISHED) {
                this.f25672q.cancel(true);
            }
            this.jx.hp(this.f25673s);
            String str = hp;
            StringBuilder sb = new StringBuilder("onUnbind removeCallbacksAndMessages, downloadUrl:");
            DownloadInfo downloadInfo = this.f25673s;
            sb.append(downloadInfo == null ? "" : downloadInfo.getUrl());
            com.byazt.y.gu.hp(str, sb.toString(), null);
            this.f25670l.removeCallbacksAndMessages(null);
            this.eb = null;
            this.f25673s = null;
            return true;
        }
        if (this.f25666a.size() == 1 && this.f25666a.containsKey(Integer.MIN_VALUE)) {
            this.jx.l(this.f25673s);
        }
        return false;
    }

    @Override // com.byazt.t.eb
    public void hp(boolean z2) {
        if (this.f25673s != null) {
            if (z2) {
                com.byazt.f.w wVarJx = com.byazt.ni.j.gu().jx();
                if (wVarJx != null) {
                    wVarJx.hp(this.f25673s);
                }
                Downloader.getInstance(com.byazt.yk.jx.mp()).cancel(this.f25673s.getId(), true);
                return;
            }
            Intent intent = new Intent(jl.getContext(), (Class<?>) DownloadHandlerService.class);
            intent.setAction("android.ss.intent.action.DOWNLOAD_DELETE");
            intent.putExtra("extra_click_download_ids", this.f25673s.getId());
            jl.getContext().startService(intent);
        }
    }

    @Override // com.byazt.t.eb
    public eb hp(long j2) throws JSONException {
        if (j2 != 0) {
            DownloadModel downloadModelHp = com.byazt.w.a.hp().hp(j2);
            if (downloadModelHp != null) {
                this.f25675v = downloadModelHp;
                this.f25669k = j2;
                this.jx.hp(j2);
            }
            return this;
        }
        com.byazt.u.jx.hp().hp(false, "setModelId");
        return this;
    }

    @Override // com.byazt.y.k.hp
    public void hp(Message message) {
        if (message != null && this.gu && message.what == 3) {
            this.f25673s = (DownloadInfo) message.obj;
            this.jx.hp(message, xs(), this.f25666a);
        }
    }

    public void hp(boolean z2, final boolean z3) {
        if (z2) {
            com.byazt.r.hp.hp().hp(this.f25669k, 2);
        }
        if (!com.byazt.y.zy.hp()) {
            if (!com.byazt.y.e.l("android.permission.WRITE_EXTERNAL_STORAGE") && !zy().enableNewActivity()) {
                this.f25675v.setFilePath(this.jx.l());
            }
        } else if (!com.byazt.y.e.l("android.permission.READ_MEDIA_IMAGES") && !com.byazt.y.e.l("android.permission.READ_MEDIA_AUDIO") && !com.byazt.y.e.l("android.permission.READ_MEDIA_VIDEO") && !zy().enableNewActivity()) {
            this.f25675v.setFilePath(this.jx.l());
        }
        if (com.byazt.y.w.jx(this.f25675v) == 0) {
            com.byazt.y.gu.hp(hp, "pBCD not start", null);
            this.jx.hp(new n() { // from class: com.byazt.t.w.8
                @Override // com.byazt.b.n
                public void hp() {
                    com.byazt.y.gu.hp(w.hp, "pBCD start download", null);
                    w.this.eb(z3);
                }

                @Override // com.byazt.b.n
                public void hp(String str) {
                    com.byazt.y.gu.hp(w.hp, "pBCD onDenied", null);
                }
            });
        } else {
            eb(z3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, int i3, @NonNull DownloadInfo downloadInfo) {
        if (com.byazt.jb.hp.jx().hp("fix_click_start")) {
            if (i3 != -3 && !com.byazt.yk.j.hp().w(i2)) {
                hp(false, false);
                return;
            } else {
                com.byazt.ni.j.gu().hp(jl.getContext(), i2, i3);
                return;
            }
        }
        com.byazt.ni.j.gu().hp(jl.getContext(), i2, i3);
    }

    private void hp(DownloadInfo downloadInfo) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 3;
        messageObtain.obj = downloadInfo;
        this.f25670l.sendMessage(messageObtain);
    }

    @Override // com.byazt.t.eb
    public eb hp(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.zy = str;
        }
        return this;
    }

    @Override // com.byazt.t.eb
    public eb hp(IDownloadButtonClickListener iDownloadButtonClickListener) {
        if (iDownloadButtonClickListener == null) {
            this.f25671n = null;
            return this;
        }
        this.f25671n = new SoftReference<>(iDownloadButtonClickListener);
        return this;
    }
}
