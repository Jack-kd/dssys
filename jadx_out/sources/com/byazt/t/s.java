package com.byazt.t;

import android.content.Context;
import android.os.Environment;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.anythink.core.common.f.n;
import com.byazt.b.n;
import com.byazt.dg.AdDownloadModel;
import com.byazt.fn.IDownloadListener;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.v.DownloadShortInfo;
import com.byazt.y.e;
import com.byazt.y.k;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.Downloader;
import com.byazt.yy.DownloadModel;
import com.byazt.yy.DownloadStatusChangeListener;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.g;
import java.io.File;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 311, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s implements k.hp {
    public com.byazt.w.w hp;

    /* renamed from: j, reason: collision with root package name */
    public w f25657j;
    public boolean jx = false;

    /* renamed from: l, reason: collision with root package name */
    public long f25658l;

    /* renamed from: w, reason: collision with root package name */
    public l f25659w;

    @com.byazt.kj.hp(hp = {0, 1, 311, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public static class hp extends com.byazt.fn.hp {
        public com.byazt.y.k hp;

        public hp(com.byazt.y.k kVar) {
            this.hp = kVar;
        }

        @Override // com.byazt.fn.hp, com.byazt.fn.ec
        public void hp(DownloadInfo downloadInfo) {
            hp(downloadInfo, 11);
        }

        @Override // com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
        public void onCanceled(DownloadInfo downloadInfo) {
            hp(downloadInfo, -4);
        }

        @Override // com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
        public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
            hp(downloadInfo, -1);
        }

        @Override // com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
        public void onPause(DownloadInfo downloadInfo) {
            hp(downloadInfo, -2);
        }

        @Override // com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
        public void onPrepare(DownloadInfo downloadInfo) {
            hp(downloadInfo, 1);
        }

        @Override // com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
        public void onProgress(DownloadInfo downloadInfo) {
            hp(downloadInfo, 4);
        }

        @Override // com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
        public void onStart(DownloadInfo downloadInfo) {
            hp(downloadInfo, 2);
        }

        @Override // com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
        public void onSuccessed(DownloadInfo downloadInfo) {
            hp(downloadInfo, -3);
        }

        private void hp(DownloadInfo downloadInfo, int i2) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 3;
            messageObtain.obj = downloadInfo;
            messageObtain.arg1 = i2;
            this.hp.sendMessage(messageObtain);
        }
    }

    public interface l {
        void hp(DownloadInfo downloadInfo);
    }

    public s(w wVar) {
        this.f25657j = wVar;
    }

    private boolean a() {
        return com.byazt.y.zy.hp(this.hp.f26873l) && q.hp(this.hp.f26872j.getLinkMode());
    }

    private boolean j() {
        DownloadModel downloadModel = this.hp.f26873l;
        return (downloadModel == null || TextUtils.isEmpty(downloadModel.getPackageName()) || TextUtils.isEmpty(this.hp.f26873l.getDownloadUrl())) ? false : true;
    }

    private boolean jx() {
        return j() && w();
    }

    private boolean w() {
        return this.hp.f26872j.isAddToDownloadManage();
    }

    @Override // com.byazt.y.k.hp
    public void hp(Message message) {
    }

    public void l(@Nullable DownloadInfo downloadInfo) {
        l lVar = this.f25659w;
        if (lVar != null) {
            lVar.hp(downloadInfo);
            this.f25659w = null;
        }
    }

    private boolean a(DownloadInfo downloadInfo) {
        return downloadInfo != null && downloadInfo.getStatus() == -3 && com.byazt.xq.a.j(downloadInfo.getSavePath(), downloadInfo.getName());
    }

    private boolean w(DownloadInfo downloadInfo) {
        return !com.byazt.y.zy.hp(this.hp.f26873l) && a(downloadInfo);
    }

    public void jx(DownloadInfo downloadInfo) {
        if (!q.hp(this.hp.f26873l) || this.jx) {
            return;
        }
        com.byazt.r.hp.hp().hp("file_status", (downloadInfo == null || !com.byazt.y.zy.l(downloadInfo.getTargetFilePath())) ? 2 : 1, this.hp);
        this.jx = true;
    }

    public void hp(long j2) {
        this.f25658l = j2;
        com.byazt.w.w wVarW = com.byazt.w.a.hp().w(j2);
        this.hp = wVarW;
        if (wVarW.b()) {
            com.byazt.u.jx.hp().hp("setAdId ModelBox notValid");
        }
    }

    private void l(final n nVar) {
        String str;
        if (com.byazt.y.e.l("android.permission.WRITE_EXTERNAL_STORAGE")) {
            if (nVar != null) {
                nVar.hp();
                return;
            }
            return;
        }
        if (com.byazt.y.zy.hp()) {
            str = "android.permission.READ_MEDIA_IMAGES";
            if (com.byazt.y.e.l("android.permission.READ_MEDIA_IMAGES") || com.byazt.y.e.l("android.permission.READ_MEDIA_AUDIO") || com.byazt.y.e.l("android.permission.READ_MEDIA_VIDEO")) {
                if (nVar != null) {
                    nVar.hp();
                    return;
                }
                return;
            }
        } else {
            str = g.f31167i;
        }
        com.byazt.y.e.hp(new String[]{str}, new e.hp() { // from class: com.byazt.t.s.2
            @Override // com.byazt.y.e.hp
            public void hp() {
                n nVar2 = nVar;
                if (nVar2 != null) {
                    nVar2.hp();
                }
            }

            @Override // com.byazt.y.e.hp
            public void hp(String str2) {
                n nVar2 = nVar;
                if (nVar2 != null) {
                    nVar2.hp(str2);
                }
            }
        });
    }

    public boolean j(DownloadInfo downloadInfo) {
        return a() || w(downloadInfo);
    }

    public void hp(DownloadInfo downloadInfo) {
        this.jx = false;
        l(downloadInfo);
    }

    public boolean hp(Context context, int i2, boolean z2) {
        if (com.byazt.y.zy.hp(this.hp.f26873l)) {
            com.byazt.zv.l lVarJ = com.byazt.w.a.hp().j(this.hp.hp);
            if (lVarJ != null) {
                com.byazt.li.l.hp().a(lVarJ.ec());
            }
            return com.byazt.j.hp.hp(this.hp);
        }
        if (hp(i2) && !TextUtils.isEmpty(this.hp.f26873l.getPackageName()) && jl.q().optInt("disable_market") != 1) {
            if (com.byazt.j.hp.hp(this.hp, i2)) {
                return true;
            }
            return this.f25657j.q() && this.f25657j.j(true);
        }
        if (!z2 || this.hp.f26872j.getDownloadMode() != 4 || this.f25657j.w()) {
            return false;
        }
        this.f25657j.jx(true);
        return true;
    }

    @Nullable
    public String l() {
        File externalFilesDir = jl.getContext().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        if (externalFilesDir == null) {
            return null;
        }
        if (!externalFilesDir.exists()) {
            externalFilesDir.mkdirs();
        }
        if (externalFilesDir.exists()) {
            return externalFilesDir.getAbsolutePath();
        }
        return null;
    }

    @NonNull
    public static List<com.byazt.yy.hp> l(Map<Integer, Object> map) {
        ArrayList arrayList = new ArrayList();
        if (map != null && !map.isEmpty()) {
            for (Object obj : map.values()) {
                if (obj instanceof com.byazt.yy.hp) {
                    arrayList.add((com.byazt.yy.hp) obj);
                } else {
                    if (obj instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) obj;
                        if (softReference.get() instanceof com.byazt.yy.hp) {
                            arrayList.add((com.byazt.yy.hp) softReference.get());
                        }
                    }
                    if (obj instanceof WeakReference) {
                        WeakReference weakReference = (WeakReference) obj;
                        if (weakReference.get() instanceof com.byazt.yy.hp) {
                            arrayList.add((com.byazt.yy.hp) weakReference.get());
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public boolean hp(int i2) {
        if (this.hp.f26872j.getDownloadMode() == 2 && i2 == 2) {
            return true;
        }
        return this.hp.f26872j.getDownloadMode() == 2 && i2 == 1 && jl.q().optInt("disable_lp_if_market", 0) == 1;
    }

    public boolean hp(int i2, DownloadModel downloadModel) {
        return com.byazt.wm.w.jx() && hp(i2) && !com.byazt.y.zy.hp(downloadModel);
    }

    public boolean hp(boolean z2) {
        return !z2 && this.hp.f26872j.getDownloadMode() == 1;
    }

    public void hp(@NonNull final n nVar) {
        if (!TextUtils.isEmpty(this.hp.f26873l.getFilePath())) {
            String filePath = this.hp.f26873l.getFilePath();
            if (filePath.startsWith(Environment.getDataDirectory().getAbsolutePath())) {
                nVar.hp();
                return;
            }
            try {
                String parent = jl.getContext().getExternalCacheDir().getParent();
                if (parent.endsWith("/cache")) {
                    parent = parent.substring(0, parent.indexOf("/cache"));
                }
                if (filePath.startsWith(parent)) {
                    nVar.hp();
                    return;
                }
            } catch (Exception unused) {
            }
        }
        l(new n() { // from class: com.byazt.t.s.1
            @Override // com.byazt.b.n
            public void hp() {
                nVar.hp();
            }

            @Override // com.byazt.b.n
            public void hp(String str) throws JSONException {
                jl.jx().hp(1, jl.getContext(), s.this.hp.f26873l, "您已禁止使用存储权限，请授权后再下载", null, 1);
                com.byazt.r.hp.hp().l(s.this.f25658l, 1);
                nVar.hp(str);
            }
        });
    }

    public void hp(Message message, DownloadShortInfo downloadShortInfo, Map<Integer, Object> map) {
        l lVar;
        if (message == null || message.what != 3) {
            return;
        }
        DownloadInfo downloadInfo = (DownloadInfo) message.obj;
        int i2 = message.arg1;
        if (i2 != 1 && i2 != 6 && i2 == 2) {
            if (downloadInfo.getIsFirstDownload()) {
                com.byazt.l.s sVarHp = com.byazt.l.s.hp();
                com.byazt.w.w wVar = this.hp;
                sVarHp.hp(wVar.f26873l, wVar.f26872j, wVar.jx);
                downloadInfo.setFirstDownload(false);
            }
            com.byazt.r.hp.hp().hp(downloadInfo);
        }
        downloadShortInfo.updateFromNewDownloadInfo(downloadInfo);
        e.hp(downloadShortInfo);
        int iHp = com.byazt.ni.jx.hp(downloadInfo.getStatus());
        long totalBytes = downloadInfo.getTotalBytes();
        int curBytes = totalBytes > 0 ? (int) ((downloadInfo.getCurBytes() * 100) / totalBytes) : 0;
        if ((totalBytes > 0 || com.byazt.jb.hp.jx().hp("fix_click_start")) && (lVar = this.f25659w) != null) {
            lVar.hp(downloadInfo);
            this.f25659w = null;
        }
        for (DownloadStatusChangeListener downloadStatusChangeListener : hp(map)) {
            if (iHp != 1) {
                if (iHp == 2) {
                    downloadStatusChangeListener.onDownloadPaused(downloadShortInfo, e.hp(downloadInfo.getId(), curBytes));
                } else if (iHp == 3) {
                    if (downloadInfo.getStatus() == -4) {
                        downloadStatusChangeListener.onIdle();
                    } else if (downloadInfo.getStatus() == -1) {
                        downloadStatusChangeListener.onDownloadFailed(downloadShortInfo);
                    } else if (downloadInfo.getStatus() == -3) {
                        if (com.byazt.y.zy.hp(this.hp.f26873l)) {
                            downloadStatusChangeListener.onInstalled(downloadShortInfo);
                        } else {
                            downloadStatusChangeListener.onDownloadFinished(downloadShortInfo);
                        }
                    }
                }
            } else if (downloadInfo.getStatus() != 11) {
                downloadStatusChangeListener.onDownloadActive(downloadShortInfo, e.hp(downloadInfo.getId(), curBytes));
            } else {
                Iterator<com.byazt.yy.hp> it = l(map).iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
        }
    }

    public void hp() {
        if (this.f25659w == null) {
            this.f25659w = new l() { // from class: com.byazt.t.s.3
                @Override // com.byazt.t.s.l
                public void hp(DownloadInfo downloadInfo) throws JSONException {
                    com.byazt.r.hp.hp().hp(s.this.f25658l, 2, downloadInfo);
                }
            };
        }
    }

    public int hp(Context context, IDownloadListener iDownloadListener) {
        com.byazt.k.hp hpVar;
        com.byazt.fu.jx jxVarHp;
        if (context == null) {
            return 0;
        }
        Map<String, String> headers = this.hp.f26873l.getHeaders();
        ArrayList arrayList = new ArrayList();
        if (jl.q().optInt("enable_send_click_id_in_apk", 1) == 1 && !TextUtils.isEmpty(this.hp.f26873l.getLogExtra()) && (jxVarHp = hp(this.hp.f26873l.getLogExtra())) != null) {
            arrayList.add(jxVarHp);
        }
        if (headers != null) {
            for (Map.Entry<String, String> entry : headers.entrySet()) {
                if (entry != null) {
                    arrayList.add(new com.byazt.fu.jx(entry.getKey(), entry.getValue()));
                }
            }
        }
        String strHp = com.byazt.y.j.hp(String.valueOf(this.hp.f26873l.getId()), this.hp.f26873l.getNotificationJumpUrl(), this.hp.f26873l.isShowToast(), String.valueOf(this.hp.f26873l.getModelType()));
        com.byazt.jb.hp hpVarL = com.byazt.y.w.l(this.hp.f26873l);
        JSONObject jSONObjectHp = com.byazt.y.w.hp(this.hp.f26873l);
        if (!this.hp.f26872j.enableAH()) {
            jSONObjectHp = com.byazt.y.zy.hp(jSONObjectHp);
            com.byazt.y.zy.hp(jSONObjectHp, "ah_plans", new JSONArray());
        }
        int executorGroup = this.hp.f26873l.getExecutorGroup();
        if (this.hp.f26873l.isAd() || q.l(this.hp.f26873l)) {
            executorGroup = 4;
        }
        String strHp2 = hp(hpVarL);
        DownloadInfo downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(com.byazt.yk.jx.hp(this.hp.f26873l.getDownloadUrl(), strHp2));
        if (downloadInfo != null && 3 == this.hp.f26873l.getModelType()) {
            downloadInfo.setFirstDownload(true);
        }
        com.byazt.ni.w wVarV = new com.byazt.ni.w(context, this.hp.f26873l.getDownloadUrl()).l(this.hp.f26873l.getBackupUrls()).hp(this.hp.f26873l.getName()).w(strHp).hp(arrayList).hp(this.hp.f26873l.isShowNotification()).jx(this.hp.f26873l.isNeedWifi()).l(this.hp.f26873l.getFileName()).jx(strHp2).gu(this.hp.f26873l.getAppIcon()).s(this.hp.f26873l.getMd5()).e(this.hp.f26873l.getSdkMonitorScene()).hp(this.hp.f26873l.getExpectFileLength()).hp(iDownloadListener).jl(this.hp.f26873l.needIndependentProcess() || hpVarL.hp("need_independent_process", 0) == 1).hp(this.hp.f26873l.getDownloadFileUriProvider()).l(this.hp.f26873l.autoInstallWithoutNotification()).eb(this.hp.f26873l.getPackageName()).j(1000).w(100).hp(jSONObjectHp).q(true).e(true).l(hpVarL.hp(n.b.f3359h, 5)).jx(hpVarL.hp("backup_url_retry_count", 0)).e(true).zy(hpVarL.hp("need_head_connection", 0) == 1).j(hpVarL.hp("need_https_to_http_retry", 0) == 1).s(hpVarL.hp("need_chunk_downgrade_retry", 1) == 1).eb(hpVarL.hp("need_retry_delay", 0) == 1).q(hpVarL.jx("retry_delay_time_array")).gu(hpVarL.hp("need_reuse_runnable", 0) == 1).a(executorGroup).u(this.hp.f26873l.isAutoInstall()).v(this.hp.f26873l.distinctDir());
        if (!TextUtils.isEmpty(this.hp.f26873l.getMimeType())) {
            wVarV.a(this.hp.f26873l.getMimeType());
        } else {
            wVarV.a(AdBaseConstants.MIME_APK);
        }
        if (hpVarL.hp("notification_opt_2", 0) == 1) {
            wVarV.hp(false);
            wVarV.l(true);
        }
        if (hpVarL.hp("clear_space_use_disk_handler", 0) == 1) {
            hpVar = new com.byazt.k.hp();
            wVarV.hp(hpVar);
        } else {
            hpVar = null;
        }
        DownloadModel downloadModel = this.hp.f26873l;
        if ((downloadModel instanceof AdDownloadModel) && !TextUtils.isEmpty(((AdDownloadModel) downloadModel).getTaskKey())) {
            wVarV.j(((AdDownloadModel) this.hp.f26873l).getTaskKey());
        }
        int iHp = q.hp(this.hp, jx(), wVarV);
        if (hpVar != null) {
            hpVar.hp(iHp);
        }
        return iHp;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0085, code lost:
    
        if (r4.startsWith(r3) != false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String hp(com.byazt.jb.hp r9) throws org.json.JSONException {
        /*
            r8 = this;
            com.byazt.w.w r0 = r8.hp
            com.byazt.yy.DownloadModel r0 = r0.f26873l
            java.lang.String r0 = r0.getFilePath()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L17
            com.byazt.w.w r9 = r8.hp
            com.byazt.yy.DownloadModel r9 = r9.f26873l
            java.lang.String r9 = r9.getFilePath()
            return r9
        L17:
            com.byazt.ni.j r0 = com.byazt.ni.j.gu()
            android.content.Context r1 = com.byazt.t.jl.getContext()
            com.byazt.w.w r2 = r8.hp
            com.byazt.yy.DownloadModel r2 = r2.f26873l
            java.lang.String r2 = r2.getDownloadUrl()
            com.byazt.fu.DownloadInfo r0 = r0.hp(r1, r2)
            boolean r1 = com.byazt.y.zy.hp()
            r2 = 1
            if (r1 != 0) goto L39
            java.lang.String r1 = "android.permission.WRITE_EXTERNAL_STORAGE"
            boolean r1 = com.byazt.y.e.l(r1)
            goto L55
        L39:
            java.lang.String r1 = "android.permission.READ_MEDIA_IMAGES"
            boolean r1 = com.byazt.y.e.l(r1)
            if (r1 != 0) goto L54
            java.lang.String r1 = "android.permission.READ_MEDIA_AUDIO"
            boolean r1 = com.byazt.y.e.l(r1)
            if (r1 != 0) goto L54
            java.lang.String r1 = "android.permission.READ_MEDIA_VIDEO"
            boolean r1 = com.byazt.y.e.l(r1)
            if (r1 == 0) goto L52
            goto L54
        L52:
            r1 = 0
            goto L55
        L54:
            r1 = r2
        L55:
            java.lang.String r3 = r8.l()
            if (r0 == 0) goto L97
            java.lang.String r4 = r0.getSavePath()
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L97
            java.lang.String r4 = r0.getSavePath()
            if (r1 == 0) goto L6c
            return r4
        L6c:
            java.io.File r5 = android.os.Environment.getDataDirectory()
            java.lang.String r5 = r5.getAbsolutePath()
            boolean r5 = r4.startsWith(r5)
            if (r5 == 0) goto L7b
            goto L87
        L7b:
            boolean r5 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L88
            if (r5 != 0) goto L88
            boolean r5 = r4.startsWith(r3)     // Catch: java.lang.Exception -> L88
            if (r5 == 0) goto L88
        L87:
            return r4
        L88:
            android.content.Context r4 = com.byazt.yk.jx.mp()
            com.byazt.yk.Downloader r4 = com.byazt.yk.Downloader.getInstance(r4)
            int r0 = r0.getId()
            r4.cancel(r0)
        L97:
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            r4 = 2
            java.lang.String r5 = "ttdownloader_code"
            if (r1 == 0) goto La3
            r6 = r2
            goto La4
        La3:
            r6 = r4
        La4:
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: org.json.JSONException -> Lab
            r0.putOpt(r5, r6)     // Catch: org.json.JSONException -> Lab
        Lab:
            com.byazt.r.hp r5 = com.byazt.r.hp.hp()
            java.lang.String r6 = "label_external_permission"
            com.byazt.w.w r7 = r8.hp
            r5.hp(r6, r0, r7)
            java.lang.String r0 = com.byazt.ni.jx.l()     // Catch: java.lang.Exception -> Lbb
            goto Lbc
        Lbb:
            r0 = 0
        Lbc:
            int r9 = com.byazt.y.w.hp(r9)
            if (r9 == 0) goto Lf5
            r5 = 4
            if (r9 == r5) goto Ld8
            if (r1 != 0) goto Lca
            if (r9 != r4) goto Lca
            goto Ld8
        Lca:
            r4 = 3
            if (r9 == r4) goto Ld1
            if (r1 != 0) goto Lf5
            if (r9 != r2) goto Lf5
        Ld1:
            boolean r9 = android.text.TextUtils.isEmpty(r3)
            if (r9 != 0) goto Lf5
            goto Lf6
        Ld8:
            android.content.Context r9 = com.byazt.t.jl.getContext()
            java.io.File r9 = r9.getFilesDir()
            boolean r1 = r9.exists()
            if (r1 != 0) goto Le9
            r9.mkdirs()
        Le9:
            boolean r1 = r9.exists()
            if (r1 == 0) goto Lf5
            java.lang.String r9 = r9.getAbsolutePath()
            r3 = r9
            goto Lf6
        Lf5:
            r3 = r0
        Lf6:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.t.s.hp(com.byazt.jb.hp):java.lang.String");
    }

    public void hp(DownloadInfo downloadInfo, boolean z2) {
        if (this.hp.f26873l == null || downloadInfo == null || downloadInfo.getId() == 0) {
            return;
        }
        int status = downloadInfo.getStatus();
        if (status == -1 || status == -4 || q.hp(this.hp.f26873l) || (z2 && com.byazt.r.jx.hp().jx() && (status == -2 || status == -3))) {
            com.byazt.r.hp.hp().hp(this.f25658l, 2);
        }
        switch (status) {
            case -4:
            case -1:
                hp();
                com.byazt.w.a aVarHp = com.byazt.w.a.hp();
                com.byazt.w.w wVar = this.hp;
                aVarHp.hp(new com.byazt.zv.l(wVar.f26873l, wVar.jx, wVar.f26872j, downloadInfo.getId()));
                break;
            case -3:
                if (com.byazt.y.zy.hp(this.hp.f26873l)) {
                    com.byazt.u.jx.hp().l("SUCCESSED isInstalledApp");
                    break;
                } else {
                    com.byazt.r.hp.hp().hp(this.f25658l, 5, downloadInfo);
                    if (z2 && com.byazt.r.jx.hp().l() && !com.byazt.r.jx.hp().l(this.f25658l, this.hp.f26873l.getLogExtra())) {
                        com.byazt.r.hp.hp().hp(this.f25658l, 2);
                        break;
                    }
                }
                break;
            case -2:
                com.byazt.r.hp.hp().hp(this.f25658l, 4, downloadInfo);
                if (z2 && com.byazt.r.jx.hp().l() && !com.byazt.r.jx.hp().l(this.f25658l, this.hp.f26873l.getLogExtra())) {
                    com.byazt.r.hp.hp().hp(this.f25658l, 2);
                    break;
                }
                break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 7:
            case 8:
                com.byazt.r.hp.hp().hp(this.f25658l, 3, downloadInfo);
                break;
        }
    }

    public void hp(DownloadInfo downloadInfo, DownloadShortInfo downloadShortInfo, List<DownloadStatusChangeListener> list, boolean z2) {
        if (list.isEmpty()) {
            return;
        }
        if (downloadInfo != null && downloadShortInfo != null) {
            int curBytes = downloadInfo.getTotalBytes() > 0 ? (int) ((downloadInfo.getCurBytes() * 100) / downloadInfo.getTotalBytes()) : 0;
            int i2 = curBytes >= 0 ? curBytes : 0;
            downloadShortInfo.updateFromNewDownloadInfo(downloadInfo);
            e.hp(downloadShortInfo);
            for (DownloadStatusChangeListener downloadStatusChangeListener : list) {
                switch (downloadInfo.getStatus()) {
                    case -4:
                    case 0:
                        if (com.byazt.y.zy.hp(this.hp.f26873l)) {
                            downloadShortInfo.status = -3;
                            downloadStatusChangeListener.onInstalled(downloadShortInfo);
                            break;
                        } else {
                            downloadStatusChangeListener.onIdle();
                            break;
                        }
                    case -3:
                        if (z2) {
                            downloadStatusChangeListener.onInstalled(downloadShortInfo);
                            break;
                        } else {
                            downloadStatusChangeListener.onDownloadFinished(downloadShortInfo);
                            break;
                        }
                    case -2:
                        downloadStatusChangeListener.onDownloadPaused(downloadShortInfo, e.hp(downloadInfo.getId(), i2));
                        break;
                    case -1:
                        downloadStatusChangeListener.onDownloadFailed(downloadShortInfo);
                        break;
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 7:
                    case 8:
                        downloadStatusChangeListener.onDownloadActive(downloadShortInfo, e.hp(downloadInfo.getId(), i2));
                        break;
                    case 11:
                        if (downloadStatusChangeListener instanceof com.byazt.yy.hp) {
                            break;
                        } else {
                            downloadStatusChangeListener.onDownloadActive(downloadShortInfo, e.hp(downloadInfo.getId(), i2));
                            break;
                        }
                }
            }
            return;
        }
        Iterator<DownloadStatusChangeListener> it = list.iterator();
        while (it.hasNext()) {
            it.next().onIdle();
        }
    }

    @NonNull
    public static List<DownloadStatusChangeListener> hp(Map<Integer, Object> map) {
        ArrayList arrayList = new ArrayList();
        if (map != null && !map.isEmpty()) {
            for (Object obj : map.values()) {
                if (obj instanceof DownloadStatusChangeListener) {
                    arrayList.add((DownloadStatusChangeListener) obj);
                } else {
                    if (obj instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) obj;
                        if (softReference.get() instanceof DownloadStatusChangeListener) {
                            arrayList.add((DownloadStatusChangeListener) softReference.get());
                        }
                    }
                    if (obj instanceof WeakReference) {
                        WeakReference weakReference = (WeakReference) obj;
                        if (weakReference.get() instanceof DownloadStatusChangeListener) {
                            arrayList.add((DownloadStatusChangeListener) weakReference.get());
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private com.byazt.fu.jx hp(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return new com.byazt.fu.jx("clickid", new JSONObject(str).optString("clickid"));
        } catch (JSONException e2) {
            jl.sz().hp(e2, "parseLogExtra Error");
            return null;
        }
    }
}
