package com.byazt.l;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.b.IDownloadButtonClickListener;
import com.byazt.dg.AdDownloadController;
import com.byazt.dg.AdDownloadEventConfig;
import com.byazt.dg.AdDownloadModel;
import com.byazt.t.jl;
import com.byazt.u.l;
import com.byazt.v.l;
import com.byazt.y.gu;
import com.byazt.y.zy;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import com.byazt.yy.DownloadStatusChangeListener;
import com.sigmob.sdk.base.mta.PointCategory;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 34, 34})
/* loaded from: classes3.dex */
public class l implements com.byazt.me.l {
    public static String hp = "l";

    /* renamed from: l, reason: collision with root package name */
    public static volatile l f22355l;
    public e jx = e.hp(jl.getContext());

    private l() {
    }

    public static DownloadEventConfig jx() {
        return new AdDownloadEventConfig.Builder().setClickButtonTag("landing_h5_download_ad_button").setClickItemTag("landing_h5_download_ad_button").setClickStartLabel("click_start_detail").setClickPauseLabel("click_pause_detail").setClickContinueLabel("click_continue_detail").setClickInstallLabel("click_install_detail").setClickOpenLabel("click_open_detail").setStorageDenyLabel("storage_deny_detail").setDownloadScene(1).setIsEnableClickEvent(false).setIsEnableNoChargeClickEvent(true).setIsEnableV3Event(false).build();
    }

    public Dialog l(Context context, String str, boolean z2, final DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i2, boolean z3, IDownloadButtonClickListener iDownloadButtonClickListener) {
        if (hp(downloadModel.getId())) {
            if (z3) {
                hp(downloadModel.getId(), downloadEventConfig, downloadController);
            } else {
                l(downloadModel.getId());
            }
            return null;
        }
        if (context == null || TextUtils.isEmpty(downloadModel.getDownloadUrl())) {
            return null;
        }
        this.jx.hp(context, i2, downloadStatusChangeListener, downloadModel);
        final DownloadEventConfig downloadEventConfig2 = (DownloadEventConfig) zy.hp(downloadEventConfig, jx());
        final DownloadController downloadController2 = (DownloadController) zy.hp(downloadController, l());
        downloadEventConfig2.setDownloadScene(1);
        if ((downloadController2.enableShowComplianceDialog() && com.byazt.i.l.hp().hp(downloadModel)) ? true : (jl.q().optInt("disable_lp_dialog", 0) == 1) | z2) {
            this.jx.hp(downloadModel.getDownloadUrl(), downloadModel.getId(), 2, downloadEventConfig2, downloadController2, iDownloadButtonClickListener);
            return null;
        }
        gu.hp(hp, "tryStartDownload show dialog appName:" + downloadModel.getDownloadUrl(), null);
        Dialog dialogL = jl.jx().l(new l.hp(context).hp(downloadModel.getName()).l("确认要下载此应用吗？").jx("确认").j("取消").hp(new l.InterfaceC0391l() { // from class: com.byazt.l.l.2
            @Override // com.byazt.v.l.InterfaceC0391l
            public void hp(DialogInterface dialogInterface) {
                l.this.jx.hp(downloadModel.getDownloadUrl(), downloadModel.getId(), 2, downloadEventConfig2, downloadController2);
                com.byazt.r.hp.hp().hp("landing_download_dialog_confirm", downloadModel, downloadEventConfig2, downloadController2);
                dialogInterface.dismiss();
            }

            @Override // com.byazt.v.l.InterfaceC0391l
            public void jx(DialogInterface dialogInterface) {
                com.byazt.r.hp.hp().hp("landing_download_dialog_cancel", downloadModel, downloadEventConfig2, downloadController2);
            }

            @Override // com.byazt.v.l.InterfaceC0391l
            public void l(DialogInterface dialogInterface) {
                com.byazt.r.hp.hp().hp("landing_download_dialog_cancel", downloadModel, downloadEventConfig2, downloadController2);
                dialogInterface.dismiss();
            }
        }).hp(0).hp());
        com.byazt.r.hp.hp().hp("landing_download_dialog_show", downloadModel, downloadEventConfig2, downloadController2);
        return dialogL;
    }

    public static l hp() {
        if (f22355l == null) {
            synchronized (l.class) {
                try {
                    if (f22355l == null) {
                        f22355l = new l();
                    }
                } finally {
                }
            }
        }
        return f22355l;
    }

    @Override // com.byazt.me.l
    public Dialog hp(Context context, String str, boolean z2, @NonNull DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i2) {
        return hp(context, str, z2, downloadModel, downloadEventConfig, downloadController, downloadStatusChangeListener, i2, false);
    }

