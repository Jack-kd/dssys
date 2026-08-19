package com.meishu.sdk.core.loader;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.browser.trusted.sharing.ShareTarget;
import com.anythink.core.common.d.i;
import com.anythink.core.common.m.AbstractC1114b;
import com.google.gson.Gson;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.MSAdConfig;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.banner.BannerAdLoader;
import com.meishu.sdk.core.ad.draw.DrawAdLoader;
import com.meishu.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader;
import com.meishu.sdk.core.ad.interstitial.InterstitialAdLoader;
import com.meishu.sdk.core.ad.paster.PasterAdLoader;
import com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader;
import com.meishu.sdk.core.ad.reward.RewardVideoLoader;
import com.meishu.sdk.core.ad.splash.SplashAdLoader;
import com.meishu.sdk.core.domain.ClickIdResponse;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.exception.a;
import com.meishu.sdk.core.loader.IAdLoadListener;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.PackageBean;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.c;
import com.meishu.sdk.core.utils.d;
import com.meishu.sdk.core.utils.d1;
import com.meishu.sdk.core.utils.f0;
import com.meishu.sdk.core.utils.g1;
import com.meishu.sdk.core.utils.h0;
import com.meishu.sdk.core.utils.h1;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.j;
import com.meishu.sdk.core.utils.k0;
import com.meishu.sdk.core.utils.m1;
import com.meishu.sdk.core.utils.q0;
import com.meishu.sdk.core.utils.r;
import com.meishu.sdk.core.utils.r0;
import com.meishu.sdk.core.utils.u;
import com.meishu.sdk.core.utils.v;
import com.meishu.sdk.core.utils.v0;
import com.meishu.sdk.core.utils.y;
import com.meishu.sdk.core.utils.y0;
import com.meishu.sdk.core.utils.z;
import com.meishu.sdk.platform.ADPlatformHelper;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.Thread;
import java.net.InetAddress;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicLong;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public abstract class c<T extends IAdLoadListener> implements IAdLoader {
    public static final String KEY_TOKEN = "KEY_TOKEN";
    private static final String TAG = "AdLoader";
    private static final AtomicLong adCounter;
    private static final Map<AdType, AtomicLong> adTypeCounter;
    private static String checkSupport;
    private static Cipher cryptCipher;
    private static byte[] cryptKey;
    private static String cryptKeyStr;
    private static final Map<String, String> hashParams;
    private static final String[] queryParams;

    /* renamed from: T1, reason: collision with root package name */
    private long f31587T1;
    private long T10;
    private long T2;
    private long T3;
    private long T8;
    private long T9;
    public Integer accept_ad_height;
    public Integer accept_ad_width;
    public String channel;
    public Context context;
    private volatile boolean isLoadSucc;
    private volatile boolean isLoadTimeout;
    public T loaderListener;
    private com.meishu.sdk.core.loader.concurrent.e loaderManager;
    public String posId;
    public long startLoadTime;

    public class a implements y {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Map f31588a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Map f31589b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Map f31590c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ Map f31591d;

        public a(Map map, Map map2, Map map3, Map map4) {
            this.f31588a = map;
            this.f31589b = map2;
            this.f31590c = map3;
            this.f31591d = map4;
        }

        @Override // com.meishu.sdk.core.utils.y
        public void onFailure(@NotNull IOException iOException) {
            LogUtil.e(c.TAG, "onFailure: " + iOException);
            if (c.this.isLoadTimeout) {
                return;
            }
            c.this.isLoadSucc = true;
            try {
                if (iOException.getMessage().contains("CLEARTEXT")) {
                    c cVar = c.this;
                    cVar.retryNet(cVar.getRequestBody("https://sdk.1rtb.net/sdk/req_ad", this.f31588a, this.f31589b, this.f31590c), this.f31591d);
                    return;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            c.this.handleNoAd(iOException.toString());
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0048  */
        @Override // com.meishu.sdk.core.utils.y
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onResponse(com.meishu.sdk.core.domain.HttpResponse<byte[]> r5) throws java.io.IOException {
            /*
                r4 = this;
                com.meishu.sdk.core.loader.c r0 = com.meishu.sdk.core.loader.c.this
                boolean r0 = com.meishu.sdk.core.loader.c.access$000(r0)
                if (r0 == 0) goto La
                goto L9f
            La:
                com.meishu.sdk.core.loader.c r0 = com.meishu.sdk.core.loader.c.this
                r1 = 1
                com.meishu.sdk.core.loader.c.access$102(r0, r1)
                com.meishu.sdk.core.loader.c r0 = com.meishu.sdk.core.loader.c.this
                long r1 = java.lang.System.currentTimeMillis()
                com.meishu.sdk.core.loader.c.access$402(r0, r1)
                int r0 = r5.getErrorCode()
                r1 = 200(0xc8, float:2.8E-43)
                if (r0 != r1) goto L2f
                com.meishu.sdk.core.loader.c r0 = com.meishu.sdk.core.loader.c.this
                java.lang.Object r5 = r5.getResponseBody()
                byte[] r5 = (byte[]) r5
                java.util.Map r1 = r4.f31591d
                com.meishu.sdk.core.loader.c.access$500(r0, r5, r1)
                return
            L2f:
                okhttp3.Headers r0 = r5.getHeader()
                if (r0 == 0) goto L48
                java.lang.String r1 = "Err_msg"
                java.lang.String r0 = r0.get(r1)
                boolean r1 = android.text.TextUtils.isEmpty(r0)
                if (r1 != 0) goto L48
                java.lang.String r1 = "UTF-8"
                java.lang.String r0 = java.net.URLDecoder.decode(r0, r1)
                goto L4a
            L48:
                java.lang.String r0 = ""
            L4a:
                java.lang.String r1 = "http code: "
                java.lang.StringBuilder r1 = com.meishu.sdk.activity.a.a(r1)
                int r2 = r5.getErrorCode()
                r1.append(r2)
                java.lang.String r2 = ",errMsg="
                r1.append(r2)
                r1.append(r0)
                java.lang.String r1 = r1.toString()
                java.lang.String r2 = "AdLoader"
                com.meishu.sdk.core.utils.LogUtil.d(r2, r1)
                com.meishu.sdk.core.loader.c r1 = com.meishu.sdk.core.loader.c.this
                java.lang.String r2 = "错误码为："
                java.lang.StringBuilder r2 = com.meishu.sdk.activity.a.a(r2)
                int r3 = r5.getErrorCode()
                r2.append(r3)
                java.lang.String r3 = ",msg="
                r2.append(r3)
                r2.append(r0)
                java.lang.String r0 = r2.toString()
                r1.handleNoAd(r0)
                java.lang.String[] r0 = com.meishu.sdk.core.exception.ErrorCodeUtil.ERROR_REPORT_URL
                if (r0 == 0) goto L9f
                int r1 = r0.length
                if (r1 <= 0) goto L9f
                r1 = 0
                r0 = r0[r1]
                int r1 = r5.getErrorCode()
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                java.lang.String r5 = r5.getErrorDescription()
                com.meishu.sdk.core.utils.a0.a(r0, r1, r5)
            L9f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.loader.c.a.onResponse(com.meishu.sdk.core.domain.HttpResponse):void");
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (c.this.isLoadSucc) {
                    return;
                }
                c.this.isLoadTimeout = true;
                c.this.handleNoAd("load ad timeout");
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: com.meishu.sdk.core.loader.c$c, reason: collision with other inner class name */
    public class C0653c implements y {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Map f31594a;

        public C0653c(Map map) {
            this.f31594a = map;
        }

        @Override // com.meishu.sdk.core.utils.y
        public void onFailure(@NotNull IOException iOException) {
            LogUtil.e(c.TAG, "onFailure: " + iOException);
            c.this.handleNoAd(iOException.toString());
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
        @Override // com.meishu.sdk.core.utils.y
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onResponse(com.meishu.sdk.core.domain.HttpResponse<byte[]> r5) throws java.io.IOException {
            /*
                r4 = this;
                int r0 = r5.getErrorCode()
                r1 = 200(0xc8, float:2.8E-43)
                if (r0 != r1) goto L16
                com.meishu.sdk.core.loader.c r0 = com.meishu.sdk.core.loader.c.this
                java.lang.Object r5 = r5.getResponseBody()
                byte[] r5 = (byte[]) r5
                java.util.Map r1 = r4.f31594a
                com.meishu.sdk.core.loader.c.access$500(r0, r5, r1)
                return
            L16:
                okhttp3.Headers r0 = r5.getHeader()
                if (r0 == 0) goto L2f
                java.lang.String r1 = "Err_msg"
                java.lang.String r0 = r0.get(r1)
                boolean r1 = android.text.TextUtils.isEmpty(r0)
                if (r1 != 0) goto L2f
                java.lang.String r1 = "UTF-8"
                java.lang.String r0 = java.net.URLDecoder.decode(r0, r1)
                goto L31
            L2f:
                java.lang.String r0 = ""
            L31:
                java.lang.String r1 = "http code: "
                java.lang.StringBuilder r1 = com.meishu.sdk.activity.a.a(r1)
                int r2 = r5.getErrorCode()
                r1.append(r2)
                java.lang.String r2 = ",errMsg="
                r1.append(r2)
                r1.append(r0)
                java.lang.String r1 = r1.toString()
                java.lang.String r2 = "AdLoader"
                com.meishu.sdk.core.utils.LogUtil.d(r2, r1)
                com.meishu.sdk.core.loader.c r1 = com.meishu.sdk.core.loader.c.this
                java.lang.String r2 = "错误码为："
                java.lang.StringBuilder r2 = com.meishu.sdk.activity.a.a(r2)
                int r3 = r5.getErrorCode()
                r2.append(r3)
                java.lang.String r3 = ",msg="
                r2.append(r3)
                r2.append(r0)
                java.lang.String r0 = r2.toString()
                r1.handleNoAd(r0)
                java.lang.String[] r0 = com.meishu.sdk.core.exception.ErrorCodeUtil.ERROR_REPORT_URL
                if (r0 == 0) goto L86
                int r1 = r0.length
                if (r1 <= 0) goto L86
                r1 = 0
                r0 = r0[r1]
                int r1 = r5.getErrorCode()
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                java.lang.String r5 = r5.getErrorDescription()
                com.meishu.sdk.core.utils.a0.a(r0, r1, r5)
            L86:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.loader.c.C0653c.onResponse(com.meishu.sdk.core.domain.HttpResponse):void");
        }
    }

    public class d extends l {
        public d(c cVar) {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                List<InetAddress> listAsList = Arrays.asList(InetAddress.getAllByName("sdk.1rtb.net"));
                synchronized (u.class) {
                    u.f32030a = listAsList;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class e extends l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f31596a;

        public e(c cVar, String str) {
            this.f31596a = str;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            v0.a(this.f31596a, 1);
        }
    }

    public class f implements z<q0> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ MeishuAdInfo f31597a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Map f31598b;

        public f(MeishuAdInfo meishuAdInfo, Map map) {
            this.f31597a = meishuAdInfo;
            this.f31598b = map;
        }

        @Override // com.meishu.sdk.core.utils.z
        public void a(q0 q0Var) throws IOException {
            q0 q0Var2 = q0Var;
            try {
                if (!q0Var2.f31957a) {
                    LogUtil.d(c.TAG, "onResponse: 从dUrl请求clickId失败");
                    c.this.handleNoAd("onResponse: 从dUrl请求clickId失败");
                    return;
                }
                ClickIdResponse clickIdResponse = (ClickIdResponse) v.f32031a.fromJson(q0Var2.f31959c, ClickIdResponse.class);
                if (clickIdResponse != null) {
                    this.f31597a.setClickid(clickIdResponse.getData().getClickid());
                    this.f31597a.setdUrl(new String[]{clickIdResponse.getData().getDstlink()});
                }
                c.this.loadAd(this.f31597a, this.f31598b);
            } catch (Exception e2) {
                LogUtil.e(c.TAG, "onResponse: ", e2);
                c.this.handleNoAd(e2.toString());
            }
        }

        @Override // com.meishu.sdk.core.utils.z
        public void onFailure(@NotNull IOException iOException) {
            LogUtil.e(c.TAG, "onFailure: " + iOException);
            c.this.handleNoAd(iOException.toString());
        }
    }

    public class g extends l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ MeishuAdInfo f31600a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Map f31601b;

        public class a extends l {
            public a() {
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                f0.a(g.this.f31600a.getDefImage(), false, null);
                d1.b(g.this.f31600a.getReward_tmp_url());
                d1.b(g.this.f31600a.getWebTempUrl());
            }
        }

        public g(MeishuAdInfo meishuAdInfo, Map map) {
            this.f31600a = meishuAdInfo;
            this.f31601b = map;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() throws IOException {
            boolean z2;
            v0.a(c.this.posId, 2);
            String[] rstUrl = this.f31600a.getRstUrl();
            if (rstUrl != null) {
                for (String str : rstUrl) {
                    a0.a(c.this.getContext(), i0.a(str.replace("__MS_STAT__", c.this.T8 + i.f2495E + c.this.T9 + i.f2495E + c.this.T10)), new com.meishu.sdk.core.utils.i());
                }
            }
            if (this.f31600a.getMonitorUrl() == null || this.f31600a.getMonitorUrl().length <= 0 || !ADPlatformHelper.checkTypeSupport(c.this, "MS")) {
                z2 = false;
            } else {
                z2 = true;
                this.f31600a.setHasMeishuAd(true);
            }
            c.this.handleDynamicClick(this.f31600a);
            c.this.handleCsj(this.f31600a);
            ExecutorService executorService = h0.f31906a;
            h0.b.f31910a.a(new a());
            SdkAdInfo[] sdkAdInfoArrFilterValidSdk = ADPlatformHelper.filterValidSdk(c.this.getContext(), this.f31600a.getSdk(), c.this);
            c cVar = c.this;
            cVar.loaderManager = new com.meishu.sdk.core.loader.concurrent.e(cVar.getContext(), c.this, this.f31600a, this.f31601b);
            if (z2) {
                if (this.f31600a.getLayout() != null) {
                    com.meishu.sdk.core.utils.c cVar2 = c.a.f31839a;
                    Context context = c.this.context;
                    cVar2.f31838a = this.f31600a.getLayout();
                    try {
                        String json = new Gson().toJson(cVar2.f31838a);
                        File file = new File(context.getExternalCacheDir(), "ms_cache");
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(new File(file.getAbsolutePath(), "ms_temp.json")));
                        bufferedWriter.write(json);
                        bufferedWriter.flush();
                        bufferedWriter.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                MeishuAdInfo meishuAdInfo = this.f31600a;
                try {
                    meishuAdInfo.setEventUrl(i0.a(meishuAdInfo.getSourceEventUrl(), meishuAdInfo.getFrom_id()));
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                c cVar3 = c.this;
                c.this.loaderManager.f31626f = cVar3.createMeishuAdDelegate(cVar3.context, this.f31600a);
            }
            if (sdkAdInfoArrFilterValidSdk != null && sdkAdInfoArrFilterValidSdk.length > 0) {
                c.this.loaderManager.a(sdkAdInfoArrFilterValidSdk, this.f31600a);
                return;
            }
            if (!z2) {
                c.this.handleNoAd("加载平台为空");
                return;
            }
            com.meishu.sdk.core.loader.concurrent.e eVar = c.this.loaderManager;
            if (eVar.b(null, eVar.f31622b)) {
                return;
            }
            eVar.a(false);
        }
    }

    public class h extends l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f31604a;

        public h(String str) {
            this.f31604a = str;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            new com.meishu.sdk.platform.ms.d(this.f31604a, ErrorCodeUtil.AD_LOAD_ERROR).post(c.this.loaderListener);
        }
    }

    static {
        HashMap map = new HashMap();
        hashParams = map;
        map.put("device_imei", "");
        adCounter = new AtomicLong();
        adTypeCounter = new HashMap();
        for (AdType adType : AdType.values()) {
            adTypeCounter.put(adType, new AtomicLong());
        }
        queryParams = new String[]{"app_id", "pid", "accept_ad_type", "sdk_version", "sdk_version_code", "device_os"};
        try {
            cryptKey = new byte[16];
            new SecureRandom().nextBytes(cryptKey);
            cryptKeyStr = m1.a(cryptKey).toLowerCase();
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cryptCipher = cipher;
            cipher.init(2, new SecretKeySpec(cryptKey, "AES"), new IvParameterSpec(MessageDigest.getInstance("MD5").digest((cryptKeyStr + MSAdConfig.initUUID()).getBytes())));
        } catch (Exception e2) {
            cryptKeyStr = null;
            cryptCipher = null;
            e2.printStackTrace();
        }
    }

    private void asynGetDns() {
        ExecutorService executorService = h0.f31906a;
        h0.b.f31910a.a(new d(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0080 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:? A[Catch: all -> 0x0039, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #14 {, blocks: (B:5:0x0005, B:22:0x0035, B:26:0x003c, B:27:0x003f, B:59:0x007b, B:61:0x0080, B:63:0x0085, B:64:0x0088, B:49:0x0067, B:51:0x006c, B:53:0x0071, B:71:0x00e3, B:73:0x00e9, B:76:0x00f3, B:70:0x00e0, B:65:0x0089, B:67:0x008f), top: B:104:0x0005, inners: #4, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0071 A[Catch: all -> 0x0039, IOException -> 0x0089, TRY_ENTER, TRY_LEAVE, TryCatch #6 {IOException -> 0x0089, blocks: (B:27:0x003f, B:53:0x0071), top: B:94:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x008f A[Catch: all -> 0x00df, TRY_LEAVE, TryCatch #18 {all -> 0x00df, blocks: (B:65:0x0089, B:67:0x008f), top: B:109:0x0089, outer: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e9 A[Catch: all -> 0x0039, Exception -> 0x00f2, TRY_LEAVE, TryCatch #4 {Exception -> 0x00f2, blocks: (B:71:0x00e3, B:73:0x00e9), top: B:91:0x00e3, outer: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x006c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized java.lang.String decryptBody(byte[] r10) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.loader.c.decryptBody(byte[]):java.lang.String");
    }

    private Map<String, String> generateParams(Map<String, String> map) {
        Integer num = this.accept_ad_width;
        if (num != null && num.intValue() >= 0) {
            map.put("accept_ad_width", String.valueOf(this.accept_ad_width));
        }
        Integer num2 = this.accept_ad_height;
        if (num2 != null && num2.intValue() >= 0) {
            map.put("accept_ad_height", String.valueOf(this.accept_ad_height));
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Request getRequestBody(String str, Map<String, String> map, Map<String, String> map2, Map<String, String> map3) {
        String str2 = "message=" + map2.get("message") + "&nonce=" + map2.get("nonce") + "&" + com.umeng.ccg.a.f49739A + "=" + map2.get(com.umeng.ccg.a.f49739A) + "&enc=" + map2.get("enc") + "&s0=" + this.f31587T1 + i.f2495E + this.T2 + i.f2495E + this.T3 + "&s1=" + r.f31964e + i.f2495E + r.f31965f + i.f2495E + a0.f31809d + i.f2495E + a0.f31810e;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if ("app_id".equals(key)) {
                    value = URLEncoder.encode(value);
                }
                if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value)) {
                    if (sb.toString().contains("?")) {
                        sb.append("&");
                        sb.append(key);
                        sb.append("=");
                        sb.append(value);
                    } else {
                        sb.append("?");
                        sb.append(key);
                        sb.append("=");
                        sb.append(value);
                    }
                }
            }
        }
        Request.Builder builderUrl = new Request.Builder().url(sb.toString());
        builderUrl.post(RequestBody.create(MediaType.parse("application/x-www-form-urlencoded; charset=utf-8"), str2));
        if (map3 != null) {
            Headers.Builder builder = new Headers.Builder();
            for (Map.Entry<String, String> entry2 : map3.entrySet()) {
                builder.add(entry2.getKey(), entry2.getValue());
            }
            builderUrl.headers(builder.build());
        }
        return builderUrl.build();
    }

    private h1 getUrlFromToken(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return (h1) new Gson().fromJson(new String(g1.a(str.split("\\|")[1])), h1.class);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCsj(MeishuAdInfo meishuAdInfo) {
        SdkAdInfo[] sdk = meishuAdInfo.getSdk();
        if (sdk != null) {
            for (SdkAdInfo sdkAdInfo : sdk) {
                if ("CSJ-GM".equals(sdkAdInfo.getSdk())) {
                    sdkAdInfo.setCsjGM(true);
                    k0.f31920b = true;
                    sdkAdInfo.setSdk("CSJ");
                    if ("bidding".equals(sdkAdInfo.getOtype())) {
                        sdkAdInfo.setOtype("price");
                        sdkAdInfo.setCsjGMBidding(true);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDynamicClick(MeishuAdInfo meishuAdInfo) {
        StringBuilder sbA = com.meishu.sdk.activity.a.a("act_type=");
        sbA.append(meishuAdInfo.getAct_type());
        LogUtil.d(TAG, sbA.toString());
        MeishuAdInfo.DClickData dclk = meishuAdInfo.getDclk();
        if (dclk != null) {
            int power = dclk.getPower();
            if (dclk.getPtime() <= 0 || power >= meishuAdInfo.getPower_index()) {
                return;
            }
            HashMap<String, v0.a> map = v0.f32032a;
            v0.a(meishuAdInfo.getPid(), 6);
        }
    }

    private void handleTimeout() {
        this.isLoadTimeout = false;
        this.isLoadSucc = false;
        if (getAdType() != AdType.SPLASH || getFetchDelay() <= 0) {
            return;
        }
        int i2 = 500;
        try {
            PackageBean.AdBean adBean = r0.f31982m;
            if (adBean != null && adBean.getSplash() != null) {
                int to = r0.f31982m.getSplash().getTo();
                if (to >= 0) {
                    i2 = to;
                }
            }
        } catch (Throwable unused) {
        }
        SdkHandler.getInstance().postDelay(new b(), getFetchDelay() + i2);
    }

    public static String isSupportTurn() {
        if ((TextUtils.isEmpty(checkSupport) || "false".equalsIgnoreCase(checkSupport)) && AdSdk.getContext() != null) {
            if (com.meishu.sdk.core.utils.h.e(r.a().a("shake_act_type", 0))) {
                checkSupport = "true";
            } else {
                checkSupport = "false";
            }
        }
        return checkSupport;
    }

    private void loadGDTAD(MeishuAdInfo meishuAdInfo, Map<String, Object> map) {
        a0.a(meishuAdInfo.getdUrl()[0], (Map<String, String>) null, new f(meishuAdInfo, map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLoadSuccess(byte[] bArr, Map<String, Object> map) {
        try {
            MeishuAdInfo meishuAdInfoFromJson = MeishuAdInfo.fromJson(decryptBody(bArr), getAdType());
            this.T10 = System.currentTimeMillis();
            if (meishuAdInfoFromJson == null) {
                handleNoAd("meishuAdInfo is null");
                return;
            }
            meishuAdInfoFromJson.setPid(this.posId);
            meishuAdInfoFromJson.setLoadedTime(SystemClock.uptimeMillis());
            saveWxAppid(meishuAdInfoFromJson.getWx_appid());
            if (meishuAdInfoFromJson.getTarget_type() == 1 && "GDT".equalsIgnoreCase(meishuAdInfoFromJson.getFrom())) {
                loadGDTAD(meishuAdInfoFromJson, map);
            } else {
                loadAd(meishuAdInfoFromJson, map);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            handleNoAd(e2.toString());
        }
    }

    private void preLoadVideo(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            getUrlFromToken(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retryNet(Request request, Map<String, Object> map) {
        a0.a(request, new C0653c(map));
    }

    private void saveLoadRecord(String str, int i2) {
        ExecutorService executorService = h0.f31906a;
        h0.b.f31910a.a(new e(this, str));
    }

    private void saveWxAppid(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        AdSdk.getSharedPreferences().edit().putString("wx_appid", str).apply();
    }

    private Map<String, String> wrapParams(Map<String, String> map) throws JSONException {
        try {
            try {
                Map<String, String> mapWrapParams = AdParallelLoader.wrapParams(map);
                this.T3 = System.currentTimeMillis();
                if (mapWrapParams != null) {
                    return mapWrapParams;
                }
                return null;
            } catch (Exception unused) {
                String hexString = Long.toHexString(((System.currentTimeMillis() / 3) * 3) + 1);
                JSONObject jSONObject = new JSONObject();
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String value = entry.getValue();
                    if (hashParams.containsKey(entry.getKey())) {
                        try {
                            value = m1.a(MessageDigest.getInstance("MD5").digest(value.getBytes())).toLowerCase();
                        } catch (Exception unused2) {
                        }
                    }
                    if (!"pid".equals(entry.getKey())) {
                        jSONObject.put(entry.getKey(), value);
                        arrayList.add(entry.getKey() + "=" + value);
                    }
                }
                arrayList.add("5317f4377245bfb8efdc42c45d71bd43");
                arrayList.add(hexString);
                Collections.sort(arrayList);
                HashMap map2 = new HashMap();
                map2.put("message", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                map2.put("nonce", hexString);
                map2.put(com.umeng.ccg.a.f49739A, Base64.encodeToString(MessageDigest.getInstance("SHA-256").digest(TextUtils.join("&", arrayList).getBytes()), 2));
                return map2;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void clearErrorState() {
    }

    public abstract com.meishu.sdk.core.loader.d createDelegate(SdkAdInfo sdkAdInfo, MeishuAdInfo meishuAdInfo);

    public abstract com.meishu.sdk.core.loader.d createMeishuAdDelegate(Context context, MeishuAdInfo meishuAdInfo);

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        com.meishu.sdk.core.loader.strategy.a aVar;
        com.meishu.sdk.core.loader.concurrent.e eVar = this.loaderManager;
        if (eVar == null || (aVar = eVar.f31624d) == null) {
            return;
        }
        com.meishu.sdk.core.loader.strategy.e eVar2 = (com.meishu.sdk.core.loader.strategy.e) aVar;
        Handler handler = eVar2.f31661l;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        try {
            List<com.meishu.sdk.core.loader.d> list = eVar2.f31669t;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (com.meishu.sdk.core.loader.d dVar : eVar2.f31669t) {
                if (dVar != null) {
                    try {
                        dVar.destroy();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
            eVar2.f31669t.clear();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public Integer getAccept_ad_height() {
        return this.accept_ad_height;
    }

    public Integer getAccept_ad_width() {
        return this.accept_ad_width;
    }

    public AdType getAdType() {
        if (this instanceof RecyclerMixAdLoader) {
            return AdType.FEED_MIX;
        }
        if (this instanceof BannerAdLoader) {
            return AdType.BANNER;
        }
        if (this instanceof SplashAdLoader) {
            return AdType.SPLASH;
        }
        if (this instanceof InterstitialAdLoader) {
            return AdType.INTERSTITIAL;
        }
        if (this instanceof PasterAdLoader) {
            return AdType.PASTER;
        }
        if (this instanceof RewardVideoLoader) {
            return AdType.REWARD;
        }
        if (this instanceof DrawAdLoader) {
            return AdType.DRAW;
        }
        if (this instanceof FullScreenVideoAdLoader) {
            return AdType.FULL_SCREEN_VIDEO;
        }
        return null;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public Context getContext() {
        return this.context;
    }

    public int getFetchDelay() {
        return 0;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public T getLoaderListener() {
        return this.loaderListener;
    }

    public String getPosId() {
        return this.posId;
    }

    public long getT1() {
        return this.f31587T1;
    }

    public void handleNoAd(String str) {
        try {
            if (this.loaderListener != null) {
                SdkHandler.getInstance().runOnUiThread(new h(str));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void init(Context context, String str, T t2) {
        this.context = context;
        this.posId = str;
        this.loaderListener = t2;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        loadAd(new HashMap());
    }

    public void loadAd(Map<String, Object> map) {
        Exception exc;
        try {
            try {
                if (AdSdk.adConfig() == null) {
                    Log.e("meishusdk", "SDK IS NOT INITED ！");
                    handleNoAd("SDK IS NOT INITED！");
                    return;
                }
                this.startLoadTime = System.currentTimeMillis();
                asynGetDns();
                boolean z2 = j.f31915b;
                j.b(AdSdk.getContext());
                if (TextUtils.isEmpty(this.posId)) {
                    LogUtil.e(TAG, "pid不能为空！");
                    handleNoAd("pid不能为空！");
                    return;
                }
                AdType adType = getAdType();
                if (adType == null) {
                    LogUtil.e(TAG, "AdType is null！");
                    handleNoAd("AdType is null！");
                    return;
                }
                handleTimeout();
                clearErrorState();
                this.f31587T1 = System.currentTimeMillis();
                Map<String, String> mapGenerateParams = generateParams(y0.b(this.context, this.posId, adType, adCounter.incrementAndGet(), adTypeCounter.get(adType).incrementAndGet()));
                mapGenerateParams.put("msec", this.startLoadTime + "");
                try {
                    if (map.containsKey(KEY_TOKEN)) {
                        String str = (String) map.get(KEY_TOKEN);
                        mapGenerateParams.put("token", str);
                        preLoadVideo(str);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                boolean z3 = false;
                if (z2) {
                    d.b.f31870a.a(true, false);
                }
                if (!TextUtils.isEmpty(this.channel)) {
                    mapGenerateParams.put("channel", this.channel);
                }
                if (AdSdk.adConfig().getCanUseSdkPersonalRecommend()) {
                    mapGenerateParams.put("impersonal", "0");
                } else {
                    mapGenerateParams.put("impersonal", "1");
                }
                this.T2 = System.currentTimeMillis();
                if (cryptCipher != null) {
                    mapGenerateParams.put("gzip_crypt_key", cryptKeyStr);
                }
                HashMap map2 = new HashMap();
                map2.put("MS-SDK-Version", "Android-" + mapGenerateParams.get("sdk_version"));
                map2.put(AbstractC1114b.f5589g, ShareTarget.ENCODING_TYPE_URL_ENCODED);
                Map<String, String> mapWrapParams = wrapParams(mapGenerateParams);
                HashMap map3 = new HashMap();
                for (String str2 : queryParams) {
                    String str3 = mapGenerateParams.get(str2);
                    if (!TextUtils.isEmpty(str3)) {
                        map3.put(str2, str3);
                    }
                }
                saveLoadRecord(this.posId, 1);
                Request requestBody = getRequestBody((AdSdk.adConfig().secure() == 1 || r0.f31981l == 1) ? "https://sdk.1rtb.net/sdk/req_ad" : "http://sdk.1rtb.net/sdk/req_ad", map3, mapWrapParams, map2);
                this.T8 = System.currentTimeMillis();
                try {
                    a0.a(requestBody, new a(map3, mapWrapParams, map2, map));
                    if (r0.f31988s == 0) {
                        Context context = AdSdk.getContext();
                        if (AdSdk.adConfig() != null && AdSdk.adConfig().isTest()) {
                            z3 = true;
                        }
                        if (com.meishu.sdk.core.exception.a.f31573b) {
                            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
                            if (defaultUncaughtExceptionHandler instanceof a.b) {
                                return;
                            }
                            Thread.setDefaultUncaughtExceptionHandler(new a.b(context, z3, defaultUncaughtExceptionHandler));
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    exc = e;
                    exc.printStackTrace();
                    handleNoAd(exc.toString());
                }
            } catch (Exception e3) {
                exc = e3;
                exc.printStackTrace();
                handleNoAd(exc.toString());
            }
        } catch (Exception e4) {
            e = e4;
            exc = e;
            exc.printStackTrace();
            handleNoAd(exc.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAd(MeishuAdInfo meishuAdInfo, Map<String, Object> map) {
        SdkHandler.runOnMainThread(new g(meishuAdInfo, map));
    }
}
