package com.octopus.ad;

import android.annotation.SuppressLint;
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
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.core.content.FileProvider;
import com.anythink.core.common.f.s;
import com.byazt.yi.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.octopus.ad.internal.c.c;
import com.octopus.ad.internal.c.n;
import java.io.File;
import java.util.HashMap;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public final class DownloadService extends Service {

    /* renamed from: f, reason: collision with root package name */
    private static c.a f33197f;

    /* renamed from: a, reason: collision with root package name */
    private long f33198a;

    /* renamed from: b, reason: collision with root package name */
    private String f33199b;

    /* renamed from: c, reason: collision with root package name */
    private DownloadManager f33200c;

    /* renamed from: d, reason: collision with root package name */
    private a f33201d;

    /* renamed from: e, reason: collision with root package name */
    private b f33202e;

    /* renamed from: g, reason: collision with root package name */
    private HashMap<String, com.octopus.ad.d.b> f33203g;

    /* renamed from: h, reason: collision with root package name */
    private HashMap<String, Boolean> f33204h;

    /* renamed from: i, reason: collision with root package name */
    private HashMap<Long, String> f33205i;

    public class a extends ContentObserver {
        public a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z2) {
            super.onChange(z2);
            int[] iArr = {0, 0, 0};
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = DownloadService.this.f33200c.query(new DownloadManager.Query().setFilterById(DownloadService.this.f33198a));
                    if (cursorQuery != null && cursorQuery.moveToFirst()) {
                        int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                        com.octopus.ad.d.b.f.a("DownloadService", "onChange status：" + i2);
                        if (i2 == 1) {
                            DownloadService.this.b(com.octopus.ad.d.c.a(DownloadService.this).a());
                        }
                        iArr[0] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("bytes_so_far"));
                        iArr[1] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(s.a.f3404f));
                        iArr[2] = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                        com.octopus.ad.d.b.f.a("DownloadService", "progress：" + iArr[0] + ServiceReference.DELIMITER + iArr[1]);
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception e2) {
                    com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
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

    public class b extends BroadcastReceiver {
        private b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                if ("android.intent.action.DOWNLOAD_COMPLETE".equals(intent.getAction())) {
                    long longExtra = intent.getLongExtra("extra_download_id", -1L);
                    DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
                    DownloadManager.Query query = new DownloadManager.Query();
                    query.setFilterById(longExtra);
                    Cursor cursorQuery = downloadManager.query(query);
                    if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                        DownloadService downloadService = DownloadService.this;
                        downloadService.a(Long.valueOf(downloadService.f33198a));
                    } else if (cursorQuery.getInt(cursorQuery.getColumnIndex("status")) == 8) {
                        DownloadService.this.a(context, longExtra);
                    }
                }
            } catch (Throwable th) {
                com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
            }
        }
    }

    private void d() {
        c.a aVar = f33197f;
        if (aVar != null) {
            aVar.a();
        }
        if (this.f33204h != null) {
            this.f33204h = null;
        }
        if (this.f33203g != null) {
            this.f33203g = null;
        }
        if (this.f33205i != null) {
            this.f33205i = null;
        }
        com.octopus.ad.d.c.a(this).f();
        com.octopus.ad.d.b.f.a("DownloadService", "releaseResources()");
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        com.octopus.ad.d.b.f.a("DownloadService", "DownloadService onCreate()");
        this.f33200c = (DownloadManager) getSystemService("download");
        this.f33201d = new a(new Handler());
        this.f33202e = new b();
        this.f33203g = new HashMap<>();
        this.f33204h = new HashMap<>();
        this.f33205i = new HashMap<>();
        a();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        com.octopus.ad.d.b.f.a("DownloadService", "DownloadService onDestroy()");
        b();
        d();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        if (intent == null) {
            return 1;
        }
        com.octopus.ad.d.b.f.a("DownloadService", "DownloadService onStartCommand()");
        c();
        return super.onStartCommand(intent, i2, i3);
    }

    private void b() {
        if (this.f33201d != null) {
            getContentResolver().unregisterContentObserver(this.f33201d);
            this.f33201d = null;
            com.octopus.ad.d.b.f.a("DownloadService", "unregisterContentObserver()");
        }
        b bVar = this.f33202e;
        if (bVar != null) {
            unregisterReceiver(bVar);
            this.f33202e = null;
            com.octopus.ad.d.b.f.a("DownloadService", "unregisterReceiver()");
        }
    }

    private void c() {
        com.octopus.ad.d.b bVarA = com.octopus.ad.d.c.a(this).a();
        if (bVarA == null) {
            return;
        }
        HashMap<String, com.octopus.ad.d.b> map = this.f33203g;
        if (map != null) {
            map.put(bVarA.c(), bVarA);
        }
        HashMap<String, Boolean> map2 = this.f33204h;
        if (map2 != null && map2.get(bVarA.c()) == null) {
            com.octopus.ad.d.b.f.a("DownloadService", "not have package status...");
            this.f33204h.put(bVarA.c(), Boolean.FALSE);
        }
        if (Octopus.getCustomController() != null && !TextUtils.isEmpty(Octopus.getCustomController().getAuthorities())) {
            this.f33199b = Octopus.getCustomController().getAuthorities();
        } else if (TextUtils.isEmpty(bVarA.g())) {
            this.f33199b = getPackageName() + ".octopus.provider";
        } else {
            this.f33199b = bVarA.g();
        }
        bVarA.a(this.f33199b);
        com.octopus.ad.d.b.c.a(bVarA.d());
        a(bVarA);
    }

    @SuppressLint({"WrongConstant", "UnspecifiedRegisterReceiverFlag"})
    private void a() {
        try {
            getContentResolver().registerContentObserver(Uri.parse("content://downloads/my_downloads"), true, this.f33201d);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.DOWNLOAD_COMPLETE");
            if (Build.VERSION.SDK_INT >= 26) {
                registerReceiver(this.f33202e, intentFilter, 2);
            } else {
                registerReceiver(this.f33202e, intentFilter);
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    private static File b(Context context, long j2) {
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

    private synchronized void a(com.octopus.ad.d.b bVar) {
        HashMap<String, Boolean> map = this.f33204h;
        if (map != null && map.get(bVar.c()) != null && Boolean.TRUE.equals(this.f33204h.get(bVar.c()))) {
            com.octopus.ad.d.b.f.a("DownloadService", "downloading..." + bVar.c() + "...please not repeat click");
            Toast.makeText(getApplicationContext(), "正在下载…请勿重复点击", 0).show();
            return;
        }
        File file = new File(bVar.d(), bVar.b());
        if (file.exists()) {
            try {
                com.octopus.ad.d.c.a(this).b(false);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                intent.setAction("android.intent.action.VIEW");
                Uri uriForFile = FileProvider.getUriForFile(this, bVar.g(), file);
                intent.addFlags(3);
                if (uriForFile != null) {
                    com.octopus.ad.d.b.f.a("DownloadService", "uri......" + uriForFile);
                    intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
                    startActivity(intent);
                    c(bVar);
                }
            } catch (Exception e2) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            }
        }
        try {
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(bVar.a()));
            request.setTitle(bVar.e());
            request.setDescription(bVar.f());
            request.setNotificationVisibility(1);
            request.setDestinationUri(Uri.fromFile(file));
            request.setMimeType(AdBaseConstants.MIME_APK);
            this.f33198a = this.f33200c.enqueue(request);
            com.octopus.ad.d.b.f.b("DownloadService", "mReqId:" + this.f33198a);
            HashMap<Long, String> map2 = this.f33205i;
            if (map2 != null) {
                map2.put(Long.valueOf(this.f33198a), bVar.c());
            }
            HashMap<String, Boolean> map3 = this.f33204h;
            if (map3 != null) {
                map3.put(bVar.c(), Boolean.TRUE);
            }
            Toast.makeText(getApplicationContext(), "已开始下载…", 0).show();
            com.octopus.ad.d.b.f.a("DownloadService", "BEGIN_DOWNLOAD!");
            if (bVar.h() != null) {
                n.a(bVar.h().a());
            }
        } catch (Exception e3) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e3);
            try {
                if (!TextUtils.isEmpty(bVar.a()) && bVar.a().contains("http")) {
                    HashMap<String, Boolean> map4 = this.f33204h;
                    if (map4 != null) {
                        map4.put(bVar.c(), Boolean.TRUE);
                    }
                    Intent intent2 = new Intent();
                    intent2.setAction("android.intent.action.VIEW");
                    intent2.setData(Uri.parse(bVar.a()));
                    intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                    startActivity(intent2);
                }
            } catch (Exception e4) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e4);
            }
        }
    }

    private void c(com.octopus.ad.d.b bVar) {
        com.octopus.ad.d.b.f.a("DownloadService", "BEGIN_INSTALL!");
        if (bVar.h() != null) {
            n.a(bVar.h().c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final com.octopus.ad.d.b bVar) {
        if (bVar == null) {
            return;
        }
        com.octopus.ad.d.b.f.a("DownloadService", "--appUpdate downloadApk start--");
        c.a aVarA = com.octopus.ad.internal.c.c.a();
        f33197f = aVarA;
        aVarA.a(new c.b() { // from class: com.octopus.ad.DownloadService.1
            @Override // com.octopus.ad.internal.c.c.b
            public void a(long j2, long j3) {
            }

            @Override // com.octopus.ad.internal.c.c.b
            public void b(File file) {
                com.octopus.ad.d.b.f.a("DownloadService", "--appUpdate downloadApk onSuccess--");
                if (DownloadService.this.f33204h != null) {
                    DownloadService.this.f33204h.put(bVar.c(), Boolean.FALSE);
                }
                DownloadService.this.a(DownloadService.this.getApplicationContext(), (Long) (-1L), bVar);
            }

            @Override // com.octopus.ad.internal.c.c.b
            public boolean a(File file) {
                return true;
            }

            @Override // com.octopus.ad.internal.c.c.b
            public void a(int i2) {
                com.octopus.ad.d.b.f.a("DownloadService", "--appUpdate downloadApk onFail--");
                try {
                    String strA = bVar.a();
                    if (TextUtils.isEmpty(strA) || !strA.contains("http")) {
                        return;
                    }
                    if (DownloadService.this.f33204h != null) {
                        DownloadService.this.f33204h.put(bVar.c(), Boolean.TRUE);
                    }
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.setData(Uri.parse(strA));
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                    DownloadService.this.startActivity(intent);
                } catch (Exception e2) {
                    com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                }
            }
        });
        f33197f.a(new c.d(bVar.a(), bVar.d(), bVar.b()));
    }

    public void a(Long l2) {
        try {
            HashMap<Long, String> map = this.f33205i;
            if (map != null) {
                String str = map.get(l2);
                if (!TextUtils.isEmpty(str)) {
                    HashMap<String, Boolean> map2 = this.f33204h;
                    if (map2 != null) {
                        map2.put(str, Boolean.FALSE);
                    }
                    HashMap<String, com.octopus.ad.d.b> map3 = this.f33203g;
                    if (map3 != null) {
                        map3.remove(str);
                    }
                }
            }
            DownloadManager downloadManager = this.f33200c;
            if (downloadManager == null || l2 == null) {
                return;
            }
            downloadManager.remove(l2.longValue());
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, long j2) {
        com.octopus.ad.d.b.f.a("DownloadService", "onReceived...download finish...begin install！");
        HashMap<Long, String> map = this.f33205i;
        if (map == null || this.f33203g == null) {
            return;
        }
        String str = map.get(Long.valueOf(j2));
        HashMap<String, Boolean> map2 = this.f33204h;
        if (map2 != null) {
            map2.put(str, Boolean.FALSE);
        }
        com.octopus.ad.d.b bVar = this.f33203g.get(str);
        if (bVar != null) {
            if (bVar.h() != null) {
                n.a(bVar.h().b());
            }
            a(context, Long.valueOf(j2), bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Long l2, com.octopus.ad.d.b bVar) {
        try {
            com.octopus.ad.d.c.a(context).b(false);
            Intent intent = new Intent();
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.setAction("android.intent.action.VIEW");
            Uri uriForFile = FileProvider.getUriForFile(context, this.f33199b, new File(bVar.d(), bVar.b()));
            intent.addFlags(3);
            if (uriForFile != null) {
                com.octopus.ad.d.b.f.a("DownloadService", "uri......" + uriForFile);
                intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
                context.startActivity(intent);
                c(bVar);
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }
}