    @Override // com.byazt.me.l
    public Dialog hp(Context context, String str, boolean z2, @NonNull DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i2, IDownloadButtonClickListener iDownloadButtonClickListener) {
        return hp(context, str, z2, downloadModel, downloadEventConfig, downloadController, downloadStatusChangeListener, i2, false, iDownloadButtonClickListener);
    }

    public Dialog hp(Context context, String str, boolean z2, @NonNull DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i2, boolean z3) {
        return hp(context, str, z2, downloadModel, downloadEventConfig, downloadController, downloadStatusChangeListener, i2, z3, null);
    }

    public Dialog hp(final Context context, final String str, final boolean z2, @NonNull final DownloadModel downloadModel, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController, final DownloadStatusChangeListener downloadStatusChangeListener, final int i2, final boolean z3, final IDownloadButtonClickListener iDownloadButtonClickListener) {
        return (Dialog) com.byazt.u.l.hp(new l.hp<Dialog>() { // from class: com.byazt.l.l.1
            @Override // com.byazt.u.l.hp
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Dialog l() {
                return l.this.l(context, str, z2, downloadModel, downloadEventConfig, downloadController, downloadStatusChangeListener, i2, z3, iDownloadButtonClickListener);
            }
        });
    }

    @Override // com.byazt.me.l
    public boolean hp(Context context, long j2, String str, DownloadStatusChangeListener downloadStatusChangeListener, int i2) {
        com.byazt.zv.l lVarJ = com.byazt.w.a.hp().j(j2);
        if (lVarJ != null) {
            this.jx.hp(context, i2, downloadStatusChangeListener, lVarJ.ru());
            return true;
        }
        DownloadModel downloadModelHp = com.byazt.w.a.hp().hp(j2);
        if (downloadModelHp == null) {
            return false;
        }
        this.jx.hp(context, i2, downloadStatusChangeListener, downloadModelHp);
        return true;
    }

    @Override // com.byazt.me.l
    public boolean hp(long j2, int i2) {
        DownloadModel downloadModelHp = com.byazt.w.a.hp().hp(j2);
        if (downloadModelHp == null) {
            return false;
        }
        this.jx.hp(downloadModelHp.getDownloadUrl(), i2);
        return true;
    }

    public void hp(long j2, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        DownloadModel downloadModelHp = com.byazt.w.a.hp().hp(j2);
        com.byazt.zv.l lVarJ = com.byazt.w.a.hp().j(j2);
        if (downloadModelHp == null && lVarJ != null) {
            downloadModelHp = lVarJ.ru();
        }
        if (downloadModelHp == null) {
            return;
        }
        if (downloadEventConfig != null && downloadController != null && !(downloadEventConfig instanceof com.byazt.yy.j) && !(downloadController instanceof com.byazt.yy.jx)) {
            downloadEventConfig.setDownloadScene(1);
            this.jx.hp(downloadModelHp.getDownloadUrl(), j2, 2, downloadEventConfig, downloadController);
        } else {
            l(j2);
        }
    }

    public void l(long j2) {
        DownloadModel downloadModelHp = com.byazt.w.a.hp().hp(j2);
        com.byazt.zv.l lVarJ = com.byazt.w.a.hp().j(j2);
        if (downloadModelHp == null && lVarJ != null) {
            downloadModelHp = lVarJ.ru();
        }
        if (downloadModelHp == null) {
            return;
        }
        DownloadEventConfig downloadEventConfigL = com.byazt.w.a.hp().l(j2);
        DownloadController downloadControllerJx = com.byazt.w.a.hp().jx(j2);
        if (downloadEventConfigL instanceof com.byazt.yy.j) {
            downloadEventConfigL = null;
        }
        if (downloadControllerJx instanceof com.byazt.yy.jx) {
            downloadControllerJx = null;
        }
        if (lVarJ == null) {
            if (downloadEventConfigL == null) {
                downloadEventConfigL = jx();
            }
            if (downloadControllerJx == null) {
                downloadControllerJx = l();
            }
        } else {
            if (downloadEventConfigL == null) {
                downloadEventConfigL = new AdDownloadEventConfig.Builder().setClickButtonTag(lVarJ.e()).setRefer(lVarJ.q()).setIsEnableV3Event(lVarJ.zy()).setIsEnableClickEvent(false).setClickStartLabel("click_start_detail").setClickPauseLabel("click_pause_detail").setClickContinueLabel("click_continue_detail").setClickInstallLabel("click_install_detail").setStorageDenyLabel("storage_deny_detail").build();
            }
            if (downloadControllerJx == null) {
                downloadControllerJx = lVarJ.yj();
            }
        }
        DownloadEventConfig downloadEventConfig = downloadEventConfigL;
        DownloadController downloadController = downloadControllerJx;
        downloadEventConfig.setDownloadScene(1);
        this.jx.hp(downloadModelHp.getDownloadUrl(), j2, 2, downloadEventConfig, downloadController);
    }

