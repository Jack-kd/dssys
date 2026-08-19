package com.byazt.m;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import com.byazt.fu.DownloadInfo;
import com.byazt.l.e;
import com.byazt.t.jl;
import com.byazt.v.l;
import com.byazt.w.a;
import com.byazt.y.gu;
import com.byazt.y.zy;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.Downloader;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import java.io.File;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1097, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final String hp = "hp";

    /* renamed from: l, reason: collision with root package name */
    public static hp f22852l;

    /* renamed from: a, reason: collision with root package name */
    public l f22853a;

    /* renamed from: j, reason: collision with root package name */
    public boolean f22854j = false;

    @NonNull
    public CopyOnWriteArrayList<com.byazt.w.hp> jx;

    /* renamed from: w, reason: collision with root package name */
    public String f22855w;

    /* renamed from: com.byazt.m.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0308hp {
        void hp();
    }

    private hp() {
        l lVar = new l();
        this.f22853a = lVar;
        this.jx = lVar.hp("sp_ad_install_back_dialog", "key_uninstalled_list");
    }

    public static hp hp() {
        if (f22852l == null) {
            f22852l = new hp();
        }
        return f22852l;
    }

    public void l(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f22855w = "";
        } else if (TextUtils.equals(this.f22855w, str)) {
            this.f22855w = "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004b A[Catch: Exception -> 0x00cc, TryCatch #0 {Exception -> 0x00cc, blocks: (B:4:0x000b, B:8:0x0016, B:13:0x0021, B:15:0x0029, B:18:0x004b, B:20:0x005b, B:21:0x0065, B:23:0x006b, B:25:0x0073, B:27:0x007f, B:29:0x0087, B:31:0x0096, B:34:0x00bb, B:32:0x009a), top: B:38:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006b A[Catch: Exception -> 0x00cc, TryCatch #0 {Exception -> 0x00cc, blocks: (B:4:0x000b, B:8:0x0016, B:13:0x0021, B:15:0x0029, B:18:0x004b, B:20:0x005b, B:21:0x0065, B:23:0x006b, B:25:0x0073, B:27:0x007f, B:29:0x0087, B:31:0x0096, B:34:0x00bb, B:32:0x009a), top: B:38:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ba A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean hp(android.app.Activity r22, com.byazt.fu.DownloadInfo r23, boolean r24, com.byazt.m.hp.InterfaceC0308hp r25) {
        /*
            r21 = this;
            r0 = r21
            r1 = r22
            r2 = r24
            r3 = r25
            r4 = 0
            if (r23 != 0) goto L14
            java.util.concurrent.CopyOnWriteArrayList<com.byazt.w.hp> r5 = r0.jx     // Catch: java.lang.Exception -> Lcc
            boolean r5 = r5.isEmpty()     // Catch: java.lang.Exception -> Lcc
            if (r5 == 0) goto L14
            return r4
        L14:
            if (r1 == 0) goto Lcc
            boolean r5 = r1.isFinishing()     // Catch: java.lang.Exception -> Lcc
            if (r5 == 0) goto L1e
            goto Lcc
        L1e:
            r5 = 1
            if (r23 == 0) goto L49
            java.util.concurrent.CopyOnWriteArrayList<com.byazt.w.hp> r6 = r0.jx     // Catch: java.lang.Exception -> Lcc
            boolean r6 = r6.isEmpty()     // Catch: java.lang.Exception -> Lcc
            if (r6 == 0) goto L49
            com.byazt.w.hp r7 = new com.byazt.w.hp     // Catch: java.lang.Exception -> Lcc
            int r6 = r23.getId()     // Catch: java.lang.Exception -> Lcc
            long r8 = (long) r6     // Catch: java.lang.Exception -> Lcc
            java.lang.String r14 = r23.getPackageName()     // Catch: java.lang.Exception -> Lcc
            java.lang.String r15 = r23.getTitle()     // Catch: java.lang.Exception -> Lcc
            java.lang.String r17 = r23.getTargetFilePath()     // Catch: java.lang.Exception -> Lcc
            r10 = 0
            r12 = 0
            r16 = 0
            r7.<init>(r8, r10, r12, r14, r15, r16, r17)     // Catch: java.lang.Exception -> Lcc
            r0.hp(r1, r7, r2, r3)     // Catch: java.lang.Exception -> Lcc
            return r5
        L49:
            if (r23 == 0) goto L59
            java.io.File r6 = new java.io.File     // Catch: java.lang.Exception -> Lcc
            java.lang.String r7 = r23.getTargetFilePath()     // Catch: java.lang.Exception -> Lcc
            r6.<init>(r7)     // Catch: java.lang.Exception -> Lcc
            long r6 = r6.lastModified()     // Catch: java.lang.Exception -> Lcc
            goto L5b
        L59:
            r6 = 0
        L5b:
            java.util.concurrent.CopyOnWriteArrayList<com.byazt.w.hp> r8 = r0.jx     // Catch: java.lang.Exception -> Lcc
            int r9 = r8.size()     // Catch: java.lang.Exception -> Lcc
            java.util.ListIterator r8 = r8.listIterator(r9)     // Catch: java.lang.Exception -> Lcc
        L65:
            boolean r9 = r8.hasPrevious()     // Catch: java.lang.Exception -> Lcc
            if (r9 == 0) goto Lba
            java.lang.Object r9 = r8.previous()     // Catch: java.lang.Exception -> Lcc
            com.byazt.w.hp r9 = (com.byazt.w.hp) r9     // Catch: java.lang.Exception -> Lcc
            if (r9 == 0) goto L65
            android.content.Context r10 = com.byazt.t.jl.getContext()     // Catch: java.lang.Exception -> Lcc
            java.lang.String r11 = r9.f26849j     // Catch: java.lang.Exception -> Lcc
            boolean r10 = com.byazt.y.zy.w(r10, r11)     // Catch: java.lang.Exception -> Lcc
            if (r10 != 0) goto L65
            java.lang.String r10 = r9.eb     // Catch: java.lang.Exception -> Lcc
            boolean r10 = com.byazt.y.zy.hp(r10)     // Catch: java.lang.Exception -> Lcc
            if (r10 == 0) goto L65
            java.io.File r8 = new java.io.File     // Catch: java.lang.Exception -> Lcc
            java.lang.String r10 = r9.eb     // Catch: java.lang.Exception -> Lcc
            r8.<init>(r10)     // Catch: java.lang.Exception -> Lcc
            long r10 = r8.lastModified()     // Catch: java.lang.Exception -> Lcc
            int r6 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r6 < 0) goto L9a
            r0.hp(r1, r9, r2, r3)     // Catch: java.lang.Exception -> Lcc
            goto Lbb
        L9a:
            com.byazt.w.hp r10 = new com.byazt.w.hp     // Catch: java.lang.Exception -> Lcc
            int r6 = r23.getId()     // Catch: java.lang.Exception -> Lcc
            long r11 = (long) r6     // Catch: java.lang.Exception -> Lcc
            java.lang.String r17 = r23.getPackageName()     // Catch: java.lang.Exception -> Lcc
            java.lang.String r18 = r23.getTitle()     // Catch: java.lang.Exception -> Lcc
            java.lang.String r20 = r23.getTargetFilePath()     // Catch: java.lang.Exception -> Lcc
            r13 = 0
            r15 = 0
            r19 = 0
            r10.<init>(r11, r13, r15, r17, r18, r19, r20)     // Catch: java.lang.Exception -> Lcc
            r0.hp(r1, r10, r2, r3)     // Catch: java.lang.Exception -> Lcc
            goto Lbb
        Lba:
            r5 = r4
        Lbb:
            java.lang.String r1 = com.byazt.m.hp.hp     // Catch: java.lang.Exception -> Lcc
            java.lang.String r2 = "tryShowInstallDialog isShow:"
            java.lang.String r3 = java.lang.String.valueOf(r5)     // Catch: java.lang.Exception -> Lcc
            java.lang.String r2 = r2.concat(r3)     // Catch: java.lang.Exception -> Lcc
            r3 = 0
            com.byazt.y.gu.hp(r1, r2, r3)     // Catch: java.lang.Exception -> Lcc
            return r5
        Lcc:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.m.hp.hp(android.app.Activity, com.byazt.fu.DownloadInfo, boolean, com.byazt.m.hp$hp):boolean");
    }

    @MainThread
    public boolean hp(Activity activity, boolean z2, InterfaceC0308hp interfaceC0308hp) {
        if (jl.q().optInt("disable_install_app_dialog") == 1 || this.f22854j) {
            return false;
        }
        return hp(activity, hp(activity), z2, interfaceC0308hp);
    }

    public void hp(Context context, com.byazt.w.hp hpVar, boolean z2, InterfaceC0308hp interfaceC0308hp) throws JSONException {
        this.jx.clear();
        hp(context, hpVar, interfaceC0308hp, z2);
        this.f22854j = true;
        e.hp(context).jx();
        this.f22853a.l("sp_ad_install_back_dialog", "key_uninstalled_list");
        gu.hp(hp, "tryShowInstallDialog isShow:true", null);
    }

    public DownloadInfo hp(Context context) {
        long jL;
        DownloadInfo downloadInfo = null;
        try {
            jL = e.hp(context).l();
        } catch (Exception unused) {
        }
        if (jl.q().optInt("enable_miniapp_dialog", 0) == 0) {
            return null;
        }
        List<DownloadInfo> successedDownloadInfosWithMimeType = Downloader.getInstance(context).getSuccessedDownloadInfosWithMimeType(AdBaseConstants.MIME_APK);
        if (successedDownloadInfosWithMimeType != null && !successedDownloadInfosWithMimeType.isEmpty()) {
            long j2 = 0;
            for (DownloadInfo downloadInfo2 : successedDownloadInfosWithMimeType) {
                if (downloadInfo2 != null && !zy.w(context, downloadInfo2.getPackageName()) && zy.hp(downloadInfo2.getTargetFilePath())) {
                    long jLastModified = new File(downloadInfo2.getTargetFilePath()).lastModified();
                    if (jLastModified >= jL && downloadInfo2.getExtra() != null) {
                        try {
                            if (new JSONObject(downloadInfo2.getExtra()).has("isMiniApp") && (j2 == 0 || jLastModified > j2)) {
                                downloadInfo = downloadInfo2;
                                j2 = jLastModified;
                            }
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
        }
        return downloadInfo;
    }

    public void hp(long j2, long j3, long j4, String str, String str2, String str3, String str4) throws JSONException {
        for (int i2 = 0; i2 < this.jx.size(); i2++) {
            com.byazt.w.hp hpVar = this.jx.get(i2);
            if (hpVar != null && hpVar.f26850l == j3) {
                this.jx.set(i2, new com.byazt.w.hp(j2, j3, j4, str, str2, str3, str4));
                this.f22853a.hp("sp_ad_install_back_dialog", "key_uninstalled_list", this.jx);
                return;
            }
        }
        this.jx.add(new com.byazt.w.hp(j2, j3, j4, str, str2, str3, str4));
        this.f22853a.hp("sp_ad_install_back_dialog", "key_uninstalled_list", this.jx);
    }

    private void hp(final Context context, final com.byazt.w.hp hpVar, final InterfaceC0308hp interfaceC0308hp, boolean z2) throws JSONException {
        final com.byazt.zv.l lVarJ = a.hp().j(hpVar.f26850l);
        if (lVarJ == null) {
            com.byazt.u.jx.hp().hp("showBackInstallDialog nativeModel null");
            return;
        }
        jl.jx().l(new l.hp(context).hp(z2 ? "应用安装确认" : "退出确认").l(String.format("%1$s下载完成，是否立即安装？", TextUtils.isEmpty(hpVar.f26852w) ? "刚刚下载的应用" : hpVar.f26852w)).jx("立即安装").j(z2 ? "暂不安装" : String.format("退出%1$s", context.getResources().getString(context.getApplicationContext().getApplicationInfo().labelRes))).hp(false).hp(zy.hp(context, hpVar.eb)).hp(new l.InterfaceC0391l() { // from class: com.byazt.m.hp.1
            @Override // com.byazt.v.l.InterfaceC0391l
            public void hp(DialogInterface dialogInterface) {
                com.byazt.r.hp.hp().l("backdialog_install", lVarJ);
                com.byazt.ni.j.hp(context, (int) hpVar.hp);
                dialogInterface.dismiss();
            }

            @Override // com.byazt.v.l.InterfaceC0391l
            public void jx(DialogInterface dialogInterface) {
                hp.this.l("");
            }

            @Override // com.byazt.v.l.InterfaceC0391l
            public void l(DialogInterface dialogInterface) {
                com.byazt.r.hp.hp().l("backdialog_exit", lVarJ);
                InterfaceC0308hp interfaceC0308hp2 = interfaceC0308hp;
                if (interfaceC0308hp2 != null) {
                    interfaceC0308hp2.hp();
                }
                hp.this.l("");
                dialogInterface.dismiss();
            }
        }).hp(1).hp());
        com.byazt.r.hp.hp().l("backdialog_show", lVarJ);
        this.f22855w = hpVar.f26849j;
    }

    public boolean hp(String str) {
        return TextUtils.equals(this.f22855w, str);
    }

    public void hp(com.byazt.zv.l lVar) {
        if (jl.q().optInt("enable_open_app_dialog", 0) == 1 && !lVar.su() && lVar.xs() && Build.VERSION.SDK_INT < 34) {
            lVar.gu(true);
            TTDelegateActivity.hp(lVar);
        }
    }
}
