package com.ubix.ssp.ad.e.u;

import android.content.ContentValues;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import com.byazt.rx.BaseConstants;
import com.ubix.ssp.ad.e.a0.p;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.a0.v;
import com.ubix.ssp.ad.e.w.f;
import com.ubix.ssp.ad.e.x.a;
import com.ubix.ssp.ad.e.x.d;
import com.ubix.ssp.ad.e.y.a.g;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.AdLoadCallbackListener;
import com.ubix.ssp.open.UBiXAdSetting;
import com.ubix.ssp.open.UBiXInitManger;
import com.ubix.ssp.open.manager.InitManager;
import java.io.InputStream;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class a extends UBiXInitManger implements InitManager {

    /* renamed from: c, reason: collision with root package name */
    protected static boolean f47198c = false;

    /* renamed from: d, reason: collision with root package name */
    public static final String f47199d = "a";

    /* renamed from: e, reason: collision with root package name */
    private Context f47200e;

    /* renamed from: com.ubix.ssp.ad.e.u.a$a, reason: collision with other inner class name */
    public class RunnableC0820a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f47201a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ AdLoadCallbackListener f47202b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ long f47203c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ long f47204d;

        public RunnableC0820a(String str, AdLoadCallbackListener adLoadCallbackListener, long j2, long j3) {
            this.f47201a = str;
            this.f47202b = adLoadCallbackListener;
            this.f47203c = j2;
            this.f47204d = j3;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            a aVar = a.this;
            aVar.a(aVar.f47200e, this.f47201a);
            a.this.c();
            com.ubix.ssp.ad.e.a0.c.j(a.this.f47200e.getApplicationContext());
            a aVar2 = a.this;
            aVar2.a(aVar2.f47200e);
            a.this.a(this.f47201a, this.f47202b);
            f.a(a.this.f47200e).b(this.f47203c);
            f.a(a.this.f47200e).a(SystemClock.elapsedRealtime() - this.f47204d);
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f47206a;

        public b(Context context) {
            this.f47206a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (TextUtils.isEmpty(com.ubix.ssp.ad.d.b.f45798e)) {
                    return;
                }
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                String[][] strArrA = p.a(this.f47206a);
                HashMap<String, Object> map = new HashMap<>();
                HashMap map2 = new HashMap();
                map2.put("ubix_tx_tag_installed_list", Arrays.toString(strArrA[0]));
                map2.put("ubix_tx_oaid", com.ubix.ssp.ad.d.b.f45798e);
                map.put("EVENT_ATTRS", map2);
                long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                if (jElapsedRealtime2 <= 0) {
                    jElapsedRealtime2 = 0;
                }
                map.put("EVENT_DURATION", Long.valueOf(jElapsedRealtime2));
                f.a(a.this.f47200e).c(map);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c extends a.f {

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f47208b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ AdLoadCallbackListener f47209c;

        /* renamed from: com.ubix.ssp.ad.e.u.a$c$a, reason: collision with other inner class name */
        public class RunnableC0821a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ g f47211a;

            /* renamed from: com.ubix.ssp.ad.e.u.a$c$a$a, reason: collision with other inner class name */
            public class RunnableC0822a implements Runnable {
                public RunnableC0822a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (com.ubix.ssp.ad.d.b.f45802i != 2) {
                        c.this.f47209c.onSuccess();
                    } else {
                        c.this.f47209c.onError(com.ubix.ssp.ad.e.a0.a0.a.e(9, "SDK功能已经关闭"));
                    }
                }
            }

            public RunnableC0821a(g gVar) {
                this.f47211a = gVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.a(this.f47211a, false);
                    p.b(a.this.f47200e);
                    try {
                        com.ubix.ssp.ad.e.w.q.a.a(a.this.f47200e).a(c.this.f47208b, new String(Base64.encode(com.ubix.ssp.ad.e.y.c.f.a(this.f47211a), 10)));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        u.d("缓存没成功，不影响后续流程");
                    }
                    if (c.this.f47209c != null) {
                        com.ubix.ssp.ad.e.a0.b.b(new RunnableC0822a());
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                    AdError adErrorF = com.ubix.ssp.ad.e.a0.a0.a.f(6, "空广告体");
                    f.a(a.this.f47200e).a(adErrorF.getErrorCode(), adErrorF.getErrorMessage());
                    AdLoadCallbackListener adLoadCallbackListener = c.this.f47209c;
                    if (adLoadCallbackListener != null) {
                        adLoadCallbackListener.onError(adErrorF);
                    }
                }
            }
        }

        public class b implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ d f47214a;

            public b(d dVar) {
                this.f47214a = dVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                AdError adErrorF;
                String strA;
                int i2;
                try {
                    d dVar = this.f47214a;
                    if (dVar != null) {
                        if (dVar.f47411c != 200) {
                            strA = "响应异常，请根据返回码检查问题" + this.f47214a.f47411c;
                            i2 = 5;
                        } else {
                            Exception exc = dVar.f47413e;
                            if (exc != null) {
                                strA = exc.toString();
                            } else {
                                InputStream inputStream = dVar.f47410b;
                                if (inputStream != null) {
                                    strA = com.ubix.ssp.ad.e.x.a.a(inputStream);
                                } else {
                                    adErrorF = com.ubix.ssp.ad.e.a0.a0.a.f(1, "网络连接异常，请检查网络");
                                }
                            }
                            i2 = 1;
                        }
                        adErrorF = com.ubix.ssp.ad.e.a0.a0.a.f(i2, strA);
                    } else {
                        adErrorF = com.ubix.ssp.ad.e.a0.a0.a.f(2, "请求参数异常，请检查传入的广告参数是否正确");
                    }
                    f.a(a.this.f47200e).a(adErrorF.getErrorCode(), adErrorF.getErrorMessage());
                    AdLoadCallbackListener adLoadCallbackListener = c.this.f47209c;
                    if (adLoadCallbackListener != null) {
                        adLoadCallbackListener.onError(adErrorF);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public c(String str, AdLoadCallbackListener adLoadCallbackListener) {
            this.f47208b = str;
            this.f47209c = adLoadCallbackListener;
        }

        @Override // com.ubix.ssp.ad.e.x.a
        public void a(g gVar) {
            if (gVar != null) {
                com.ubix.ssp.ad.e.a0.c.y();
                com.ubix.ssp.ad.e.a0.c.f46115d.execute(new RunnableC0821a(gVar));
            }
        }

        @Override // com.ubix.ssp.ad.e.x.a
        public void b(d dVar) {
            com.ubix.ssp.ad.e.a0.b.b(new b(dVar));
        }
    }

    public a(Context context) {
        this.f47200e = context.getApplicationContext();
    }

    private String b() {
        String strD = v.d(this.f47200e, "ubix_sp_beacon", "user_agent");
        if (!TextUtils.isEmpty(strD)) {
            if (com.ubix.ssp.ad.e.b.a("user_agent")) {
                com.ubix.ssp.ad.e.a0.c.u();
            }
            return strD;
        }
        if (!com.ubix.ssp.ad.d.b.f45794a.getExtra().containsKey("UserAgent")) {
            return com.ubix.ssp.ad.e.b.a("user_agent") ? com.ubix.ssp.ad.e.a0.c.t() : "";
        }
        String str = com.ubix.ssp.ad.d.b.f45794a.getExtra().get("UserAgent");
        if (TextUtils.isEmpty(str) || !str.startsWith("Mozilla")) {
            return com.ubix.ssp.ad.e.b.a("user_agent") ? com.ubix.ssp.ad.e.a0.c.t() : "";
        }
        if (com.ubix.ssp.ad.e.b.a("user_agent")) {
            com.ubix.ssp.ad.e.a0.c.u();
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            if (!f47198c && !com.ubix.ssp.ad.d.b.f45814u) {
                com.ubix.ssp.ad.e.w.q.a aVarA = com.ubix.ssp.ad.e.w.q.a.a(com.ubix.ssp.ad.e.a0.c.e());
                ContentValues contentValues = new ContentValues();
                contentValues.put("status", (Integer) 0);
                aVarA.a();
                aVarA.a(contentValues, String.format("%s=?", "status"), new String[]{String.valueOf(1)});
                f47198c = true;
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.ubix.ssp.open.UBiXInitManger, com.ubix.ssp.open.manager.InitManager
    @Deprecated
    public String getSdkVersion() {
        return "2.10.2.11";
    }

    @Override // com.ubix.ssp.open.manager.InitManager
    public void launchSDK(String str) {
        launchSDK(str, new UBiXAdSetting.Builder().build(), null);
    }

    @Override // com.ubix.ssp.open.manager.InitManager
    public void setDebugLog(boolean z2) {
        u.f46481a = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        com.ubix.ssp.ad.e.a0.c.y();
        com.ubix.ssp.ad.e.a0.c.f46115d.execute(new b(context));
    }

    public void b(Context context, String str) throws Throwable {
        com.ubix.ssp.ad.d.b.f45810q = str;
        if (v.c(context, "ubix_sp_world", "first_time") <= 0) {
            v.a(context, "ubix_sp_world", "first_time", System.currentTimeMillis());
        }
        int iA = v.a(context, "ubix_sp_world", "open_times", 0);
        v.a(context, "ubix_sp_world", "last_time", System.currentTimeMillis());
        v.b(context, "ubix_sp_world", "open_times", iA);
        try {
            String strB = com.ubix.ssp.ad.e.w.q.a.a(context).b(str);
            if (!TextUtils.isEmpty(strB)) {
                a(g.a(Base64.decode(strB, 10)), true);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ubix.ssp.ad.d.b.f45809p = b();
    }

    @Override // com.ubix.ssp.open.manager.InitManager
    public void launchSDK(String str, UBiXAdSetting uBiXAdSetting) {
        String string;
        if (uBiXAdSetting == null) {
            uBiXAdSetting = new UBiXAdSetting.Builder().build();
        }
        launchSDK(str, uBiXAdSetting, null);
        String str2 = f47199d;
        u.e(str2, "launchSDK appId:" + str);
        if (!u.a() || uBiXAdSetting == null) {
            return;
        }
        u.e(str2, "launchSDK UserConfig: \n     getUserId：" + uBiXAdSetting.getUserId() + "\n     getPublisherId：" + uBiXAdSetting.getPublisherId() + "\n     getExtra：" + uBiXAdSetting.getExtra() + "\n     isUseTextureView：" + uBiXAdSetting.isUseTextureView());
        if (uBiXAdSetting.getPrivacyManager() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("launchSDK privacyManager: \n     开关类：\n     isCanUsePhoneState：");
            sb.append(uBiXAdSetting.getPrivacyManager().isCanUsePhoneState());
            sb.append("\n     isCanUseAndroidId：");
            sb.append(uBiXAdSetting.getPrivacyManager().isCanUseAndroidId());
            sb.append("\n     isCanUseOaid：");
            sb.append(uBiXAdSetting.getPrivacyManager().isCanUseOaid());
            sb.append("\n     isTrustOaid：");
            sb.append(uBiXAdSetting.getPrivacyManager().isTrustOaid());
            sb.append("\n     isCanGetAppList：");
            sb.append(uBiXAdSetting.getPrivacyManager().isCanGetAppList());
            sb.append("\n     isCanUseLocation：");
            sb.append(uBiXAdSetting.getPrivacyManager().isCanUseLocation());
            sb.append("\n     isCanUseMacAddress：");
            sb.append(uBiXAdSetting.getPrivacyManager().isCanUseMacAddress());
            sb.append("\n     isCanUseWifiStatus：");
            sb.append(uBiXAdSetting.getPrivacyManager().isCanUseWifiStatus());
            sb.append("\n     isCanUseWriteExternal：");
            sb.append(uBiXAdSetting.getPrivacyManager().isCanUseWriteExternal());
            sb.append("\n     传入类：\n     getAndroidId：");
            sb.append(uBiXAdSetting.getPrivacyManager().getAndroidId());
            sb.append("\n     getOaid：");
            sb.append(uBiXAdSetting.getPrivacyManager().getOaid());
            sb.append("\n     getLocation：");
            sb.append(uBiXAdSetting.getPrivacyManager() == null ? "" : Arrays.toString(uBiXAdSetting.getPrivacyManager().getLocation()));
            sb.append("\n     getMacAddr：");
            sb.append(uBiXAdSetting.getPrivacyManager().getMacAddr());
            sb.append("\n     getImei：");
            sb.append(uBiXAdSetting.getPrivacyManager().getImei());
            sb.append("\n     getPersonalizedState：");
            sb.append(uBiXAdSetting.getPrivacyManager().getPersonalizedState());
            sb.append("\n     getProgrammaticRecommendState：");
            sb.append(uBiXAdSetting.getPrivacyManager().getProgrammaticRecommendState());
            sb.append("\n     用户信息：\n     getUserId：");
            sb.append(uBiXAdSetting.getUserId());
            sb.append("\n     getPublisherId：");
            sb.append(uBiXAdSetting.getPublisherId());
            sb.append("\n     getExtra：");
            sb.append(uBiXAdSetting.getExtra());
            sb.append("\n     isUseTextureView：");
            sb.append(uBiXAdSetting.isUseTextureView());
            string = sb.toString();
        } else {
            string = "launchSDK privacyManager is null";
        }
        u.e(str2, string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str) throws Throwable {
        try {
            String androidId = "";
            com.ubix.ssp.ad.d.b.f45798e = TextUtils.isEmpty(com.ubix.ssp.ad.d.b.a().getOaid()) ? "" : com.ubix.ssp.ad.d.b.a().getOaid();
            if (TextUtils.isEmpty(com.ubix.ssp.ad.d.b.f45798e)) {
                com.ubix.ssp.ad.d.b.f45798e = com.ubix.ssp.ad.e.a0.c0.b.b(context);
            }
            if (!TextUtils.isEmpty(com.ubix.ssp.ad.d.b.a().getAndroidId())) {
                androidId = com.ubix.ssp.ad.d.b.a().getAndroidId();
            }
            com.ubix.ssp.ad.d.b.f45799f = androidId;
            if (TextUtils.isEmpty(com.ubix.ssp.ad.d.b.f45799f)) {
                com.ubix.ssp.ad.d.b.f45799f = com.ubix.ssp.ad.e.a0.c0.b.a(context);
            }
            b(context.getApplicationContext(), str);
            f.a(this.f47200e).a();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004b  */
    @Override // com.ubix.ssp.open.manager.InitManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void launchSDK(java.lang.String r9, com.ubix.ssp.open.UBiXAdSetting r10, com.ubix.ssp.open.AdLoadCallbackListener r11) {
        /*
            r8 = this;
            long r6 = android.os.SystemClock.elapsedRealtime()
            long r4 = java.lang.System.currentTimeMillis()
            android.content.Context r0 = r8.f47200e
            com.ubix.ssp.ad.e.a0.c.k(r0)
            com.ubix.ssp.ad.e.a0.u.b()
            com.ubix.ssp.ad.d.b.f45810q = r9
            com.ubix.ssp.ad.d.b.f45794a = r10
            boolean r10 = r8.a()
            if (r10 == 0) goto L23
            r10 = 11
            java.lang.String r0 = "系统版本过低，无法返回广告"
        L1e:
            com.ubix.ssp.open.AdError r10 = com.ubix.ssp.ad.e.a0.a0.a.e(r10, r0)
            goto L2e
        L23:
            boolean r10 = android.text.TextUtils.isEmpty(r9)
            if (r10 == 0) goto L2d
            r10 = 1
            java.lang.String r0 = "APP_ID为空"
            goto L1e
        L2d:
            r10 = 0
        L2e:
            if (r10 == 0) goto L4b
            android.content.Context r9 = r8.f47200e
            com.ubix.ssp.ad.e.w.e r9 = com.ubix.ssp.ad.e.w.f.a(r9)
            r9.b(r4)
            android.content.Context r9 = r8.f47200e
            com.ubix.ssp.ad.e.w.e r9 = com.ubix.ssp.ad.e.w.f.a(r9)
            int r11 = r10.getErrorCode()
            java.lang.String r10 = r10.getErrorMessage()
            r9.b(r11, r10)
            return
        L4b:
            com.ubix.ssp.ad.e.a0.c.y()
            java.util.concurrent.Executor r10 = com.ubix.ssp.ad.e.a0.c.f46115d
            com.ubix.ssp.ad.e.u.a$a r0 = new com.ubix.ssp.ad.e.u.a$a
            r1 = r8
            r2 = r9
            r3 = r11
            r0.<init>(r2, r3, r4, r6)
            r10.execute(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.u.a.launchSDK(java.lang.String, com.ubix.ssp.open.UBiXAdSetting, com.ubix.ssp.open.AdLoadCallbackListener):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(g gVar, boolean z2) throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, SecurityException, IllegalArgumentException {
        g.b bVar;
        String[] strArr;
        com.ubix.ssp.ad.d.b.f45802i = gVar.f47717b;
        int i2 = gVar.f47722g;
        if ((i2 << 1) == 0) {
            i2 = com.ubix.ssp.ad.d.b.f45811r;
        }
        com.ubix.ssp.ad.d.b.f45811r = i2;
        com.ubix.ssp.ad.d.b.f45812s = gVar.f47732q > 0 ? r5 * 60 * 1000 : com.ubix.ssp.ad.d.b.f45812s;
        com.ubix.ssp.ad.d.b.f45813t = gVar.f47724i;
        String str = gVar.f47733r;
        if (!TextUtils.isEmpty(str)) {
            v.b(this.f47200e, "ubix_sp_named_wx", "wxid", str);
        }
        com.ubix.ssp.ad.d.b.f45815v = gVar.f47734s;
        com.ubix.ssp.ad.d.b.f45816w = gVar.f47736u;
        com.ubix.ssp.ad.d.b.f45817x = gVar.f47735t;
        com.ubix.ssp.ad.d.b.f45818y = gVar.f47737v;
        com.ubix.ssp.ad.d.b.f45819z = gVar.f47738w;
        if (gVar.f47741z && (strArr = gVar.f47696A) != null && strArr.length > 0) {
            com.ubix.ssp.ad.d.b.f45803j = strArr;
            com.ubix.ssp.ad.d.b.f45804k = gVar.f47705J == 1;
            com.ubix.ssp.ad.d.b.f45805l = gVar.f47708M == 1;
        }
        int i3 = gVar.f47698C;
        if (i3 < 0) {
            i3 = 10;
        }
        com.ubix.ssp.ad.d.b.f45782A = i3;
        com.ubix.ssp.ad.e.b.f46588a = gVar.f47699D;
        int i4 = gVar.f47702G;
        if (i4 == 0) {
            i4 = 2;
        }
        com.ubix.ssp.ad.d.b.f45784C = i4;
        com.ubix.ssp.ad.d.b.f45785D = gVar.f47703H * 1000;
        if (!TextUtils.isEmpty(gVar.f47700E)) {
            try {
                JSONObject jSONObject = new JSONObject(gVar.f47700E);
                if (jSONObject.has("viewRemove")) {
                    com.ubix.ssp.ad.d.b.f45791J = jSONObject.getBoolean("viewRemove");
                }
                if (jSONObject.has("imageMaxCache")) {
                    com.ubix.ssp.ad.d.b.f45792K = jSONObject.getInt("imageMaxCache");
                }
                if (jSONObject.has("gifMaxCache")) {
                    com.ubix.ssp.ad.d.b.f45793L = jSONObject.getInt("gifMaxCache");
                }
                if (jSONObject.has("splashCountDownType")) {
                    com.ubix.ssp.ad.d.b.f45801h = jSONObject.getInt("splashCountDownType");
                }
                if (jSONObject.has("detectWithAdv")) {
                    com.ubix.ssp.ad.d.b.f45806m = jSONObject.getBoolean("detectWithAdv");
                }
            } catch (Throwable unused) {
            }
        }
        com.ubix.ssp.ad.d.b.f45786E = gVar.f47704I;
        com.ubix.ssp.ad.d.b.f45788G = gVar.f47709N;
        int i5 = gVar.f47710O;
        com.ubix.ssp.ad.d.b.f45789H = i5 <= 0 ? com.ubix.ssp.ad.d.b.f45789H : i5 * BaseConstants.Time.MINUTE;
        int i6 = gVar.f47711P;
        com.ubix.ssp.ad.d.b.f45790I = i6 <= 0 ? com.ubix.ssp.ad.d.b.f45790I : i6 * BaseConstants.Time.MINUTE;
        p.f46397c = gVar.f47729n;
        p.f46398d = gVar.f47731p;
        p.f46399e = gVar.f47723h * 1000;
        g.c[] cVarArr = gVar.f47730o;
        if (cVarArr != null) {
            p.f46401g = Arrays.asList(cVarArr);
        }
        p.f46403i = gVar.f47728m * 1000;
        p.f46400f = gVar.f47726k;
        g.c[] cVarArr2 = gVar.f47727l;
        if (cVarArr2 != null) {
            p.f46402h = Arrays.asList(cVarArr2);
            v.a(this.f47200e, "ubix_sp_castle", "analysis_detect_insert_list", Boolean.TRUE);
        }
        int i7 = gVar.f47716U;
        com.ubix.ssp.ad.d.b.f45808o = i7 > 0 ? i7 * 60 * 1000 : i7 < 0 ? 0L : 2592000000L;
        if (!z2 && (bVar = gVar.f47719d) != null) {
            String str2 = bVar.f47749b;
            if (!TextUtils.isEmpty(str2) && str2.startsWith("http")) {
                v.b(this.f47200e, "ubix_sp_tower1", "request_server_replace_url", str2);
            }
            String str3 = gVar.f47719d.f47750c;
            if (!TextUtils.isEmpty(str3) && str3.startsWith("http")) {
                v.b(this.f47200e, "ubix_sp_tower1", "init_server_replace_url", str3);
            }
        }
        g.a aVar = gVar.f47720e;
        if (aVar != null) {
            f.f47305d = aVar.f47746f;
            if (!z2) {
                String str4 = aVar.f47744d;
                if (!TextUtils.isEmpty(str4) && (str4.startsWith("http://") || str4.startsWith("https://"))) {
                    v.b(this.f47200e, "ubix_sp_tower1", "collection_server_url", str4);
                }
            }
            g.a.C0836a c0836a = gVar.f47720e.f47743c;
            if (c0836a != null) {
                f.f47303b = c0836a.f47748c;
                f.f47304c = c0836a.f47747b;
            }
        }
        if (z2 || gVar.f47706K != 1) {
            return;
        }
        com.ubix.ssp.ad.e.a0.y.d.c.a().a(com.ubix.ssp.ad.e.a0.c.f46112a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, AdLoadCallbackListener adLoadCallbackListener) {
        com.ubix.ssp.ad.e.x.b.a(this.f47200e).a(str, new c(str, adLoadCallbackListener));
    }

    private boolean a() {
        return false;
    }
}