    @Override // com.byazt.me.l
    public boolean hp(long j2) {
        return (com.byazt.w.a.hp().hp(j2) == null && com.byazt.w.a.hp().j(j2) == null) ? false : true;
    }

    @Override // com.byazt.me.l
    public boolean hp(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        return hp(context, uri, downloadModel, downloadEventConfig, downloadController, null);
    }

    @Override // com.byazt.me.l
    public boolean hp(final Context context, final Uri uri, final DownloadModel downloadModel, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController, final IDownloadButtonClickListener iDownloadButtonClickListener) {
        return ((Boolean) com.byazt.u.l.hp(new l.hp<Boolean>() { // from class: com.byazt.l.l.3
            @Override // com.byazt.u.l.hp
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean l() {
                return Boolean.valueOf(l.this.l(context, uri, downloadModel, downloadEventConfig, downloadController, iDownloadButtonClickListener));
            }
        })).booleanValue();
    }

    public static DownloadController hp(boolean z2) {
        AdDownloadController.Builder shouldUseNewWebView = new AdDownloadController.Builder().setLinkMode(0).setIsEnableBackDialog(true).setIsEnableMultipleDownload(false).setShouldUseNewWebView(false);
        if (z2) {
            shouldUseNewWebView.setDownloadMode(2);
        } else {
            shouldUseNewWebView.setDownloadMode(0);
        }
        return shouldUseNewWebView.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, IDownloadButtonClickListener iDownloadButtonClickListener) throws JSONException {
        DownloadController downloadControllerL = downloadController;
        if (!com.byazt.pp.hp.hp(uri) || jl.q().optInt("disable_market") == 1) {
            return false;
        }
        if (context == null) {
            context = jl.getContext();
        }
        String strL = com.byazt.pp.hp.l(uri);
        if (downloadModel == null) {
            return com.byazt.y.q.hp(context, strL).getType() == 5;
        }
        if (!TextUtils.isEmpty(strL) && (downloadModel instanceof AdDownloadModel)) {
            ((AdDownloadModel) downloadModel).setPackageName(strL);
        }
        if (downloadControllerL != null) {
            downloadControllerL.setDownloadMode(2);
        } else if ((downloadModel instanceof AdDownloadModel) && TextUtils.isEmpty(downloadModel.getDownloadUrl())) {
            ((AdDownloadModel) downloadModel).setDownloadUrl(uri.toString());
            downloadControllerL = hp(true);
        } else if (downloadModel.getDownloadUrl().startsWith("market")) {
            downloadControllerL = hp(true);
        } else {
            downloadControllerL = l();
        }
        com.byazt.w.w wVar = new com.byazt.w.w(downloadModel.getId(), downloadModel, (DownloadEventConfig) zy.hp(downloadEventConfig, jx()), downloadControllerL);
        com.byazt.w.a.hp().hp(wVar.f26873l);
        com.byazt.w.a.hp().hp(wVar.hp, wVar.jx);
        com.byazt.w.a.hp().hp(wVar.hp, wVar.f26872j);
        if (zy.hp(downloadModel) && com.byazt.jb.hp.jx().l("app_link_opt") == 1 && com.byazt.j.hp.hp(wVar)) {
            return true;
        }
        JSONObject jSONObject = new JSONObject();
        zy.hp(jSONObject, "market_url", uri.toString());
        zy.hp(jSONObject, "download_scene", (Object) 1);
        com.byazt.yy.l marketStatusChangeListener = wVar.f26872j.getMarketStatusChangeListener();
        com.byazt.r.hp.hp().l("market_click_open", jSONObject, wVar);
        com.byazt.w.eb ebVarHp = com.byazt.y.q.hp(context, wVar, strL);
        String strHp = zy.hp(ebVarHp.l(), PointCategory.OPEN_MARKET);
        if (ebVarHp.getType() == 5) {
            com.byazt.j.hp.hp(strHp, jSONObject, wVar, true);
            return true;
        }
        if (ebVarHp.getType() != 6) {
            return true;
        }
        zy.hp(jSONObject, "error_code", Integer.valueOf(ebVarHp.hp()));
        if (marketStatusChangeListener != null) {
            marketStatusChangeListener.l();
        }
        com.byazt.r.hp.hp().l("market_open_failed", jSONObject, wVar);
        if (com.byazt.t.q.hp(downloadModel, iDownloadButtonClickListener)) {
            iDownloadButtonClickListener.handleMarketFailedComplianceDialog();
        }
        return false;
    }

    public static DownloadController l() {
        return hp(false);
    }
}
