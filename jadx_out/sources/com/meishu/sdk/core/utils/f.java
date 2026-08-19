package com.meishu.sdk.core.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.widget.Toast;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.byazt.rx.BaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.google.gson.Gson;
import com.meishu.sdk.activity.MeishuWebviewActivity;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.ad.IAd;
import com.meishu.sdk.core.download.a;
import com.meishu.sdk.core.loader.ShareInteractionListener;
import com.meishu.sdk.core.utils.DownloadUtils;
import com.meishu.sdk.core.utils.PackageBean;
import com.meishu.sdk.core.utils.p0;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.meishu_ad.view.DownLoadDialogActivity;
import com.meishu.sdk.platform.ms.splash.ShakeResult;
import java.io.File;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public class f {

    public class a extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ SoftReference f31884a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ AdSlot f31885b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SoftReference f31886c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ m0 f31887d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ List f31888e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ boolean f31889f;

        public a(SoftReference softReference, AdSlot adSlot, SoftReference softReference2, m0 m0Var, List list, boolean z2) {
            this.f31884a = softReference;
            this.f31885b = adSlot;
            this.f31886c = softReference2;
            this.f31887d = m0Var;
            this.f31888e = list;
            this.f31889f = z2;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() throws InterruptedException {
            String str;
            String[] eventUrl;
            String str2;
            String[] eventUrl2;
            PackageBean.AdBean adBean;
            long jCurrentTimeMillis = System.currentTimeMillis();
            Gson gson = new Gson();
            int i2 = r0.f31980k;
            int i3 = i2 > 0 ? i2 * 1000 : 2000;
            boolean z2 = false;
            boolean z3 = false;
            while (System.currentTimeMillis() - jCurrentTimeMillis <= 5000) {
                try {
                    adBean = r0.f31982m;
                } catch (Exception unused) {
                }
                int crdpf = adBean != null ? adBean.getCrdpf() : 0;
                if (crdpf == 1 && !this.f31888e.isEmpty() && !((Boolean) this.f31888e.get(0)).booleanValue()) {
                    LogUtil.d("ClickHandler", "open deeplink fail. break");
                    f.a((Context) this.f31884a.get(), this.f31885b, (com.meishu.sdk.platform.ms.c) this.f31886c.get(), this.f31887d.f31935e ? 1 : 0);
                    return;
                }
                if (!f.a(this.f31884a) || !f.a(this.f31886c)) {
                    LogUtil.d("ClickHandler", "reference invalid. break");
                    f.a((Context) this.f31884a.get(), this.f31885b, (com.meishu.sdk.platform.ms.c) this.f31886c.get(), this.f31887d.f31935e ? 1 : 0);
                    return;
                }
                try {
                    Thread.sleep(500L);
                    try {
                        try {
                        } catch (Throwable th) {
                            th = th;
                            z2 = false;
                            z3 = true;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z2 = z2;
                        z3 = z3;
                    }
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                if (!com.meishu.sdk.core.service.d.a()) {
                    try {
                        try {
                            Thread.sleep(500L);
                        } catch (InterruptedException e3) {
                            e3.printStackTrace();
                        }
                        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                        if (com.meishu.sdk.core.service.d.a()) {
                            if (!z3 && f.a(this.f31885b, (com.meishu.sdk.platform.ms.c) this.f31886c.get())) {
                                PackageBean.HappyBean happyBean = r0.f31979j;
                                if (happyBean != null) {
                                    happyBean.setLastTime(System.currentTimeMillis());
                                    r.a().b("happybean", gson.toJson(r0.f31979j));
                                    AdSdk.getSharedPreferences().edit().putString("happybean", gson.toJson(r0.f31979j)).apply();
                                }
                                AdSlot adSlot = this.f31885b;
                                if (adSlot instanceof BaseAdSlot) {
                                    String dpsign = ((BaseAdSlot) adSlot).getDPSIGN();
                                    eventUrl2 = ((BaseAdSlot) this.f31885b).getEventUrl();
                                    str2 = dpsign;
                                } else {
                                    str2 = null;
                                    eventUrl2 = null;
                                }
                                p0.a((Context) this.f31884a.get(), this.f31885b.getDeep_link(), this.f31885b.getDpSign(), this.f31885b.getDp_start(), str2, eventUrl2, this.f31889f);
                                try {
                                    Thread.sleep(i3);
                                } catch (InterruptedException e4) {
                                    e4.printStackTrace();
                                }
                                if (com.meishu.sdk.core.service.d.a()) {
                                    return;
                                }
                                f.a(this.f31885b, (Context) this.f31884a.get(), (com.meishu.sdk.platform.ms.c) this.f31886c.get(), this.f31887d.f31935e);
                                return;
                            }
                            z2 = true;
                        } else {
                            if (jCurrentTimeMillis2 >= i3) {
                                f.a(this.f31885b, (Context) this.f31884a.get(), (com.meishu.sdk.platform.ms.c) this.f31886c.get(), this.f31887d.f31935e);
                                return;
                            }
                            z2 = true;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        z2 = true;
                        z3 = z3;
                        th.printStackTrace();
                    }
                } else if (z2 && !z3 && f.a(this.f31885b, (com.meishu.sdk.platform.ms.c) this.f31886c.get())) {
                    PackageBean.HappyBean happyBean2 = r0.f31979j;
                    if (happyBean2 != null) {
                        happyBean2.setLastTime(System.currentTimeMillis());
                        r.a().b("happybean", gson.toJson(r0.f31979j));
                        AdSdk.getSharedPreferences().edit().putString("happybean", gson.toJson(r0.f31979j)).apply();
                    }
                    AdSlot adSlot2 = this.f31885b;
                    if (adSlot2 instanceof BaseAdSlot) {
                        String dpsign2 = ((BaseAdSlot) adSlot2).getDPSIGN();
                        eventUrl = ((BaseAdSlot) this.f31885b).getEventUrl();
                        str = dpsign2;
                    } else {
                        str = null;
                        eventUrl = null;
                    }
                    p0.a((Context) this.f31884a.get(), this.f31885b.getDeep_link(), this.f31885b.getDpSign(), this.f31885b.getDp_start(), str, eventUrl, this.f31889f);
                    try {
                        Thread.sleep(i3);
                    } catch (InterruptedException e5) {
                        e5.printStackTrace();
                    }
                    if (com.meishu.sdk.core.service.d.a()) {
                        return;
                    }
                    f.a(this.f31885b, (Context) this.f31884a.get(), (com.meishu.sdk.platform.ms.c) this.f31886c.get(), this.f31887d.f31935e);
                    return;
                }
            }
            LogUtil.d("ClickHandler", "check self background timeout");
            f.a((Context) this.f31884a.get(), this.f31885b, (com.meishu.sdk.platform.ms.c) this.f31886c.get(), this.f31887d.f31935e ? 1 : 0);
        }
    }

    public class b extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Method f31890a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.platform.ms.c f31891b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f31892c;

        public b(Method method, com.meishu.sdk.platform.ms.c cVar, boolean z2) {
            this.f31890a = method;
            this.f31891b = cVar;
            this.f31892c = z2;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                this.f31890a.setAccessible(true);
                this.f31890a.invoke(this.f31891b.getInteractionListener(), Boolean.valueOf(this.f31892c));
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x0122 A[PHI: r6 r7 r8
      0x0122: PHI (r6v4 java.lang.String) = 
      (r6v3 java.lang.String)
      (r6v2 java.lang.String)
      (r6v2 java.lang.String)
      (r6v2 java.lang.String)
      (r6v6 java.lang.String)
     binds: [B:85:0x0128, B:65:0x00ea, B:67:0x00f4, B:69:0x00fc, B:80:0x0117] A[DONT_GENERATE, DONT_INLINE]
      0x0122: PHI (r7v4 java.lang.String) = 
      (r7v3 java.lang.String)
      (r7v2 java.lang.String)
      (r7v2 java.lang.String)
      (r7v2 java.lang.String)
      (r7v6 java.lang.String)
     binds: [B:85:0x0128, B:65:0x00ea, B:67:0x00f4, B:69:0x00fc, B:80:0x0117] A[DONT_GENERATE, DONT_INLINE]
      0x0122: PHI (r8v6 java.lang.String) = 
      (r8v5 java.lang.String)
      (r8v4 java.lang.String)
      (r8v4 java.lang.String)
      (r8v4 java.lang.String)
      (r8v8 java.lang.String)
     binds: [B:85:0x0128, B:65:0x00ea, B:67:0x00f4, B:69:0x00fc, B:80:0x0117] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r22, com.meishu.sdk.core.ad.IAd r23) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.utils.f.a(java.lang.String, com.meishu.sdk.core.ad.IAd):java.lang.String");
    }

    public static void b(com.meishu.sdk.platform.ms.c cVar, Context context, AdSlot adSlot, boolean z2) {
        if (adSlot != null) {
            try {
                if (adSlot.getdUrl() == null || adSlot.getdUrl().length <= 0) {
                    return;
                }
                boolean isRewardUseBrowser = cVar.a() instanceof BaseAdSlot ? ((BaseAdSlot) cVar.a()).getIsRewardUseBrowser() : false;
                if (!z2 && !isRewardUseBrowser) {
                    if (cVar.getInteractionListener() instanceof ShareInteractionListener) {
                        try {
                            Class<? extends Activity> clsWebViewActivity = AdSdk.adConfig() != null ? AdSdk.adConfig().webViewActivity() : null;
                            if (clsWebViewActivity == null) {
                                clsWebViewActivity = MeishuWebviewActivity.class;
                            }
                            clsWebViewActivity.getDeclaredMethod("setShareListener", ShareInteractionListener.class).invoke(null, (ShareInteractionListener) cVar.getInteractionListener());
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                    com.meishu.sdk.core.uri.c.f31733c.a(context, a(adSlot.getdUrl()[0], (IAd) cVar), adSlot);
                    return;
                }
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(adSlot.getdUrl()[0]));
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                context.startActivity(intent);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    public static void c(Context context, com.meishu.sdk.platform.ms.c cVar) {
        try {
            if (AdSdk.adConfig() != null && (AdSdk.adConfig().downloadConfirm() == 1 || (AdSdk.adConfig().downloadConfirm() == 0 && !b(context)))) {
                DownLoadDialogActivity.f32653y = cVar;
                Intent intent = new Intent(context, (Class<?>) DownLoadDialogActivity.class);
                if (!(context instanceof Activity)) {
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                }
                context.startActivity(intent);
                return;
            }
            String[] strArrA = a(cVar.a().getDn_start(), cVar);
            String[] strArrA2 = a(cVar.a().getDn_succ(), cVar);
            String[] strArrA3 = a(cVar.a().getDn_inst_start(), cVar);
            String[] strArrA4 = a(cVar.a().getDn_inst_succ(), cVar);
            String str = cVar.a().getdUrl()[0];
            String appName = cVar.a().getAppName();
            String packageName = cVar.a().getPackageName();
            if (appName == null) {
                appName = "";
            }
            String str2 = appName;
            try {
                Map<Integer, l0> map = DownloadUtils.f31749h;
                DownloadUtils.c.f31779a.a(context.getApplicationContext(), str, str2, packageName, strArrA, strArrA2, strArrA3, strArrA4);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            Toast.makeText(context.getApplicationContext(), "开始下载", 0).show();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void b(AdSlot adSlot, com.meishu.sdk.platform.ms.c cVar) {
        try {
            String[] dp_start = adSlot.getDp_start();
            if (dp_start != null) {
                LogUtil.d("ClickHandler", "send dp_start");
                for (int i2 = 0; i2 < dp_start.length; i2++) {
                    if (!TextUtils.isEmpty(dp_start[i2])) {
                        dp_start[i2] = a(dp_start[i2], cVar);
                    }
                }
                adSlot.setDp_start(dp_start);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void b(Context context, com.meishu.sdk.platform.ms.c cVar) {
        try {
            if (!a(context)) {
                Toast.makeText(context.getApplicationContext(), "请检查网络连接", 0).show();
                return;
            }
            AdSlot adSlotA = cVar.a();
            if (adSlotA.getdUrl() == null || adSlotA.getdUrl().length <= 0) {
                return;
            }
            adSlotA.getdUrl();
            String str = a.C0651a.f31541a.f31540c;
            String strReplace = adSlotA.getdUrl()[0].substring(adSlotA.getdUrl()[0].lastIndexOf(ServiceReference.DELIMITER)).replace(ServiceReference.DELIMITER, "");
            try {
                strReplace = m1.a(MessageDigest.getInstance("MD5").digest(adSlotA.getdUrl()[0].getBytes())).toLowerCase() + ".apk";
            } catch (NoSuchAlgorithmException e2) {
                e2.printStackTrace();
            }
            File file = new File(str, strReplace);
            if (file.exists()) {
                LogUtil.e("ClickHandler", "file install");
                String[] strArrA = a(cVar.a().getDn_start(), cVar);
                String[] strArrA2 = a(cVar.a().getDn_succ(), cVar);
                String[] strArrA3 = a(cVar.a().getDn_inst_start(), cVar);
                String[] strArrA4 = a(cVar.a().getDn_inst_succ(), cVar);
                String appName = cVar.a().getAppName();
                String packageName = cVar.a().getPackageName();
                Map<Integer, l0> map = DownloadUtils.f31749h;
                l0 l0Var = new l0();
                l0Var.f31925b = appName;
                l0Var.f31926c = packageName;
                l0Var.f31927d = strArrA;
                l0Var.f31928e = strArrA2;
                l0Var.f31929f = strArrA3;
                l0Var.f31930g = strArrA4;
                DownloadUtils.a(context);
                DownloadUtils.a(context, file, l0Var);
                return;
            }
            LogUtil.e("ClickHandler", "file not exists");
            c(context, cVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static String a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        return TextUtils.replace(str, new String[]{"__DOWN_X__", "__DOWN_Y__", "__UP_X__", "__UP_Y__", "__MS_EVENT_SEC__", "__MS_EVENT_MSEC__", "__M_DOWN_TIME__", "__M_UP_TIME__"}, new String[]{String.valueOf(str2), String.valueOf(str3), String.valueOf(str4), String.valueOf(str5), String.valueOf(str6), String.valueOf(str7), String.valueOf(str8), String.valueOf(str9)}).toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002a A[Catch: all -> 0x0054, PHI: r3
      0x002a: PHI (r3v7 ??) = (r3v6 ??), (r3v12 ??), (r3v13 ??), (r3v14 ??) binds: [B:7:0x0012, B:9:0x0016, B:11:0x001a, B:13:0x001e] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #3 {all -> 0x0054, blocks: (B:5:0x000a, B:18:0x002a, B:20:0x0035), top: B:52:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009d A[Catch: Exception -> 0x008a, TryCatch #4 {Exception -> 0x008a, blocks: (B:37:0x008e, B:41:0x00a1, B:40:0x009d, B:33:0x0085), top: B:54:0x0085 }] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r12, com.meishu.sdk.platform.ms.c r13) {
        /*
            java.lang.String r1 = "__CLICK_ID__"
            com.meishu.sdk.core.ad.AdSlot r2 = r13.a()     // Catch: java.lang.Exception -> Lae
            boolean r0 = r2 instanceof com.meishu.sdk.core.ad.BaseAdSlot     // Catch: java.lang.Exception -> Lae
            if (r0 == 0) goto L8d
            r0 = r2
            com.meishu.sdk.core.ad.BaseAdSlot r0 = (com.meishu.sdk.core.ad.BaseAdSlot) r0     // Catch: java.lang.Throwable -> L54
            int r0 = r0.getClkActType()     // Catch: java.lang.Throwable -> L54
            r3 = 4
            if (r0 == r3) goto L2a
            r3 = 8
            if (r0 == r3) goto L2a
            r3 = 64
            if (r0 == r3) goto L2a
            r3 = 256(0x100, float:3.59E-43)
            if (r0 == r3) goto L2a
            java.lang.String r13 = a(r12, r13)     // Catch: java.lang.Throwable -> L26
            r3 = r12
            goto L78
        L26:
            r0 = move-exception
            r13 = r0
            r3 = r12
            goto L83
        L2a:
            r13 = r2
            com.meishu.sdk.core.ad.BaseAdSlot r13 = (com.meishu.sdk.core.ad.BaseAdSlot) r13     // Catch: java.lang.Throwable -> L54
            java.lang.String r4 = r13.getDefault_coord()     // Catch: java.lang.Throwable -> L54
            r5 = 1000(0x3e8, double:4.94E-321)
            if (r4 == 0) goto L57
            long r7 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L54
            long r5 = r7 / r5
            java.lang.String r13 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L54
            java.lang.String r9 = java.lang.String.valueOf(r7)     // Catch: java.lang.Throwable -> L54
            java.lang.String r10 = "__M_DOWN_TIME__"
            java.lang.String r11 = "__M_UP_TIME__"
            r5 = r4
            r6 = r4
            r7 = r4
            r3 = r12
            r8 = r13
            java.lang.String r13 = a(r3, r4, r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L51
            goto L78
        L51:
            r0 = move-exception
        L52:
            r13 = r0
            goto L83
        L54:
            r0 = move-exception
            r3 = r12
            goto L52
        L57:
            r3 = r12
            java.lang.String r4 = "-999"
            r12 = r5
            java.lang.String r5 = "-999"
            java.lang.String r6 = "-999"
            java.lang.String r7 = "-999"
            long r8 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L51
            long r12 = r8 / r12
            java.lang.String r12 = java.lang.String.valueOf(r12)     // Catch: java.lang.Throwable -> L51
            java.lang.String r9 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L51
            java.lang.String r10 = "__M_DOWN_TIME__"
            java.lang.String r11 = "__M_UP_TIME__"
            r8 = r12
            java.lang.String r13 = a(r3, r4, r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L51
        L78:
            r12 = r2
            com.meishu.sdk.core.ad.BaseAdSlot r12 = (com.meishu.sdk.core.ad.BaseAdSlot) r12     // Catch: java.lang.Throwable -> L80
            java.lang.String r12 = a(r13, r12)     // Catch: java.lang.Throwable -> L80
            goto L8e
        L80:
            r0 = move-exception
            r12 = r0
            goto L85
        L83:
            r12 = r13
            r13 = r3
        L85:
            r12.printStackTrace()     // Catch: java.lang.Exception -> L8a
            r12 = r13
            goto L8e
        L8a:
            r0 = move-exception
        L8b:
            r12 = r0
            goto Lb1
        L8d:
            r3 = r12
        L8e:
            java.lang.String[] r13 = new java.lang.String[]{r1}     // Catch: java.lang.Exception -> L8a
            java.lang.String r0 = r2.getClickid()     // Catch: java.lang.Exception -> L8a
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L8a
            if (r0 == 0) goto L9d
            goto La1
        L9d:
            java.lang.String r1 = r2.getClickid()     // Catch: java.lang.Exception -> L8a
        La1:
            java.lang.String[] r0 = new java.lang.String[]{r1}     // Catch: java.lang.Exception -> L8a
            java.lang.CharSequence r12 = android.text.TextUtils.replace(r12, r13, r0)     // Catch: java.lang.Exception -> L8a
            java.lang.String r12 = r12.toString()     // Catch: java.lang.Exception -> L8a
            return r12
        Lae:
            r0 = move-exception
            r3 = r12
            goto L8b
        Lb1:
            r12.printStackTrace()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.utils.f.a(java.lang.String, com.meishu.sdk.platform.ms.c):java.lang.String");
    }

    public static String a(String str, BaseAdSlot baseAdSlot) {
        BaseAdSlot.ClickExtInfo clickExtInfo;
        try {
            if (!TextUtils.isEmpty(str) && baseAdSlot != null && baseAdSlot.getAppendInfo() != null && (clickExtInfo = baseAdSlot.getAppendInfo().getClickExtInfo()) != null) {
                return TextUtils.replace(str, new String[]{"__REWARD_TMP_ID__", "__WEB_TEMP_ID__"}, new String[]{String.valueOf(clickExtInfo.getRewardTempId()), String.valueOf(clickExtInfo.getWebTempId())}).toString();
            }
            return str;
        } catch (Throwable th) {
            th.printStackTrace();
            return str;
        }
    }

    public static boolean b(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                if (activeNetworkInfo.getTypeName().equalsIgnoreCase("WIFI")) {
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void a(com.meishu.sdk.platform.ms.c cVar, boolean z2) {
        try {
            LogUtil.d("ClickHandler", "handleClick");
            AdSlot adSlotA = cVar.a();
            a(cVar, adSlotA);
            try {
                if (cVar.a() instanceof BaseAdSlot) {
                    ((BaseAdSlot) cVar.a()).getAppendInfo().setHasClicked(true);
                }
            } catch (Exception unused) {
            }
            Context context = cVar.getContext();
            if (cVar.b() == AdType.FEED && (cVar instanceof com.meishu.sdk.meishu_ad.nativ.d) && ((com.meishu.sdk.meishu_ad.nativ.d) cVar).f32372b == 2 && ((com.meishu.sdk.meishu_ad.nativ.d) cVar).f32377g && (cVar.getAdView() instanceof NormalMediaView)) {
                ((NormalMediaView) cVar.getAdView()).a(z2);
                return;
            }
            com.meishu.sdk.platform.ms.c cVar2 = null;
            if (!TextUtils.isEmpty(adSlotA.getWx_username())) {
                try {
                    String[] wx_start = adSlotA.getWx_start();
                    if (wx_start != null) {
                        LogUtil.d("ClickHandler", "send wx_start");
                        for (String str : wx_start) {
                            if (!TextUtils.isEmpty(str)) {
                                a0.a(context, a(i0.a(str), cVar), new i());
                            }
                        }
                    }
                    String wx_appid = (!(adSlotA instanceof BaseAdSlot) || TextUtils.isEmpty(((BaseAdSlot) adSlotA).getWx_appid())) ? null : ((BaseAdSlot) adSlotA).getWx_appid();
                    if (wx_appid == null) {
                        wx_appid = AdSdk.getSharedPreferences().getString("wx_appid", null);
                    }
                    if (wx_appid == null) {
                        wx_appid = AdSdk.adConfig() != null ? AdSdk.adConfig().getWxAppid() : null;
                    }
                    Object objA = a(context, wx_appid, adSlotA);
                    if (objA instanceof Boolean) {
                        if (((Boolean) objA).booleanValue()) {
                            String[] wx_succ = adSlotA.getWx_succ();
                            if (wx_succ != null) {
                                LogUtil.d("ClickHandler", "send wx_success");
                                for (String str2 : wx_succ) {
                                    if (!TextUtils.isEmpty(str2)) {
                                        a0.a(context, a(i0.a(str2), cVar), new i());
                                    }
                                }
                                return;
                            }
                            return;
                        }
                        String[] wx_fail = adSlotA.getWx_fail();
                        if (wx_fail != null) {
                            LogUtil.d("ClickHandler", "send wx_fail");
                            for (String str3 : wx_fail) {
                                if (!TextUtils.isEmpty(str3)) {
                                    a0.a(context, a(i0.a(str3), cVar), new i());
                                }
                            }
                        }
                    }
                } catch (Exception unused2) {
                    String[] wx_fail2 = adSlotA.getWx_fail();
                    if (wx_fail2 != null) {
                        LogUtil.d("ClickHandler", "send wx_start");
                        for (String str4 : wx_fail2) {
                            if (!TextUtils.isEmpty(str4)) {
                                a0.a(context, a(i0.a(str4), cVar), new i());
                            }
                        }
                    }
                }
            }
            if (TextUtils.isEmpty(adSlotA.getDeep_link())) {
                cVar2 = cVar;
            } else {
                try {
                    Intent uri = Intent.parseUri(adSlotA.getDeep_link(), 0);
                    uri.addCategory("android.intent.category.BROWSABLE");
                    uri.setComponent(null);
                    uri.setSelector(null);
                    try {
                        if (uri.resolveActivity(AdSdk.getContext().getPackageManager()) != null) {
                            cVar2 = cVar;
                            if (a(context != null ? context : AdSdk.getContext(), adSlotA, cVar2, true, z2, null)) {
                                return;
                            }
                        } else {
                            cVar2 = cVar;
                            b(cVar2, false);
                            a(context, adSlotA, cVar2, 3);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        a(cVar2, context, adSlotA, true);
                    }
                } catch (Exception e3) {
                    e = e3;
                    cVar2 = cVar;
                }
            }
            a(cVar2, context, adSlotA, true);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void b(com.meishu.sdk.platform.ms.c cVar, boolean z2) {
        Method declaredMethod;
        try {
            if ((cVar instanceof com.meishu.sdk.core.ad.splash.c) && (cVar.a() instanceof BaseAdSlot) && ((BaseAdSlot) cVar.a()).getCbc() == 0) {
                String str = new String(g1.a("ZHI="));
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                try {
                    declaredMethod = cVar.getInteractionListener().getClass().getDeclaredMethod(str, Boolean.TYPE);
                } catch (Throwable unused) {
                    declaredMethod = null;
                }
                if (declaredMethod == null) {
                    try {
                        declaredMethod = cVar.getInteractionListener().getClass().getDeclaredMethod(str, Boolean.class);
                    } catch (Throwable unused2) {
                    }
                }
                if (declaredMethod == null) {
                    return;
                }
                SdkHandler.getInstance().postDelay(new b(declaredMethod, cVar, z2), 0L);
            }
        } catch (Throwable unused3) {
        }
    }

    public static boolean b(String str) {
        try {
            HashMap<String, Integer> map = r0.f31977h;
            if (!TextUtils.isEmpty(str) && map != null && !map.isEmpty()) {
                String scheme = Uri.parse(str).getScheme();
                if (TextUtils.isEmpty(scheme)) {
                    return false;
                }
                Iterator<String> it = map.keySet().iterator();
                while (it.hasNext()) {
                    if (scheme.equalsIgnoreCase(it.next())) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            StringBuilder sbA = com.meishu.sdk.activity.a.a("isDeepLinkLimited error: ");
            sbA.append(th.getMessage());
            LogUtil.e("ClickHandler", sbA.toString());
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009e A[Catch: Exception -> 0x0195, TryCatch #0 {Exception -> 0x0195, blocks: (B:23:0x0098, B:25:0x009e, B:27:0x00a9, B:29:0x00b1, B:31:0x00b7, B:33:0x00cd, B:35:0x00d6, B:36:0x00fa, B:37:0x0102, B:39:0x0106, B:50:0x0153, B:46:0x0123, B:48:0x0129, B:49:0x0149, B:51:0x015e, B:52:0x0172, B:53:0x0176, B:55:0x017c, B:57:0x0183, B:58:0x0191, B:22:0x0095), top: B:63:0x0095 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x017c A[Catch: Exception -> 0x0195, TryCatch #0 {Exception -> 0x0195, blocks: (B:23:0x0098, B:25:0x009e, B:27:0x00a9, B:29:0x00b1, B:31:0x00b7, B:33:0x00cd, B:35:0x00d6, B:36:0x00fa, B:37:0x0102, B:39:0x0106, B:50:0x0153, B:46:0x0123, B:48:0x0129, B:49:0x0149, B:51:0x015e, B:52:0x0172, B:53:0x0176, B:55:0x017c, B:57:0x0183, B:58:0x0191, B:22:0x0095), top: B:63:0x0095 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.meishu.sdk.platform.ms.c r13, com.meishu.sdk.core.ad.AdSlot r14) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.utils.f.a(com.meishu.sdk.platform.ms.c, com.meishu.sdk.core.ad.AdSlot):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.meishu.sdk.platform.ms.c r4, android.content.Context r5, com.meishu.sdk.core.ad.AdSlot r6, boolean r7) {
        /*
            int r0 = r4.getInteractionType()     // Catch: java.lang.Throwable -> L65
            r1 = 1
            if (r0 != r1) goto L27
            com.meishu.sdk.core.ad.AdSlot r6 = r4.a()     // Catch: java.lang.Throwable -> L65
            int r6 = r6.getDirect_market()     // Catch: java.lang.Throwable -> L65
            if (r6 != r1) goto L23
            com.meishu.sdk.core.ad.AdSlot r6 = r4.a()     // Catch: java.lang.Throwable -> L65
            java.lang.String r6 = r6.getPackageName()     // Catch: java.lang.Throwable -> L65
            boolean r6 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> L65
            if (r6 != 0) goto L23
            a(r5, r4)     // Catch: java.lang.Throwable -> L65
            return
        L23:
            b(r5, r4)     // Catch: java.lang.Throwable -> L65
            return
        L27:
            int r0 = r4.getInteractionType()     // Catch: java.lang.Throwable -> L65
            if (r0 != 0) goto L69
            if (r7 == 0) goto L56
            int r7 = com.meishu.sdk.core.utils.r0.f31984o     // Catch: java.lang.Throwable -> L65
            r0 = 0
            if (r7 != r1) goto L36
            r7 = r1
            goto L37
        L36:
            r7 = r0
        L37:
            boolean r2 = r6 instanceof com.meishu.sdk.core.ad.BaseAdSlot     // Catch: java.lang.Throwable -> L65
            if (r2 == 0) goto L51
            r2 = r6
            com.meishu.sdk.core.ad.BaseAdSlot r2 = (com.meishu.sdk.core.ad.BaseAdSlot) r2     // Catch: java.lang.Throwable -> L65
            java.lang.Integer r3 = r2.getUob()     // Catch: java.lang.Throwable -> L65
            if (r3 == 0) goto L51
            java.lang.Integer r7 = r2.getUob()     // Catch: java.lang.Throwable -> L65
            int r7 = r7.intValue()     // Catch: java.lang.Throwable -> L65
            if (r7 != r1) goto L4f
            goto L52
        L4f:
            r1 = r0
            goto L52
        L51:
            r1 = r7
        L52:
            b(r4, r5, r6, r1)     // Catch: java.lang.Throwable -> L65
            return
        L56:
            com.meishu.sdk.core.ad.BaseAdSlot r6 = (com.meishu.sdk.core.ad.BaseAdSlot) r6     // Catch: java.lang.Exception -> L60 java.lang.Throwable -> L65
            java.lang.String[] r4 = r6.getEventUrl()     // Catch: java.lang.Exception -> L60 java.lang.Throwable -> L65
            com.meishu.sdk.core.utils.p1.a(r4)     // Catch: java.lang.Exception -> L60 java.lang.Throwable -> L65
            return
        L60:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L65
            goto L69
        L65:
            r4 = move-exception
            r4.printStackTrace()
        L69:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.utils.f.a(com.meishu.sdk.platform.ms.c, android.content.Context, com.meishu.sdk.core.ad.AdSlot, boolean):void");
    }

    public static String a(String str, int i2, ShakeResult shakeResult) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            int i3 = 1;
            int i4 = 2;
            if (2 == i2 || 1 == i2 || 512 == i2) {
                i4 = 1;
                i3 = 0;
            } else if (4 == i2 || 64 == i2) {
                if (shakeResult != null) {
                    str = TextUtils.replace(str, new String[]{"__M_XMAX_ACC__", "__M_YMAX_ACC__", "__M_ZMAX_ACC__"}, new String[]{String.valueOf((int) (shakeResult.getShakeX() * 100.0f)), String.valueOf((int) (shakeResult.getShakeY() * 100.0f)), String.valueOf((int) (shakeResult.getShakeZ() * 100.0f))}).toString();
                }
                i3 = 2;
            } else {
                if (8 == i2 || 256 == i2) {
                    i3 = 5;
                    if (shakeResult != null) {
                        str = TextUtils.replace(str, new String[]{"__M_TURN_X__", "__M_TURN_Y__", "__M_TURN_Z__", "__M_TURN_TIME__"}, new String[]{String.valueOf((int) shakeResult.getTurnX()), String.valueOf((int) shakeResult.getTurnY()), String.valueOf((int) shakeResult.getTurnZ()), String.valueOf(shakeResult.getTotalTurnTime())}).toString();
                    }
                } else {
                    if (128 != i2 && 32 != i2) {
                        i3 = 0;
                    }
                    i4 = 3;
                }
                i4 = i3;
            }
            return str.replace("__M_SLD__", String.valueOf(i3)).replace("__M_SLD2__", String.valueOf(i4)).replace("__M_DENSITY__", String.valueOf(AdSdk.getContext().getResources().getDisplayMetrics().density));
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static Object a(Context context, String str, AdSlot adSlot) throws Exception {
        Class<?> cls = Class.forName("com.tencent.mm.opensdk.openapi.BaseWXApiImplV10");
        Constructor<?> declaredConstructor = cls.getDeclaredConstructor(Context.class, String.class, Boolean.TYPE, Integer.TYPE);
        declaredConstructor.setAccessible(true);
        Object objNewInstance = declaredConstructor.newInstance(context, str, Boolean.TRUE, 2);
        Class<?> cls2 = Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req");
        Object objNewInstance2 = cls2.getConstructor(null).newInstance(null);
        Field declaredField = cls2.getDeclaredField("userName");
        declaredField.setAccessible(true);
        declaredField.set(objNewInstance2, adSlot.getWx_username());
        Field declaredField2 = cls2.getDeclaredField("path");
        declaredField2.setAccessible(true);
        declaredField2.set(objNewInstance2, adSlot.getWx_path());
        Method declaredMethod = cls.getDeclaredMethod("sendReq", Class.forName("com.tencent.mm.opensdk.modelbase.BaseReq"));
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(objNewInstance, objNewInstance2);
    }

    public static void a(String str, Intent intent) {
        for (int i2 = 0; i2 < r0.f31975f.size(); i2++) {
            try {
                PackageBean.DpFlagBean dpFlagBean = r0.f31975f.get(i2);
                if (dpFlagBean.getScheme() != null && str.startsWith(dpFlagBean.getScheme())) {
                    List<String> flag = dpFlagBean.getFlag();
                    for (int i3 = 0; i3 < flag.size(); i3++) {
                        String str2 = flag.get(i3);
                        if ("FLAG_ACTIVITY_SINGLE_TOP".equals(str2)) {
                            intent.addFlags(C.ENCODING_PCM_A_LAW);
                        }
                        if ("FLAG_ACTIVITY_CLEAR_TASK".equals(str2)) {
                            intent.addFlags(32768);
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
    }

    public static void a(Context context, com.meishu.sdk.platform.ms.c cVar) {
        try {
            AdSlot adSlotA = cVar.a();
            String packageName = adSlotA.getPackageName();
            String[] dn_succ = adSlotA.getDn_succ();
            String[] dn_inst_start = adSlotA.getDn_inst_start();
            String[] dn_inst_succ = adSlotA.getDn_inst_succ();
            AppStoreUtil.f31744a = packageName;
            AppStoreUtil.f31745b = dn_succ;
            AppStoreUtil.f31746c = dn_inst_start;
            AppStoreUtil.f31747d = dn_inst_succ;
            String[] strArrA = a(adSlotA.getDn_start(), cVar);
            if (strArrA != null) {
                LogUtil.d("ClickHandler", "Report send dn_start");
                for (String str : strArrA) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(context, str, new i());
                    }
                }
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(BaseConstants.MARKET_PREFIX + adSlotA.getPackageName()));
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            if (Build.MANUFACTURER.equalsIgnoreCase("honor")) {
                intent.setPackage("com.hihonor.appmarket");
            }
            context.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    public static boolean a(String str) {
        try {
            Intent uri = Intent.parseUri(str, 0);
            uri.addCategory("android.intent.category.BROWSABLE");
            uri.setComponent(null);
            uri.setSelector(null);
            return uri.resolveActivity(AdSdk.getContext().getPackageManager()) != null;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static boolean a(final Context context, final AdSlot adSlot, final com.meishu.sdk.platform.ms.c cVar, final boolean z2, final boolean z3, final p0.a aVar) {
        com.meishu.sdk.platform.ms.c cVar2;
        final boolean z4;
        boolean z5;
        final ArrayList arrayList;
        String dpsign;
        String[] eventUrl;
        try {
            if (r0.f31989t != 1 && b(adSlot.getDeep_link())) {
                LogUtil.d("ClickHandler", "limit dp");
                if (aVar != null) {
                    aVar.a(false);
                }
                return false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        b(adSlot, cVar);
        try {
            z4 = (adSlot instanceof BaseAdSlot) && ((BaseAdSlot) adSlot).getNop() == 1;
            z5 = r0.f31986q == 1 ? false : !z4;
            arrayList = new ArrayList();
            try {
                cVar2 = cVar;
            } catch (Exception e3) {
                e = e3;
                cVar2 = cVar;
            }
        } catch (Exception e4) {
            e = e4;
            cVar2 = cVar;
        }
        try {
            p0.b.f31950a.f31949a = new p0.a() { // from class: com.meishu.sdk.core.utils.A
                @Override // com.meishu.sdk.core.utils.p0.a
                public final void a(boolean z6) {
                    f.a(arrayList, aVar, cVar, z2, z4, z3, context, adSlot, z6);
                }
            };
            m0 m0Var = new m0(-1L, false);
            com.meishu.sdk.core.service.d.a(m0Var);
            if (adSlot instanceof BaseAdSlot) {
                dpsign = ((BaseAdSlot) adSlot).getDPSIGN();
                eventUrl = ((BaseAdSlot) adSlot).getEventUrl();
            } else {
                dpsign = null;
                eventUrl = null;
            }
            boolean z6 = z5;
            p0.a(context, adSlot.getDeep_link(), adSlot.getDpSign(), adSlot.getDp_start(), dpsign, eventUrl, z6);
            new Thread(new a(new SoftReference(context), adSlot, new SoftReference(cVar2), m0Var, arrayList, z6)).start();
            return true;
        } catch (Exception e5) {
            e = e5;
            a(context, adSlot, cVar2, 4);
            e.printStackTrace();
            return false;
        }
    }

    public static /* synthetic */ void a(List list, p0.a aVar, com.meishu.sdk.platform.ms.c cVar, boolean z2, boolean z3, boolean z4, Context context, AdSlot adSlot, boolean z5) {
        list.add(Boolean.valueOf(z5));
        if (aVar != null) {
            aVar.a(z5);
        }
        b(cVar, z5);
        if (z5 || !z2) {
            return;
        }
        LogUtil.d("ClickHandler", "openDeepLink error. call defaultInteraction");
        boolean z6 = r0.f31986q != 1 ? !z3 || z4 : false;
        if (cVar.getInteractionType() == 0) {
            a(cVar, context, adSlot, z6);
        }
    }

    public static boolean a(Reference reference) {
        if (reference == null) {
            return false;
        }
        try {
            return reference.get() != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void a(String[] strArr) {
        if (strArr != null) {
            for (String str : strArr) {
                if (!TextUtils.isEmpty(str)) {
                    com.meishu.sdk.core.loader.a.a(AdSdk.getContext(), str);
                }
            }
        }
    }

    public static void a(AdSlot adSlot, Context context, com.meishu.sdk.platform.ms.c cVar, boolean z2) {
        try {
            String[] dp_succ = adSlot.getDp_succ();
            i0.a(dp_succ, z2 ? 1 : 0);
            if (dp_succ != null) {
                for (String str : dp_succ) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(context, a(str, cVar), new i());
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(Context context, AdSlot adSlot, com.meishu.sdk.platform.ms.c cVar, int i2) {
        try {
            String[] dp_fail = adSlot.getDp_fail();
            i0.a(dp_fail, i2);
            if (dp_fail != null) {
                LogUtil.d("ClickHandler", "send dp_fail");
                for (String str : dp_fail) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(context, a(str, cVar), new i());
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static boolean a(AdSlot adSlot, com.meishu.sdk.platform.ms.c cVar) {
        HashMap<String, String> dynamicMap;
        String str;
        Object obj;
        try {
            if (r0.f31979j == null) {
                return false;
            }
            Gson gson = new Gson();
            Map map = null;
            if (adSlot instanceof BaseAdSlot) {
                dynamicMap = ((BaseAdSlot) adSlot).getDynamicMap();
                if (cVar != null && cVar.b() == AdType.SPLASH && AdSdk.adConfig() != null && AdSdk.adConfig().isSplashClickToClosed()) {
                    ((BaseAdSlot) adSlot).setAdClosed(true);
                }
                if (((BaseAdSlot) adSlot).getIsAdClosed() && r0.f31979j.getX() == 0) {
                    return false;
                }
            } else {
                dynamicMap = null;
            }
            if (System.currentTimeMillis() - r0.f31979j.getLastTime() <= r0.f31979j.getI() * 1000) {
                return false;
            }
            List<String> k2 = r0.f31979j.getK();
            if (k2 != null) {
                str = "";
                for (int i2 = 0; i2 < k2.size(); i2++) {
                    try {
                        String str2 = k2.get(i2);
                        if (!TextUtils.isEmpty(str2)) {
                            try {
                                Field declaredField = BaseAdSlot.class.getDeclaredField(str2);
                                declaredField.setAccessible(true);
                                obj = declaredField.get(adSlot);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                                obj = null;
                            }
                            try {
                                if (NativeModel.JSON_KEY_SCHEME.equals(str2) && obj == null && (adSlot instanceof BaseAdSlot)) {
                                    str = ((BaseAdSlot) adSlot).getScheme() != null ? str + "_" + ((BaseAdSlot) adSlot).getScheme() : str + "_" + Uri.parse(adSlot.getDeep_link()).getScheme();
                                }
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                            if (obj != null) {
                                str = i2 == 0 ? str + obj : str + "_" + obj;
                            } else if (dynamicMap == null || !dynamicMap.containsKey(str2)) {
                                if (i2 < k2.size() - 1) {
                                    str = str + "_";
                                }
                            } else if (i2 == 0) {
                                str = str + dynamicMap.get(str2);
                            } else {
                                str = str + "_" + dynamicMap.get(str2);
                            }
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            } else {
                str = "";
            }
            Map<String, Integer> r2 = r0.f31979j.getR();
            long jLongValue = 0;
            try {
                String string = AdSdk.getSharedPreferences().getString("queryKeyLastTimeMap", "");
                if (!TextUtils.isEmpty(string)) {
                    Map map2 = (Map) gson.fromJson(string, new g().getType());
                    if (map2 != null) {
                        try {
                            if (map2.containsKey(str)) {
                                jLongValue = ((Long) map2.get(str)).longValue();
                            }
                        } catch (Exception e5) {
                            e = e5;
                            map = map2;
                            e.printStackTrace();
                            return r2 == null ? false : false;
                        }
                    }
                    map = map2;
                }
            } catch (Exception e6) {
                e = e6;
            }
            if (r2 == null && !TextUtils.isEmpty(str)) {
                if (System.currentTimeMillis() - jLongValue <= r2.get(str).intValue() * 1000) {
                    return false;
                }
                if (map == null) {
                    map = new HashMap();
                }
                map.put(str, Long.valueOf(System.currentTimeMillis()));
                AdSdk.getSharedPreferences().edit().putString("queryKeyLastTimeMap", gson.toJson(map)).apply();
                return true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static boolean a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static String[] a(String[] strArr, com.meishu.sdk.platform.ms.c cVar) {
        if (strArr != null) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                strArr[i2] = a(strArr[i2], cVar);
            }
        }
        return strArr;
    }
}
