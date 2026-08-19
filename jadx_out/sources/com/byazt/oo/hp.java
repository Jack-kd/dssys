package com.byazt.oo;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.fn.IDownloadListener;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import com.byazt.io.BaseException;
import com.byazt.jz.sz;
import com.byazt.oy.EnqueueType;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1356, 28})
/* loaded from: classes3.dex */
public class hp implements IDownloadListener {

    /* renamed from: a, reason: collision with root package name */
    public boolean f24136a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public InterfaceC0330hp f24137j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f24138l;

    /* renamed from: w, reason: collision with root package name */
    public String f24140w;
    public int eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public boolean f24139s = true;

    /* renamed from: com.byazt.oo.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0330hp {
        void hp(DownloadInfo downloadInfo);

        void hp(DownloadInfo downloadInfo, int i2);

        void hp(DownloadInfo downloadInfo, BaseException baseException);

        void hp(DownloadInfo downloadInfo, BaseException baseException, int i2);

        void l(DownloadInfo downloadInfo);

        void l(DownloadInfo downloadInfo, int i2);
    }

    public hp(String str, String str2, String str3, String str4, boolean z2, InterfaceC0330hp interfaceC0330hp) {
        this.hp = str2;
        this.f24138l = str3;
        this.jx = str4;
        this.f24137j = interfaceC0330hp;
        this.f24140w = str;
        this.f24136a = z2;
    }

    public void hp(Context context) {
        DownloadTask downloadTaskMonitorScene = com.byazt.yk.l.with(context).url(this.hp).name(this.jx).onlyWifi(this.f24136a).savePath(new File(this.f24138l).getAbsolutePath()).downloadSetting(hp()).enqueueType(EnqueueType.ENQUEUE_TAIL).needIndependentProcess(false).subThreadListener(this).monitorScene("plugin_downloader");
        com.byazt.jb.hp.hp(com.byazt.yk.jx.hp(this.hp, new File(this.f24138l).getAbsolutePath()), hp());
        downloadTaskMonitorScene.asyncDownload(null);
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onCanceled(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
        if (!this.f24139s) {
            InterfaceC0330hp interfaceC0330hp = this.f24137j;
            if (interfaceC0330hp != null) {
                interfaceC0330hp.hp(downloadInfo, baseException, this.eb);
                return;
            }
            return;
        }
        this.f24139s = false;
        InterfaceC0330hp interfaceC0330hp2 = this.f24137j;
        if (interfaceC0330hp2 != null) {
            interfaceC0330hp2.hp(downloadInfo, baseException);
        }
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onFirstStart(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onFirstSuccess(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onPause(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onPrepare(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onProgress(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onRetry(DownloadInfo downloadInfo, BaseException baseException) {
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onRetryDelay(DownloadInfo downloadInfo, BaseException baseException) {
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onStart(DownloadInfo downloadInfo) {
        int i2 = this.eb + 1;
        this.eb = i2;
        InterfaceC0330hp interfaceC0330hp = this.f24137j;
        if (interfaceC0330hp != null) {
            if (this.f24139s) {
                interfaceC0330hp.hp(downloadInfo);
            } else {
                interfaceC0330hp.l(downloadInfo, i2);
            }
        }
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onSuccessed(DownloadInfo downloadInfo) {
        if (!this.f24139s) {
            InterfaceC0330hp interfaceC0330hp = this.f24137j;
            if (interfaceC0330hp != null) {
                interfaceC0330hp.hp(downloadInfo, this.eb);
                return;
            }
            return;
        }
        this.f24139s = false;
        InterfaceC0330hp interfaceC0330hp2 = this.f24137j;
        if (interfaceC0330hp2 != null) {
            interfaceC0330hp2.l(downloadInfo);
        }
    }

    private JSONObject hp() {
        JSONObject jSONObject;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectPk = sz.l().pk();
        if (jSONObjectPk == null) {
            return null;
        }
        String strOptString = jSONObjectPk.optString("config");
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        try {
            jSONObject = new JSONObject(strOptString);
            jSONObjectOptJSONObject = jSONObject.optJSONObject(this.f24140w);
        } catch (JSONException unused) {
        }
        if (jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject;
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("default");
        if (jSONObjectOptJSONObject2 != null) {
            return jSONObjectOptJSONObject2;
        }
        return null;
    }
}
