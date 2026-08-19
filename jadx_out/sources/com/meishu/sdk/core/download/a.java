package com.meishu.sdk.core.download;

import android.os.Environment;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.LogUtil;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public ConcurrentHashMap<String, d> f31538a = new ConcurrentHashMap<>();

    /* renamed from: b, reason: collision with root package name */
    public g f31539b = new g();

    /* renamed from: c, reason: collision with root package name */
    public String f31540c = AdSdk.getContext().getApplicationContext().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath() + "/msdownload";

    /* renamed from: com.meishu.sdk.core.download.a$a, reason: collision with other inner class name */
    public static class C0651a {

        /* renamed from: a, reason: collision with root package name */
        public static final a f31541a = new a();
    }

    public static a b() {
        return C0651a.f31541a;
    }

    public String a() {
        return this.f31540c;
    }

    public g c() {
        return this.f31539b;
    }

    public void a(String str) {
        d dVar = this.f31538a.get(str);
        if (dVar != null) {
            ThreadPoolExecutor threadPoolExecutor = dVar.f31555c;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.remove(dVar);
            }
            Map<Object, h> map = dVar.f31557e;
            if (map != null) {
                map.remove(dVar.f31554b);
            }
            try {
                File file = new File(dVar.f31553a.f31544c);
                if (file.exists() && file.isFile()) {
                    LogUtil.e("DownloadTask", "file.delete");
                    file.delete();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        this.f31538a.remove(str);
    }

    public d b(String str) {
        return this.f31538a.get(str);
    }
}
