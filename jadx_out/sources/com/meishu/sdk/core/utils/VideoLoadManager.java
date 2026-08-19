package com.meishu.sdk.core.utils;

import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.domain.HttpResponse;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class VideoLoadManager {

    /* renamed from: b, reason: collision with root package name */
    public static VideoLoadManager f31792b;

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, d> f31793a = new HashMap();

    public enum LoadState {
        IDLE,
        LOADING,
        SUCCESS,
        FAILED
    }

    public class a implements y {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f31794a;

        public a(String str) {
            this.f31794a = str;
        }

        @Override // com.meishu.sdk.core.utils.y
        public void onFailure(@NotNull IOException iOException) {
            VideoLoadManager videoLoadManager = VideoLoadManager.this;
            String str = this.f31794a;
            StringBuilder sbA = com.meishu.sdk.activity.a.a("load video error: ");
            sbA.append(iOException.getMessage());
            videoLoadManager.a(str, -1, sbA.toString());
        }

        @Override // com.meishu.sdk.core.utils.y
        public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
            if (httpResponse != null) {
                try {
                    if (httpResponse.isSuccessful()) {
                        byte[] responseBody = httpResponse.getResponseBody();
                        if (responseBody == null || responseBody.length <= 0) {
                            VideoLoadManager.this.a(this.f31794a, -1, "load video error: empty response");
                            return;
                        }
                        String str = this.f31794a;
                        try {
                            File fileA = com.meishu.sdk.core.bquery.g.a(str, (String) null);
                            com.meishu.sdk.core.bquery.g.a(fileA, responseBody);
                            if (fileA == null || !fileA.exists() || fileA.length() <= 0) {
                                VideoLoadManager.this.a(this.f31794a, -1, "load file error");
                                return;
                            }
                            VideoLoadManager videoLoadManager = VideoLoadManager.this;
                            synchronized (videoLoadManager) {
                                d dVar = videoLoadManager.f31793a.get(str);
                                if (dVar != null) {
                                    dVar.f31801a = LoadState.SUCCESS;
                                    dVar.f31802b = fileA;
                                    videoLoadManager.a(str, fileA, false);
                                }
                            }
                            return;
                        } catch (Throwable th) {
                            th.printStackTrace();
                            VideoLoadManager.this.a(this.f31794a, -1, "load file error");
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    VideoLoadManager videoLoadManager2 = VideoLoadManager.this;
                    String str2 = this.f31794a;
                    StringBuilder sbA = com.meishu.sdk.activity.a.a("load video error: ");
                    sbA.append(th2.getMessage());
                    videoLoadManager2.a(str2, -1, sbA.toString());
                    th2.printStackTrace();
                    return;
                }
            }
            VideoLoadManager.this.a(this.f31794a, -1, "load video error: unsuccessful response");
        }
    }

    public class b extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ List f31796a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f31797b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ File f31798c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ boolean f31799d;

        public b(VideoLoadManager videoLoadManager, List list, String str, File file, boolean z2) {
            this.f31796a = list;
            this.f31797b = str;
            this.f31798c = file;
            this.f31799d = z2;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            for (com.meishu.sdk.core.bquery.h hVar : this.f31796a) {
                if (hVar != null) {
                    hVar.a(this.f31797b, this.f31798c, this.f31799d);
                }
            }
        }
    }

    public static /* synthetic */ class c {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f31800a;

        static {
            int[] iArr = new int[LoadState.values().length];
            f31800a = iArr;
            try {
                iArr[LoadState.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31800a[LoadState.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31800a[LoadState.LOADING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31800a[LoadState.IDLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class d {

        /* renamed from: b, reason: collision with root package name */
        public File f31802b;

        /* renamed from: c, reason: collision with root package name */
        public int f31803c;

        /* renamed from: d, reason: collision with root package name */
        public String f31804d;

        /* renamed from: a, reason: collision with root package name */
        public LoadState f31801a = LoadState.IDLE;

        /* renamed from: e, reason: collision with root package name */
        public List<com.meishu.sdk.core.bquery.h<File>> f31805e = new ArrayList();
    }

    public final synchronized void a(String str, int i2, boolean z2, com.meishu.sdk.core.bquery.h<File> hVar, boolean z3) {
        com.meishu.sdk.core.bquery.h<File> hVar2;
        try {
            d dVar = this.f31793a.get(str);
            if (dVar == null) {
                dVar = new d();
                this.f31793a.put(str, dVar);
            }
            int i3 = c.f31800a[dVar.f31801a.ordinal()];
            if (i3 != 1) {
                if (i3 == 2) {
                    if (!z3 && hVar != null) {
                        SdkHandler.runOnMainThread(new s1(this, hVar, dVar.f31803c, dVar.f31804d));
                    }
                    dVar.f31801a = LoadState.IDLE;
                    dVar.f31805e.clear();
                } else if (i3 == 3) {
                    if (hVar != null) {
                        dVar.f31805e.add(hVar);
                    }
                    return;
                }
                hVar2 = hVar;
            } else {
                File file = dVar.f31802b;
                if (file == null || !file.exists()) {
                    hVar2 = hVar;
                    dVar.f31801a = LoadState.IDLE;
                } else {
                    long jCurrentTimeMillis = System.currentTimeMillis() - dVar.f31802b.lastModified();
                    if (dVar.f31802b.length() > 0 && jCurrentTimeMillis < i2) {
                        File file2 = dVar.f31802b;
                        if (hVar != null) {
                            SdkHandler.getInstance().runOnUiThread(new r1(this, hVar, str, file2, true));
                        }
                        return;
                    } else {
                        hVar2 = hVar;
                        dVar.f31802b.delete();
                        dVar.f31801a = LoadState.IDLE;
                    }
                }
            }
            if (hVar2 != null) {
                dVar.f31805e.add(hVar2);
            }
            if (z2) {
                com.meishu.sdk.core.bquery.g.a(AdSdk.getContext());
            }
            File file3 = null;
            File fileA = com.meishu.sdk.core.bquery.g.a(com.meishu.sdk.core.bquery.g.b(AdSdk.getContext()), str, null);
            if (fileA != null && fileA.exists()) {
                file3 = fileA;
            }
            if (file3 != null && file3.exists()) {
                long jCurrentTimeMillis2 = System.currentTimeMillis() - file3.lastModified();
                if (file3.length() > 0 && jCurrentTimeMillis2 < i2) {
                    dVar.f31801a = LoadState.SUCCESS;
                    dVar.f31802b = file3;
                    a(str, file3, true);
                    return;
                }
                file3.delete();
            }
            dVar.f31801a = LoadState.LOADING;
            a0.a(str, (y) new a(str), false);
        } finally {
        }
    }

    public final synchronized void a(String str, int i2, String str2) {
        d dVar = this.f31793a.get(str);
        if (dVar != null) {
            dVar.f31801a = LoadState.FAILED;
            dVar.f31803c = i2;
            dVar.f31804d = str2;
            d dVar2 = this.f31793a.get(str);
            if (dVar2 != null && !dVar2.f31805e.isEmpty()) {
                ArrayList arrayList = new ArrayList(dVar2.f31805e);
                dVar2.f31805e.clear();
                SdkHandler.runOnMainThread(new q1(this, arrayList, i2, str2));
            }
        }
    }

    public final void a(String str, File file, boolean z2) {
        d dVar = this.f31793a.get(str);
        if (dVar == null || dVar.f31805e.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(dVar.f31805e);
        dVar.f31805e.clear();
        SdkHandler.getInstance().runOnUiThread(new b(this, arrayList, str, file, z2));
    }
}
