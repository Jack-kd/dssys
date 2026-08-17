package com.beizi.fusion.asnp.adn.ad.download.service;

import android.app.DownloadManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.core.content.FileProvider;
import com.beizi.fusion.asnp.adn.ad.download.service.a;
import com.beizi.fusion.f8;
import com.beizi.fusion.j0;
import com.beizi.fusion.qo;
import com.beizi.fusion.th;
import com.beizi.fusion.v9;
import com.beizi.fusion.z9;
import com.beizi.fusion.zf;
import com.byazt.yi.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.umeng.analytics.pro.bz;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public class DownloadService extends Service implements com.beizi.fusion.asnp.adn.ad.download.service.a {

    /* renamed from: a, reason: collision with root package name */
    private b f12939a;

    /* renamed from: b, reason: collision with root package name */
    private d f12940b;

    /* renamed from: c, reason: collision with root package name */
    private c f12941c;

    /* renamed from: d, reason: collision with root package name */
    private Map f12942d;

    /* renamed from: e, reason: collision with root package name */
    private Map f12943e;

    public class a implements a.b {
        public a() {
        }

        @Override // com.beizi.fusion.asnp.adn.ad.download.service.a.b
        public void a(a.C0150a c0150a) {
            DownloadService.this.a(c0150a, z9.a.DOWNLOAD_CONTINUE);
        }

        @Override // com.beizi.fusion.asnp.adn.ad.download.service.a.b
        public void b(a.C0150a c0150a) {
            DownloadService.this.a(c0150a, z9.a.DOWNLOAD_FAILED);
        }

        @Override // com.beizi.fusion.asnp.adn.ad.download.service.a.b
        public void c(a.C0150a c0150a) {
            DownloadService.this.a(c0150a, z9.a.DOWNLOAD_PAUSE);
        }
    }

    public class b extends Binder {
        public b() {
        }

        public com.beizi.fusion.asnp.adn.ad.download.service.a a() {
            return DownloadService.this;
        }
    }

    public class c extends ContentObserver {
        public c(Handler handler) {
            super(handler);
        }

        private long[] a(Map map) {
            if (map == null || map.isEmpty()) {
                return null;
            }
            Set setKeySet = map.keySet();
            long[] jArr = new long[setKeySet.size()];
            Iterator it = setKeySet.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                jArr[i2] = ((Long) it.next()).longValue();
                i2++;
            }
            return jArr;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z2) {
            a.C0150a c0150a;
            super.onChange(z2);
            DownloadManager downloadManager = (DownloadManager) DownloadService.this.getApplicationContext().getSystemService("download");
            Cursor cursorQuery = null;
            try {
                long[] jArrA = a(DownloadService.this.f12943e);
                if (jArrA != null && jArrA.length > 0) {
                    DownloadManager.Query query = new DownloadManager.Query();
                    query.setFilterById(jArrA);
                    cursorQuery = downloadManager.query(query);
                    while (cursorQuery.moveToNext()) {
                        long j2 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow(bz.f48985d));
                        int i2 = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("status"));
                        if (DownloadService.this.f12943e != null && DownloadService.this.f12943e.containsKey(Long.valueOf(j2)) && (c0150a = (a.C0150a) DownloadService.this.f12943e.get(Long.valueOf(j2))) != null) {
                            c0150a.a(i2);
                        }
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (IllegalArgumentException unused) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        }
    }

    public class d extends BroadcastReceiver {
        private d() {
        }

        private boolean a(Context context, Uri uri) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            intent.addFlags(1);
            intent.setDataAndType(uri, AdBaseConstants.MIME_APK);
            return zf.c(context, intent);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            a.C0150a c0150aA;
            Uri uriA;
            if (intent != null) {
                long longExtra = intent.getLongExtra("extra_download_id", -1L);
                if (longExtra <= 0 || (uriA = a(context, longExtra, (c0150aA = a(longExtra)))) == null) {
                    return;
                }
                DownloadService.this.a(c0150aA, z9.a.DOWNLOAD_COMPLETE);
                if (a(context, uriA)) {
                    DownloadService.this.a(c0150aA, z9.a.INSTALL_START);
                }
            }
        }

        public /* synthetic */ d(DownloadService downloadService, a aVar) {
            this();
        }

        private a.C0150a a(long j2) {
            if (DownloadService.this.f12943e == null || !DownloadService.this.f12943e.containsKey(Long.valueOf(j2))) {
                return null;
            }
            return (a.C0150a) DownloadService.this.f12943e.get(Long.valueOf(j2));
        }

        private Uri a(Context context, long j2, a.C0150a c0150a) {
            if (c0150a == null) {
                return null;
            }
            File file = new File(context.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS), qo.b(c0150a.b()));
            String strA = c0150a.a();
            if (!file.exists() || !a(file, strA)) {
                return null;
            }
            try {
                return FileProvider.getUriForFile(context, String.format("%s.bz.fileprovider", context.getPackageName()), file);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        private boolean a(File file, String str) {
            if (file != null) {
                return TextUtils.isEmpty(str) || str.equalsIgnoreCase(f8.a(file));
            }
            return false;
        }

        private Uri a(DownloadManager downloadManager, long j2) {
            int columnIndexOrThrow;
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterById(j2);
            query.setFilterByStatus(8);
            try {
                Cursor cursorQuery = downloadManager.query(query);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst() && (columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("local_uri")) >= 0) {
                            String string = cursorQuery.getString(columnIndexOrThrow);
                            if (!TextUtils.isEmpty(string)) {
                                Uri uri = Uri.parse(string);
                                cursorQuery.close();
                                return uri;
                            }
                        }
                    } finally {
                    }
                }
                if (cursorQuery == null) {
                    return null;
                }
                cursorQuery.close();
                return null;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }

    public static class e extends Handler {
        public /* synthetic */ e(Looper looper, a aVar) {
            this(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
        }

        private e(Looper looper) {
            super(looper);
        }
    }

    private void b() {
        ContentResolver contentResolver;
        if (this.f12940b != null) {
            getApplicationContext().unregisterReceiver(this.f12940b);
        }
        if (this.f12941c == null || (contentResolver = getApplicationContext().getContentResolver()) == null) {
            return;
        }
        contentResolver.unregisterContentObserver(this.f12941c);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f12939a;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f12942d = new HashMap();
        this.f12943e = new HashMap();
        this.f12939a = new b();
        a();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        b();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        return 2;
    }

    private void a() {
        a aVar = null;
        this.f12940b = new d(this, aVar);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DOWNLOAD_COMPLETE");
        if (Build.VERSION.SDK_INT > 32) {
            getApplicationContext().registerReceiver(this.f12940b, intentFilter, 2);
        } else {
            getApplicationContext().registerReceiver(this.f12940b, intentFilter);
        }
        this.f12941c = new c(new e(getMainLooper(), aVar));
        ContentResolver contentResolver = getApplicationContext().getContentResolver();
        if (contentResolver != null) {
            contentResolver.registerContentObserver(Uri.parse("content://downloads/my_downloads"), true, this.f12941c);
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.download.service.a
    public void a(a.C0150a c0150a) {
        if (c0150a == null || a(c0150a.b())) {
            return;
        }
        c0150a.a(new a());
        long jA = a(c0150a.b(), c0150a.c());
        if (jA > 0) {
            a(c0150a, z9.a.DOWNLOAD_START);
            c0150a.a(jA);
            this.f12942d.put(th.a(c0150a.b()), Long.valueOf(jA));
            this.f12943e.put(Long.valueOf(jA), c0150a);
        }
    }

    private boolean a(String str) {
        Long l2;
        String strA = th.a(str);
        return this.f12942d.containsKey(strA) && (l2 = (Long) this.f12942d.get(strA)) != null && l2.longValue() > 0;
    }

    private long a(String str, String str2) {
        DownloadManager downloadManager = (DownloadManager) getApplicationContext().getSystemService("download");
        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
        if (TextUtils.isEmpty(str2)) {
            str2 = qo.b(str);
        }
        request.setTitle(str2);
        request.setVisibleInDownloadsUi(true);
        request.allowScanningByMediaScanner();
        request.setNotificationVisibility(1);
        request.setDestinationInExternalFilesDir(getApplicationContext(), Environment.DIRECTORY_DOWNLOADS, qo.b(str));
        return downloadManager.enqueue(request);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a.C0150a c0150a, z9.a aVar) {
        if (c0150a != null) {
            ((v9) j0.a().b(getApplicationContext())).a(aVar, c0150a.d(), c0150a.e());
        }
    }
}
