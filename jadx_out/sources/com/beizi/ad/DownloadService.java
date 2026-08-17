package com.beizi.ad;

import android.app.DownloadManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.anythink.core.common.f.s;
import com.beizi.ad.lance.ApkBean;
import com.beizi.fusion.c8;
import com.beizi.fusion.em;
import com.beizi.fusion.g8;
import com.beizi.fusion.i7;
import com.beizi.fusion.ih;
import com.beizi.fusion.nh;
import com.byazt.yi.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.File;
import java.util.HashMap;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public final class DownloadService extends Service {

    /* renamed from: j, reason: collision with root package name */
    private static i7.a f11907j;

    /* renamed from: a, reason: collision with root package name */
    private long f11908a;

    /* renamed from: b, reason: collision with root package name */
    private String f11909b;

    /* renamed from: c, reason: collision with root package name */
    private DownloadManager f11910c;

    /* renamed from: d, reason: collision with root package name */
    private b f11911d;

    /* renamed from: e, reason: collision with root package name */
    private c f11912e;

    /* renamed from: f, reason: collision with root package name */
    private HashMap f11913f;

    /* renamed from: g, reason: collision with root package name */
    private HashMap f11914g;

    /* renamed from: h, reason: collision with root package name */
    private HashMap f11915h;

    /* renamed from: i, reason: collision with root package name */
    private ApkBean f11916i;

    public class a implements i7.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ApkBean f11917a;

        public a(ApkBean apkBean) {
            this.f11917a = apkBean;
        }

        @Override // com.beizi.fusion.i7.b
        public void a(long j2, long j3) {
        }

        @Override // com.beizi.fusion.i7.b
        public boolean b(File file) {
            return true;
        }

        @Override // com.beizi.fusion.i7.b
        public void a(File file) {
            nh.a("DownloadService", "--appUpdate downloadApk onSuccess--");
            if (DownloadService.this.f11914g != null) {
                DownloadService.this.f11914g.put(this.f11917a.getPkgName(), Boolean.FALSE);
            }
            DownloadService.this.a(DownloadService.this.getApplicationContext(), -1L, this.f11917a);
        }

        @Override // com.beizi.fusion.i7.b
        public void a(int i2) {
            nh.a("DownloadService", "--appUpdate downloadApk onFail--");
            try {
                String apkUrl = this.f11917a.getApkUrl();
                if (TextUtils.isEmpty(apkUrl) || !apkUrl.contains("http")) {
                    return;
                }
                if (DownloadService.this.f11914g != null) {
                    DownloadService.this.f11914g.put(this.f11917a.getPkgName(), Boolean.TRUE);
                }
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(Uri.parse(apkUrl));
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                DownloadService.this.startActivity(intent);
            } catch (Exception e2) {
                nh.a("DownloadService", "skip browser fail:" + e2);
            }
        }
    }

    public class b extends ContentObserver {
        public b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z2) {
            super.onChange(z2);
            int[] iArr = {0, 0, 0};
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = DownloadService.this.f11910c.query(new DownloadManager.Query().setFilterById(DownloadService.this.f11908a));
                    if (cursorQuery != null && cursorQuery.moveToFirst()) {
                        int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                        nh.a("DownloadService", "onChange status：" + i2);
                        if (i2 == 1) {
                            DownloadService downloadService = DownloadService.this;
                            downloadService.b(downloadService.f11916i);
                        }
                        iArr[0] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("bytes_so_far"));
                        iArr[1] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(s.a.f3404f));
                        iArr[2] = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                        nh.a("DownloadService", "progress：" + iArr[0] + ServiceReference.DELIMITER + iArr[1] + "");
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        }
    }

    public class c extends BroadcastReceiver {
        public c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                nh.a("DownloadService", "onReceived...download finish...begin install！");
                long longExtra = intent.getLongExtra("extra_download_id", -1L);
                if (DownloadService.this.f11915h != null && DownloadService.this.f11913f != null) {
                    String str = (String) DownloadService.this.f11915h.get(Long.valueOf(longExtra));
                    if (DownloadService.this.f11914g != null) {
                        DownloadService.this.f11914g.put(str, Boolean.FALSE);
                    }
                    ApkBean apkBean = (ApkBean) DownloadService.this.f11913f.get(str);
                    if (apkBean != null) {
                        if (apkBean.getmFollowTrackExt() != null) {
                            em.a(apkBean.getmFollowTrackExt().e());
                        }
                        if (Build.VERSION.SDK_INT < 26) {
                            DownloadService.this.a(context, Long.valueOf(longExtra), apkBean);
                        } else if (context.getPackageManager().canRequestPackageInstalls()) {
                            DownloadService.this.a(context, Long.valueOf(longExtra), apkBean);
                        } else {
                            DownloadService.this.a(context, Long.valueOf(longExtra), apkBean);
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void a(String str) {
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        nh.a("DownloadService", "DownloadService onCreate()");
        this.f11910c = (DownloadManager) getSystemService("download");
        this.f11911d = new b(new Handler());
        this.f11912e = new c();
        this.f11913f = new HashMap();
        this.f11914g = new HashMap();
        this.f11915h = new HashMap();
        a();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        nh.a("DownloadService", "DownloadService onDestroy()");
        c();
        b();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        Bundle bundleExtra;
        if (intent == null) {
            return 2;
        }
        nh.a("DownloadService", "DownloadService onStartCommand()");
        try {
            if (intent.getExtras() != null && (bundleExtra = intent.getBundleExtra("data")) != null && bundleExtra.containsKey("apkBean")) {
                this.f11916i = (ApkBean) bundleExtra.getSerializable("apkBean");
            }
            c(this.f11916i);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return 2;
    }

    private void b() {
        i7.a aVar = f11907j;
        if (aVar != null) {
            aVar.destroy();
        }
        if (this.f11914g != null) {
            this.f11914g = null;
        }
        if (this.f11913f != null) {
            this.f11913f = null;
        }
        if (this.f11915h != null) {
            this.f11915h = null;
        }
        nh.a("DownloadService", "releaseResources()");
    }

    private void c() {
        getContentResolver().unregisterContentObserver(this.f11911d);
        unregisterReceiver(this.f11912e);
        nh.a("DownloadService", "unregister()");
    }

    private void d(ApkBean apkBean) {
        if (apkBean == null) {
            return;
        }
        nh.a("DownloadService", "BEGIN_INSTALL!");
        if (apkBean.getmFollowTrackExt() != null) {
            em.a(apkBean.getmFollowTrackExt().b());
        }
        if (!TextUtils.isEmpty(apkBean.getPkgName()) && apkBean.isSendLocalBroadcast()) {
            a(apkBean.getPkgName());
        }
    }

    private void e(ApkBean apkBean) {
        try {
            if (!TextUtils.isEmpty(apkBean.getPkgName()) && apkBean.isSendLocalBroadcast()) {
                ih ihVarA = ih.a(this);
                Intent intent = new Intent("com.beizi.fusion.download.receiver");
                intent.putExtra("pkName", apkBean.getPkgName());
                ihVarA.a(intent);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a() {
        getContentResolver().registerContentObserver(Uri.parse("content://downloads/my_downloads"), true, this.f11911d);
        if (Build.VERSION.SDK_INT >= 31) {
            registerReceiver(this.f11912e, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"), 2);
        } else {
            registerReceiver(this.f11912e, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
        }
    }

    private void c(ApkBean apkBean) {
        if (apkBean == null) {
            return;
        }
        HashMap map = this.f11913f;
        if (map != null) {
            map.put(apkBean.getPkgName(), apkBean);
        }
        HashMap map2 = this.f11914g;
        if (map2 != null && map2.get(apkBean.getPkgName()) == null) {
            nh.a("DownloadService", "not have package status...");
            this.f11914g.put(apkBean.getPkgName(), Boolean.FALSE);
        }
        if (TextUtils.isEmpty(apkBean.getAuthorities())) {
            this.f11909b = getPackageName() + ".bz.fileprovider";
        } else {
            this.f11909b = apkBean.getAuthorities();
        }
        c8.a(apkBean.getDownloadPath());
        a(apkBean);
    }

    private synchronized void a(ApkBean apkBean) {
        e(apkBean);
        HashMap map = this.f11914g;
        if (map != null && map.get(apkBean.getPkgName()) != null && ((Boolean) this.f11914g.get(apkBean.getPkgName())).booleanValue()) {
            nh.a("DownloadService", "downloading..." + apkBean.getPkgName() + "...please not repeat click");
            return;
        }
        File file = new File(apkBean.getDownloadPath(), apkBean.getPkgName() + ".zip");
        if (file.exists()) {
            file.delete();
            nh.a("DownloadService", "apkCacheFile......remove:" + file.exists());
        }
        File file2 = new File(apkBean.getDownloadPath(), apkBean.getApkName());
        if (file2.exists()) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                intent.setAction("android.intent.action.VIEW");
                Uri uriForFile = FileProvider.getUriForFile(this, apkBean.getAuthorities(), file2);
                intent.addFlags(3);
                if (uriForFile != null) {
                    intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
                    startActivity(intent);
                    d(apkBean);
                    return;
                }
            } catch (Exception e2) {
                e2.toString();
            }
        }
        try {
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(apkBean.getApkUrl()));
            request.setTitle(apkBean.getApkTittleName());
            request.setDescription(apkBean.getApkDesc());
            request.setNotificationVisibility(1);
            request.setDestinationUri(Uri.fromFile(file));
            request.setMimeType(AdBaseConstants.MIME_APK);
            this.f11908a = this.f11910c.enqueue(request);
            nh.d("DownloadService", "mReqId:" + this.f11908a);
            HashMap map2 = this.f11915h;
            if (map2 != null) {
                map2.put(Long.valueOf(this.f11908a), apkBean.getPkgName());
            }
            HashMap map3 = this.f11914g;
            if (map3 != null) {
                map3.put(apkBean.getPkgName(), Boolean.TRUE);
            }
            Toast.makeText(this, "已开始下载…", 0).show();
            nh.a("DownloadService", "BEGIN_DOWNLOAD!");
            if (apkBean.getmFollowTrackExt() != null) {
                em.a(apkBean.getmFollowTrackExt().a());
            }
        } catch (Exception e3) {
            e3.toString();
            try {
                if (!TextUtils.isEmpty(apkBean.getApkUrl()) && apkBean.getApkUrl().contains("http")) {
                    HashMap map4 = this.f11914g;
                    if (map4 != null) {
                        map4.put(apkBean.getPkgName(), Boolean.TRUE);
                    }
                    Intent intent2 = new Intent();
                    intent2.setAction("android.intent.action.VIEW");
                    intent2.setData(Uri.parse(apkBean.getApkUrl()));
                    intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                    startActivity(intent2);
                }
            } catch (Exception e4) {
                e4.toString();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ApkBean apkBean) {
        if (apkBean == null) {
            return;
        }
        nh.a("DownloadService", "--appUpdate downloadApk start--");
        i7.a aVarA = i7.a();
        f11907j = aVarA;
        aVarA.a(new a(apkBean));
        f11907j.a(new i7.d(apkBean.getApkUrl(), apkBean.getDownloadPath(), apkBean.getApkName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Long l2, ApkBean apkBean) {
        try {
            File file = new File(apkBean.getDownloadPath(), apkBean.getPkgName() + ".zip");
            if (file.exists()) {
                String fileMD5 = apkBean.getFileMD5();
                String strA = g8.a(file.getAbsolutePath());
                if (TextUtils.isEmpty(fileMD5) || fileMD5.equals(strA)) {
                    if (file.exists()) {
                        File file2 = new File(apkBean.getDownloadPath(), apkBean.getApkName());
                        file.renameTo(file2);
                        nh.a("DownloadService", "apkFile......raName:" + file2.exists());
                    }
                    Intent intent = new Intent();
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                    intent.setAction("android.intent.action.VIEW");
                    Uri uriForFile = FileProvider.getUriForFile(context, this.f11909b, new File(apkBean.getDownloadPath(), apkBean.getApkName()));
                    intent.addFlags(3);
                    if (uriForFile != null) {
                        intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
                        context.startActivity(intent);
                        d(apkBean);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static File a(Context context, long j2) {
        Cursor cursorQuery;
        String path;
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        File file = null;
        if (j2 != -1) {
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterById(j2);
            query.setFilterByStatus(8);
            if (downloadManager != null && (cursorQuery = downloadManager.query(query)) != null) {
                if (cursorQuery.moveToFirst()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("local_uri"));
                    if (!TextUtils.isEmpty(string) && (path = Uri.parse(string).getPath()) != null) {
                        file = new File(path);
                    }
                }
                cursorQuery.close();
            }
        }
        return file;
    }
}
