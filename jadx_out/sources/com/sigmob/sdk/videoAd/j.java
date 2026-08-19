package com.sigmob.sdk.videoAd;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.byazt.rx.BaseConstants;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.common.utils.ViewUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.ImageLoader;
import com.czhj.volley.toolbox.StringUtil;
import com.sigmob.sdk.base.common.AbstractC1262j;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.C1282v;
import com.sigmob.sdk.base.common.EnumC1268m;
import com.sigmob.sdk.base.common.EnumC1270n;
import com.sigmob.sdk.base.common.InterfaceC1246b;
import com.sigmob.sdk.base.common.InterfaceC1264k;
import com.sigmob.sdk.base.common.ac;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.am;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.SensorEntity;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.ClickAreaSetting;
import com.sigmob.sdk.base.models.rtb.LinkAction;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.views.C1290b;
import com.sigmob.sdk.base.views.C1292d;
import com.sigmob.sdk.base.views.C1301m;
import com.sigmob.sdk.base.views.C1303o;
import com.sigmob.sdk.base.views.DialogC1305q;
import com.sigmob.sdk.base.views.EnumC1306s;
import com.sigmob.sdk.base.views.ap;
import com.sigmob.sdk.base.views.ar;
import com.sigmob.sdk.base.views.as;
import com.sigmob.sdk.base.views.aw;
import com.sigmob.sdk.base.views.z;
import com.sigmob.sdk.nativead.DialogC1346b;
import com.sigmob.sdk.videoAd.j;
import com.sigmob.sdk.videoplayer.C1381a;
import com.sigmob.sdk.videoplayer.C1383c;
import com.sigmob.windad.natives.WindNativeAdData;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class j extends AbstractC1375b implements ac, C1258h.a, com.sigmob.sdk.videocache.d {

    /* renamed from: f, reason: collision with root package name */
    public static final String f38778f = "j";

    /* renamed from: g, reason: collision with root package name */
    static final String f38779g = "video_config";

    /* renamed from: i, reason: collision with root package name */
    private static final String f38780i = "current_position";

    /* renamed from: j, reason: collision with root package name */
    private static final String f38781j = "video_finished";

    /* renamed from: k, reason: collision with root package name */
    private static final String f38782k = "companionAd_visable";

    /* renamed from: l, reason: collision with root package name */
    private static final long f38783l = 50;

    /* renamed from: m, reason: collision with root package name */
    private static final int f38784m = -1;

    /* renamed from: n, reason: collision with root package name */
    private static final int f38785n = 0;

    /* renamed from: o, reason: collision with root package name */
    private static int f38786o;

    /* renamed from: A, reason: collision with root package name */
    private String f38787A;

    /* renamed from: B, reason: collision with root package name */
    private boolean f38788B;

    /* renamed from: C, reason: collision with root package name */
    private final Handler f38789C;

    /* renamed from: D, reason: collision with root package name */
    private boolean f38790D;

    /* renamed from: E, reason: collision with root package name */
    private C1292d f38791E;

    /* renamed from: F, reason: collision with root package name */
    private String f38792F;

    /* renamed from: G, reason: collision with root package name */
    private int f38793G;

    /* renamed from: H, reason: collision with root package name */
    private boolean f38794H;

    /* renamed from: I, reason: collision with root package name */
    private C1374a f38795I;

    /* renamed from: J, reason: collision with root package name */
    private int f38796J;

    /* renamed from: K, reason: collision with root package name */
    private C1381a f38797K;

    /* renamed from: L, reason: collision with root package name */
    private BaseAdUnit f38798L;

    /* renamed from: M, reason: collision with root package name */
    private View f38799M;

    /* renamed from: N, reason: collision with root package name */
    private C1282v f38800N;

    /* renamed from: O, reason: collision with root package name */
    private final MediaMetadataRetriever f38801O;

    /* renamed from: P, reason: collision with root package name */
    private as f38802P;

    /* renamed from: Q, reason: collision with root package name */
    private ar f38803Q;

    /* renamed from: R, reason: collision with root package name */
    private com.sigmob.sdk.base.views.w f38804R;

    /* renamed from: S, reason: collision with root package name */
    private C1379f f38805S;

    /* renamed from: T, reason: collision with root package name */
    private int f38806T;

    /* renamed from: U, reason: collision with root package name */
    private int f38807U;

    /* renamed from: V, reason: collision with root package name */
    private boolean f38808V;

    /* renamed from: W, reason: collision with root package name */
    private boolean f38809W;

    /* renamed from: X, reason: collision with root package name */
    private int f38810X;

    /* renamed from: Y, reason: collision with root package name */
    private boolean f38811Y;

    /* renamed from: Z, reason: collision with root package name */
    private RelativeLayout f38812Z;
    private boolean aa;
    private ar ab;
    private boolean ac;
    private boolean ad;
    private ImageLoader.ImageContainer ae;
    private C1301m af;
    private boolean ag;
    private boolean ah;
    private com.sigmob.sdk.base.views.z ai;
    private boolean aj;
    private DialogC1305q ak;
    private boolean al;
    private com.sigmob.sdk.base.views.w am;
    private com.sigmob.sdk.base.views.w an;
    private am.a ao;
    private com.sigmob.sdk.base.views.v ap;
    private boolean aq;
    private DialogC1346b ar;
    private com.sigmob.sdk.base.views.w as;
    private boolean at;
    private boolean au;
    private boolean av;
    private boolean aw;
    private String ax;
    private final View.OnClickListener ay;
    private boolean az;

    /* renamed from: h, reason: collision with root package name */
    String f38813h;

    /* renamed from: p, reason: collision with root package name */
    private final int f38814p;

    /* renamed from: q, reason: collision with root package name */
    private C1290b f38815q;

    /* renamed from: r, reason: collision with root package name */
    private ImageView f38816r;

    /* renamed from: s, reason: collision with root package name */
    private RelativeLayout f38817s;

    /* renamed from: t, reason: collision with root package name */
    private int f38818t;

    /* renamed from: u, reason: collision with root package name */
    private boolean f38819u;

    /* renamed from: v, reason: collision with root package name */
    private int f38820v;

    /* renamed from: w, reason: collision with root package name */
    private String f38821w;

    /* renamed from: x, reason: collision with root package name */
    private final List<String> f38822x;

    /* renamed from: y, reason: collision with root package name */
    private final List<String> f38823y;

    /* renamed from: z, reason: collision with root package name */
    private long f38824z;

    /* renamed from: com.sigmob.sdk.videoAd.j$10, reason: invalid class name */
    public class AnonymousClass10 extends am.b {
        public AnonymousClass10() {
        }

        @Override // com.sigmob.sdk.base.common.am.b, com.sigmob.sdk.base.common.am.c
        public void a(Map<String, Number> map) {
            if (map == null || j.this.f38798L == null || j.this.aq) {
                return;
            }
            j.this.aq = true;
            Number number = map.get("x_max_acc");
            Number number2 = map.get("y_max_acc");
            Number number3 = map.get("z_max_acc");
            ClickCommon clickCommon = j.this.f38798L.getClickCommon();
            if (number != null) {
                clickCommon.x_max_acc = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                clickCommon.y_max_acc = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                clickCommon.z_max_acc = String.valueOf(number3.intValue());
            }
            clickCommon.sld = "2";
            j.this.ap.postDelayed(new Runnable() { // from class: com.sigmob.sdk.videoAd.C
                @Override // java.lang.Runnable
                public final void run() throws UnsupportedEncodingException {
                    this.f38734b.b();
                }
            }, 400L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() throws UnsupportedEncodingException {
            j.this.J();
        }
    }

    /* renamed from: com.sigmob.sdk.videoAd.j$11, reason: invalid class name */
    public class AnonymousClass11 extends am.b {
        public AnonymousClass11() {
        }

        @Override // com.sigmob.sdk.base.common.am.b, com.sigmob.sdk.base.common.am.c
        public void a(Map<String, Number> map) {
            if (map == null || j.this.f38798L == null || j.this.aq) {
                return;
            }
            j.this.aq = true;
            Number number = map.get("turn_x");
            Number number2 = map.get("turn_y");
            Number number3 = map.get("turn_z");
            Number number4 = map.get("turn_time");
            ClickCommon clickCommon = j.this.f38798L.getClickCommon();
            if (number != null) {
                clickCommon.turn_x = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                clickCommon.turn_y = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                clickCommon.turn_z = String.valueOf(number3.intValue());
            }
            clickCommon.turn_time = String.valueOf(number4);
            clickCommon.sld = "5";
            j.this.ap.postDelayed(new Runnable() { // from class: com.sigmob.sdk.videoAd.D
                @Override // java.lang.Runnable
                public final void run() throws UnsupportedEncodingException {
                    this.f38735b.b();
                }
            }, 400L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() throws UnsupportedEncodingException {
            j.this.J();
        }
    }

    /* renamed from: com.sigmob.sdk.videoAd.j$12, reason: invalid class name */
    public class AnonymousClass12 extends am.b {
        public AnonymousClass12() {
        }

        @Override // com.sigmob.sdk.base.common.am.b, com.sigmob.sdk.base.common.am.c
        public void a(float f2) {
            if (j.this.ap instanceof ap) {
                ((ap) j.this.ap).a(f2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() throws UnsupportedEncodingException {
            j.this.J();
        }

        @Override // com.sigmob.sdk.base.common.am.b, com.sigmob.sdk.base.common.am.c
        public void a(Map<String, Number> map) {
            if (map == null || j.this.f38798L == null || j.this.aq) {
                return;
            }
            j.this.aq = true;
            Number number = map.get("x_max_acc");
            Number number2 = map.get("y_max_acc");
            Number number3 = map.get("z_max_acc");
            ClickCommon clickCommon = j.this.f38798L.getClickCommon();
            if (number != null) {
                clickCommon.x_max_acc = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                clickCommon.y_max_acc = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                clickCommon.z_max_acc = String.valueOf(number3.intValue());
            }
            clickCommon.sld = "2";
            j.this.ap.postDelayed(new Runnable() { // from class: com.sigmob.sdk.videoAd.E
                @Override // java.lang.Runnable
                public final void run() throws UnsupportedEncodingException {
                    this.f38736b.b();
                }
            }, 400L);
        }
    }

    /* renamed from: com.sigmob.sdk.videoAd.j$13, reason: invalid class name */
    public class AnonymousClass13 extends am.b {
        public AnonymousClass13() {
        }

        @Override // com.sigmob.sdk.base.common.am.b, com.sigmob.sdk.base.common.am.c
        public void a(float f2) {
            if (j.this.ap instanceof com.sigmob.sdk.base.views.am) {
                ((com.sigmob.sdk.base.views.am) j.this.ap).a(f2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() throws UnsupportedEncodingException {
            j.this.J();
        }

        @Override // com.sigmob.sdk.base.common.am.b, com.sigmob.sdk.base.common.am.c
        public void a(Map<String, Number> map) {
            if (map == null || j.this.f38798L == null || j.this.aq) {
                return;
            }
            j.this.aq = true;
            Number number = map.get("turn_x");
            Number number2 = map.get("turn_y");
            Number number3 = map.get("turn_z");
            Number number4 = map.get("turn_time");
            ClickCommon clickCommon = j.this.f38798L.getClickCommon();
            if (number != null) {
                clickCommon.turn_x = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                clickCommon.turn_y = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                clickCommon.turn_z = String.valueOf(number3.intValue());
            }
            clickCommon.turn_time = String.valueOf(number4);
            clickCommon.sld = "5";
            j.this.ap.postDelayed(new Runnable() { // from class: com.sigmob.sdk.videoAd.F
                @Override // java.lang.Runnable
                public final void run() throws UnsupportedEncodingException {
                    this.f38737b.b();
                }
            }, 400L);
        }
    }

    /* renamed from: com.sigmob.sdk.videoAd.j$6, reason: invalid class name */
    public class AnonymousClass6 extends com.sigmob.sdk.base.l {
        public AnonymousClass6() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setUrl(str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            SigmobLog.d("onPageFinished: ");
            j.this.f38821w = "done";
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            SigmobLog.d("onPageStarted: ");
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i2, String str, String str2) {
            super.onReceivedError(webView, i2, str, str2);
            if (str2.startsWith("http://")) {
                return;
            }
            j.this.f38821w = "error";
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Uri uri;
            String host;
            String scheme;
            try {
                SigmobLog.d("load url " + str);
                uri = Uri.parse(str);
                host = uri.getHost();
                scheme = uri.getScheme();
                if (!com.sigmob.sdk.base.utils.s.a((CharSequence) host)) {
                    if (!"track".equals(host) && !"active".equals(host)) {
                        if ("openFourElements".equals(host)) {
                            j.this.b(2);
                            return true;
                        }
                    }
                    String queryParameter = uri.getQueryParameter("data");
                    String queryParameter2 = uri.getQueryParameter(NotificationCompat.CATEGORY_EVENT);
                    if (!com.sigmob.sdk.base.utils.s.a((CharSequence) queryParameter2) && !com.sigmob.sdk.base.utils.s.a((CharSequence) queryParameter)) {
                        final String str2 = new String(Base64.decode(queryParameter, 0), "utf-8");
                        ad.a(host, queryParameter2, j.this.f38798L, new ad.a() { // from class: com.sigmob.sdk.videoAd.G
                            @Override // com.sigmob.sdk.base.common.ad.a
                            public final void onAddExtra(Object obj) {
                                j.AnonymousClass6.a(str2, obj);
                            }
                        });
                    }
                    return true;
                }
            } catch (Throwable unused) {
                SigmobLog.e("webview");
            }
            if (j.this.aa) {
                return true;
            }
            if (j.this.f38798L.getMaterial().disable_auto_deeplink.booleanValue() && !j.this.f38788B) {
                return (com.sigmob.sdk.base.utils.s.b(scheme) && scheme.startsWith("http")) ? false : true;
            }
            if (j.this.f38798L.getMaterial().click_type.intValue() == EnumC1268m.Button.a() || com.sigmob.sdk.base.utils.s.a((CharSequence) j.this.f38798L.getLanding_page()) || j.this.f38798L.getMaterial().creative_type.intValue() == EnumC1270n.CreativeTypeVideo_EndCardURL.a()) {
                j.this.f38798L.getClickCommon().click_area = ClickCommon.CLICK_AREA_BTN;
                j.this.f38798L.getClickCommon().click_scene = "endcard";
                if (j.this.f38803Q.getVisibility() != 0 || com.sigmob.sdk.base.utils.s.a((CharSequence) scheme)) {
                    if (!com.sigmob.sdk.base.utils.s.a((CharSequence) scheme) && (scheme.equals("http") || scheme.equals("https"))) {
                        if (j.this.ah) {
                            j.this.W();
                            j.this.ah = false;
                        }
                        webView.loadUrl(str);
                    }
                } else if (!StringUtil.scheme().equalsIgnoreCase(scheme) || com.sigmob.sdk.base.utils.s.a((CharSequence) host) || !host.equalsIgnoreCase("download") || com.sigmob.sdk.base.utils.s.a((CharSequence) j.this.f38798L.getMaterial().landing_page)) {
                    try {
                        LinkAction linkActionA = C1383c.a(j.this.f38798L.getAdLinkActions(), uri);
                        if (linkActionA == null) {
                            linkActionA = C1383c.a(j.this.f38798L.getSlotAdLinkActions(), uri);
                        }
                        boolean zHasReachedMaxRedirectCount = j.this.f38798L.hasReachedMaxRedirectCount();
                        int quickAppMaxRedirectCount = j.this.f38798L.getQuickAppMaxRedirectCount();
                        if (zHasReachedMaxRedirectCount) {
                            com.sigmob.sdk.base.utils.k.e(j.f38778f, "reach max redirect count(%d).", Integer.valueOf(quickAppMaxRedirectCount));
                            return true;
                        }
                        int redirectCount = j.this.f38798L.getRedirectCount(uri);
                        if (linkActionA != null && linkActionA.redirect_count.intValue() <= redirectCount) {
                            com.sigmob.sdk.base.utils.k.e(j.f38778f, "%s reach redirect count(%d).", scheme, Integer.valueOf(redirectCount));
                            return true;
                        }
                        if (!scheme.equalsIgnoreCase("http") && !scheme.equalsIgnoreCase("https")) {
                            j.this.f38798L.addRedirectCount(uri);
                            j.this.f38798L.setCustomDeeplink(str);
                            j.this.f38798L.incrementRedirectCount();
                            j.this.f38795I.a(com.sigmob.sdk.base.a.ENDCARD, j.this.f38813h, true);
                            com.sigmob.sdk.base.utils.k.c(j.f38778f, "%s(quick) not reach redirect count(%d).", scheme, Integer.valueOf(redirectCount));
                            return true;
                        }
                        webView.loadUrl(str);
                        com.sigmob.sdk.base.utils.k.c(j.f38778f, "%s(302) not reach redirect count(%d).", scheme, Integer.valueOf(redirectCount));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } else {
                    j.this.f38795I.a(com.sigmob.sdk.base.a.ENDCARD, j.this.f38813h, true);
                }
            } else if (j.this.f38798L.getMaterial().click_type.intValue() == EnumC1268m.FullScreen.a()) {
                com.sigmob.sdk.base.utils.s.a((CharSequence) j.this.f38798L.getLanding_page());
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            String host = webResourceRequest.getUrl().getHost();
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) host) || !host.equals("localhost")) {
                return;
            }
            j.this.f38821w = "error";
        }
    }

    /* renamed from: com.sigmob.sdk.videoAd.j$7, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass7 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f38840a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f38841b;

        static {
            int[] iArr = new int[com.sigmob.sdk.base.a.values().length];
            f38841b = iArr;
            try {
                iArr[com.sigmob.sdk.base.a.COMPANION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38841b[com.sigmob.sdk.base.a.VIDEO_CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38841b[com.sigmob.sdk.base.a.MOTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[com.sigmob.sdk.videoplayer.d.values().length];
            f38840a = iArr2;
            try {
                iArr2[com.sigmob.sdk.videoplayer.d.STATE_PREPARED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38840a[com.sigmob.sdk.videoplayer.d.STATE_PLAYING.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38840a[com.sigmob.sdk.videoplayer.d.STATE_AUTO_COMPLETE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38840a[com.sigmob.sdk.videoplayer.d.STATE_STOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38840a[com.sigmob.sdk.videoplayer.d.STATE_BUFFERING_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38840a[com.sigmob.sdk.videoplayer.d.STATE_BUFFERING_END.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f38840a[com.sigmob.sdk.videoplayer.d.STATE_PAUSE.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f38840a[com.sigmob.sdk.videoplayer.d.STATE_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public static class a {
        @JavascriptInterface
        public int getInteractionType() {
            return j.f38786o;
        }

        @JavascriptInterface
        public String getSdkVersion() {
            return com.sigmob.sdk.base.n.f36448k;
        }
    }

    public j(Activity activity, BaseAdUnit baseAdUnit, Bundle bundle, Bundle bundle2, String str, InterfaceC1264k interfaceC1264k) throws IllegalStateException {
        super(activity, str, interfaceC1264k);
        this.f38818t = 0;
        this.f38819u = false;
        this.f38820v = 0;
        this.f38821w = "undone";
        this.f38822x = new ArrayList();
        this.f38823y = new ArrayList();
        this.f38787A = com.baidu.mobads.sdk.internal.a.f10877a;
        this.f38789C = new Handler(Looper.getMainLooper());
        this.f38790D = true;
        this.f38798L = null;
        this.f38801O = new MediaMetadataRetriever();
        this.f38806T = 0;
        this.f38811Y = false;
        this.aa = false;
        this.ac = false;
        this.ad = false;
        this.ag = false;
        this.aj = false;
        this.al = false;
        this.ay = new View.OnClickListener() { // from class: com.sigmob.sdk.videoAd.j.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Activity activityN = j.this.n();
                if (activityN == null || j.this.f38798L == null) {
                    return;
                }
                j jVar = j.this;
                if (jVar.a((Dialog) jVar.ar)) {
                    return;
                }
                j.this.ar = new DialogC1346b(activityN, j.this.f38798L);
                j.this.ar.a();
                j.this.ar.a(new WindNativeAdData.DislikeInteractionCallback() { // from class: com.sigmob.sdk.videoAd.j.9.1
                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onCancel() {
                        j.this.N();
                        j.this.G();
                        if (j.this.ao == null) {
                            return;
                        }
                        j.this.ao.a();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onSelected(int i2, String str2, boolean z2) {
                        j.this.N();
                        j.this.G();
                        if (j.this.ao == null) {
                            return;
                        }
                        j.this.ao.a();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onShow() {
                        j.this.O();
                        if (j.this.ao == null) {
                            return;
                        }
                        j.this.ao.b();
                    }
                });
            }
        };
        this.f38798L = baseAdUnit;
        this.f38795I = (C1374a) baseAdUnit.getAdConfig();
        this.f38814p = Dips.dipsToIntPixels(10.0f, this.f35956a);
        this.f38795I.a(n(), this.f38798L, new DialogC1305q.b() { // from class: com.sigmob.sdk.videoAd.j.1
            @Override // com.sigmob.sdk.base.views.DialogC1305q.b
            public void a() {
                j.this.al = false;
                j.this.aq = false;
                j.this.N();
                if (j.this.ao != null) {
                    j.this.ao.a();
                }
            }

            @Override // com.sigmob.sdk.base.views.DialogC1305q.b
            public void b() {
                j.this.al = true;
                j.this.aq = true;
                j.this.O();
                if (j.this.ao != null) {
                    j.this.ao.b();
                }
            }

            @Override // com.sigmob.sdk.base.views.DialogC1305q.b
            public void a(Error error) {
            }

            @Override // com.sigmob.sdk.base.views.DialogC1305q.b
            public void a(String str2, String str3) {
                ClickCommon clickCommon = j.this.f38798L.getClickCommon();
                clickCommon.click_area = ClickCommon.CLICK_AREA_BTN;
                clickCommon.click_scene = "appinfo";
                clickCommon.is_final_click = true;
            }
        });
        this.f38795I.a((ac) this);
        this.f38792F = this.f38798L.getAdslot_id();
        f38786o = this.f38798L.getInteractionType();
        b(activity, this.f38796J, bundle);
        this.f38798L.getMacroCommon().addMarcoKey(SigMacroCommon._PLAYLASTFRAME_, "1");
        this.f38790D = this.f38798L.getMaterial().creative_type.intValue() != EnumC1270n.CreativeTypeVideo_transparent_html.a();
        if (bundle2 != null) {
            this.f38807U = bundle2.getInt(f38780i, -1);
            this.f38808V = bundle2.getBoolean(f38781j, false);
            this.f38811Y = bundle2.getBoolean(f38782k, false);
        }
        if (this.f35960e == null) {
            int iB = com.sigmob.sdk.base.k.b();
            if (iB != 0) {
                n().setTheme(iB);
            }
            m().setBackgroundColor(-16777216);
        } else {
            m().setBackgroundColor(0);
        }
        RelativeLayout relativeLayout = new RelativeLayout(this.f35956a);
        this.f38817s = relativeLayout;
        relativeLayout.setBackgroundColor(-16777216);
        this.f38797K = d(this.f35956a, 0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        this.f38817s.addView(this.f38797K, layoutParams);
        m().addView(this.f38817s, new RelativeLayout.LayoutParams(-1, -1));
        if (this.f38819u) {
            a(this.f35956a);
            E();
        }
        q();
        this.f38817s.setClickable(true);
        this.f38817s.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.videoAd.j.8

            /* renamed from: a, reason: collision with root package name */
            MotionEvent f38842a = null;

            /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
            @Override // android.view.View.OnTouchListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean onTouch(android.view.View r4, android.view.MotionEvent r5) throws java.io.UnsupportedEncodingException {
                /*
                    r3 = this;
                    com.sigmob.sdk.videoAd.j r4 = com.sigmob.sdk.videoAd.j.this
                    com.sigmob.sdk.base.models.BaseAdUnit r4 = com.sigmob.sdk.videoAd.j.c(r4)
                    boolean r4 = r4.getFullClickOnVideo()
                    r0 = 1
                    if (r4 == 0) goto L42
                    com.sigmob.sdk.videoAd.j r4 = com.sigmob.sdk.videoAd.j.this
                    com.sigmob.sdk.base.views.d r4 = com.sigmob.sdk.videoAd.j.e(r4)
                    if (r4 == 0) goto L21
                    com.sigmob.sdk.videoAd.j r4 = com.sigmob.sdk.videoAd.j.this
                    com.sigmob.sdk.base.views.d r4 = com.sigmob.sdk.videoAd.j.e(r4)
                    int r4 = r4.getVisibility()
                    if (r4 == 0) goto La1
                L21:
                    int r4 = r5.getAction()
                    if (r4 != r0) goto L35
                    android.view.MotionEvent r4 = r3.f38842a
                    if (r4 != 0) goto L2d
                    r3.f38842a = r5
                L2d:
                    com.sigmob.sdk.videoAd.j r4 = com.sigmob.sdk.videoAd.j.this
                    android.view.MotionEvent r1 = r3.f38842a
                    com.sigmob.sdk.videoAd.j.a(r4, r1, r5)
                    goto La1
                L35:
                    int r4 = r5.getAction()
                    if (r4 != 0) goto La1
                L3b:
                    android.view.MotionEvent r4 = android.view.MotionEvent.obtain(r5)
                    r3.f38842a = r4
                    goto La1
                L42:
                    int r4 = r5.getAction()
                    if (r4 != r0) goto L9a
                    com.sigmob.sdk.videoAd.j r4 = com.sigmob.sdk.videoAd.j.this
                    com.sigmob.sdk.base.models.BaseAdUnit r4 = com.sigmob.sdk.videoAd.j.c(r4)
                    com.sigmob.sdk.base.models.rtb.MaterialMeta r4 = r4.getMaterial()
                    java.lang.Boolean r4 = r4.enable_collapse_tool_bar
                    boolean r4 = r4.booleanValue()
                    r1 = 0
                    if (r4 == 0) goto L8f
                    com.sigmob.sdk.videoAd.j r4 = com.sigmob.sdk.videoAd.j.this
                    com.sigmob.sdk.base.views.m r4 = com.sigmob.sdk.videoAd.j.f(r4)
                    if (r4 == 0) goto L8f
                    com.sigmob.sdk.videoAd.j r4 = com.sigmob.sdk.videoAd.j.this
                    com.sigmob.sdk.base.views.m r4 = com.sigmob.sdk.videoAd.j.f(r4)
                    boolean r4 = r4.a()
                    if (r4 == 0) goto L8f
                    com.sigmob.sdk.videoAd.j r4 = com.sigmob.sdk.videoAd.j.this
                    com.sigmob.sdk.base.views.m r4 = com.sigmob.sdk.videoAd.j.f(r4)
                    boolean r4 = r4.b()
                    if (r4 == 0) goto L85
                    com.sigmob.sdk.videoAd.j r4 = com.sigmob.sdk.videoAd.j.this
                    com.sigmob.sdk.base.views.m r4 = com.sigmob.sdk.videoAd.j.f(r4)
                    r4.setVisibility(r1)
                    goto L8f
                L85:
                    com.sigmob.sdk.videoAd.j r4 = com.sigmob.sdk.videoAd.j.this
                    com.sigmob.sdk.base.views.m r4 = com.sigmob.sdk.videoAd.j.f(r4)
                    r2 = 4
                    r4.setVisibility(r2)
                L8f:
                    com.sigmob.sdk.videoAd.j r4 = com.sigmob.sdk.videoAd.j.this
                    com.sigmob.sdk.base.models.BaseAdUnit r4 = com.sigmob.sdk.videoAd.j.c(r4)
                    java.lang.String r2 = "useless_video_click"
                    com.sigmob.sdk.base.common.ad.a(r4, r5, r2, r1)
                L9a:
                    int r4 = r5.getAction()
                    if (r4 != 0) goto La1
                    goto L3b
                La1:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.videoAd.j.AnonymousClass8.onTouch(android.view.View, android.view.MotionEvent):boolean");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        RelativeLayout relativeLayout = this.f38812Z;
        if (relativeLayout != null && relativeLayout.getVisibility() == 0) {
            this.f38822x.add(String.format(Locale.getDefault(), "%d", Long.valueOf(System.currentTimeMillis() - this.f38824z)));
            this.f38823y.add(String.format(Locale.getDefault(), "%.2f", Float.valueOf(((int) this.f38797K.getCurrentPositionWhenPlaying()) / 1000.0f)));
            this.f38787A = PointCategory.PLAY;
            this.f38789C.removeCallbacksAndMessages(null);
            this.f38812Z.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        DialogC1346b dialogC1346b = this.ar;
        if (dialogC1346b == null) {
            return;
        }
        dialogC1346b.dismiss();
        this.ar.b();
        this.ar = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() throws UnsupportedEncodingException {
        this.aq = true;
        ClickCommon clickCommon = this.f38798L.getClickCommon();
        clickCommon.click_area = ClickCommon.CLICK_AREA_COMPONENT;
        clickCommon.click_scene = "ad";
        clickCommon.is_final_click = true;
        this.f38795I.a(com.sigmob.sdk.base.a.MOTION, (String) null, true);
    }

    private void L() {
        Context contextL = l();
        this.ap = new ap(contextL);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, contextL);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, Dips.dipsToIntPixels(145.0f, contextL));
        am.a aVar = new am.a(contextL, new AnonymousClass12(), am.d.SWING);
        this.ao = aVar;
        aVar.a(SensorEntity.format(this.f38798L));
        this.ao.a();
        m().addView(this.ap, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float P() {
        if (y() <= 0) {
            return 0.0f;
        }
        return ((int) this.f38797K.getCurrentPositionWhenPlaying()) / y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        if (this.as == null || this.f38798L.getAd_type() == 4) {
            return;
        }
        int iB = B();
        if (iB <= 0) {
            this.as.setText("已获得奖励");
            return;
        }
        this.as.setText(iB + "s 后获取奖励");
    }

    private void S() {
        ad.a(PointCategory.PLAY_LOADING, (String) null, this.f38798L, new ad.a() { // from class: com.sigmob.sdk.videoAd.v
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f38855a.a(obj);
            }
        });
    }

    private void U() {
        com.sigmob.sdk.base.views.z zVar = this.ai;
        if (zVar == null) {
            return;
        }
        zVar.dismiss();
        this.ai.c();
        this.ai = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V() {
        ImageView imageView;
        com.sigmob.sdk.base.views.w wVar = this.as;
        if (wVar != null) {
            ViewUtil.removeFromParent(wVar);
        }
        com.sigmob.sdk.base.views.w wVar2 = this.an;
        if (wVar2 != null) {
            ViewUtil.removeFromParent(wVar2);
        }
        com.sigmob.sdk.base.views.v vVar = this.ap;
        if (vVar != null) {
            ViewUtil.removeFromParent(vVar);
        }
        z();
        am.a aVar = this.ao;
        if (aVar != null) {
            aVar.c();
            this.ao = null;
        }
        if (!this.f38790D && (imageView = this.f38816r) != null) {
            ViewParent parent = imageView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f38816r);
            }
            m().addView(this.f38816r, 0);
        }
        C1258h.g().b(this);
        h(l(), 0);
        C1290b c1290b = this.f38815q;
        if (c1290b != null) {
            c1290b.setVisibility(8);
        }
        S();
        F();
        if (this.f38799M == null) {
            SigmobLog.e("endcard can't show " + this.f38798L.getEndCardIndexPath());
            HashMap map = new HashMap();
            map.put("error", "endcard can't show");
            a(IntentActions.ACTION_REWARDED_VIDEO_PLAYFAIL, map);
            this.f35959d.a();
        }
        View view = this.f38799M;
        if (view != null) {
            view.setVisibility(0);
            this.f38799M.bringToFront();
        }
        RelativeLayout relativeLayout = this.f38817s;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(4);
            a(IntentActions.ACTION_REWARDED_VIDEO_CLOSE);
        }
        com.sigmob.sdk.base.views.w wVar3 = this.f38804R;
        if (wVar3 != null) {
            ViewUtil.removeFromParent(wVar3);
        }
        ar arVar = this.ab;
        if (arVar != null) {
            ViewUtil.removeFromParent(arVar);
        }
        if (this.ag) {
            ViewUtil.removeFromParent(this.f38802P);
        }
        C1301m c1301m = this.af;
        if (c1301m != null) {
            ViewUtil.removeFromParent(c1301m);
        }
        this.f38811Y = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aa() throws IllegalArgumentException {
        if (new File(this.f38798L.getVideoPath()).exists()) {
            this.f38801O.setDataSource(this.f38798L.getVideoPath());
        } else {
            this.f38801O.setDataSource(this.f38798L.getVideo_url(), new HashMap());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void ab() {
        this.f38789C.removeCallbacksAndMessages(null);
        a((int) this.f38797K.getCurrentPositionWhenPlaying(), true);
    }

    private ImageView b(Context context) {
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        return imageView;
    }

    private C1381a d(Context context, int i2) {
        if (this.f38798L.getProxyVideoUrl() == null) {
            throw new IllegalStateException("BaseVideoConfig does not have a video disk path");
        }
        final C1381a c1381a = new C1381a(context);
        c1381a.setVideoPlayerStatusListener(new com.sigmob.sdk.videoplayer.k() { // from class: com.sigmob.sdk.videoAd.j.14
            @Override // com.sigmob.sdk.videoplayer.k
            public void a(long j2, long j3) {
                int iY = j.this.y();
                j.this.R();
                if (j.this.C()) {
                    j.this.b(false);
                }
                if (j.this.u()) {
                    j.this.c(false);
                }
                int iB = j.this.B();
                if (j.this.f38791E != null) {
                    j.this.f38791E.setDuration(iB);
                }
                if (j.this.ag) {
                    j.this.f38802P.a((int) j.this.f38797K.getCurrentPositionWhenPlaying());
                }
                long j4 = iY;
                if (1000 + j2 < j4) {
                    if (j.this.t()) {
                        j.this.A();
                    } else if (!j.this.au) {
                        j.this.f38804R.setText(String.valueOf((int) ((j4 - j.this.f38797K.getCurrentPositionWhenPlaying()) / 1000.0f)));
                    }
                }
                if (j.this.v()) {
                    j.this.w();
                }
                for (C1377d c1377d : j.this.f38795I.a(j2, j4)) {
                    j.this.b(c1377d.getEvent());
                    c1377d.setTracked();
                }
                if (j2 > j4) {
                    j.this.a(true, false);
                }
            }

            @Override // com.sigmob.sdk.videoplayer.k
            public void a(com.sigmob.sdk.videoplayer.d dVar) throws UnsupportedEncodingException {
                SigmobLog.i("video player state change " + dVar);
                int i3 = AnonymousClass7.f38840a[dVar.ordinal()];
                if (i3 != 1) {
                    if (i3 == 3) {
                        j.this.f38787A = com.baidu.mobads.sdk.internal.a.f10877a;
                        j.this.a(true, false);
                        return;
                    }
                    if (i3 == 8) {
                        ad.a("video", c1381a.getErrorCode(), c1381a.getErrorMessage(), j.this.f38798L, (ad.a) null);
                        j.this.a(false, true);
                        return;
                    } else if (i3 == 5) {
                        j.this.E();
                        c1381a.j();
                        return;
                    } else {
                        if (i3 != 6) {
                            return;
                        }
                        j.this.F();
                        c1381a.d();
                        return;
                    }
                }
                j.this.f38810X = (int) c1381a.getDuration();
                if (j.this.f38810X == 0) {
                    j jVar = j.this;
                    jVar.f38810X = jVar.f38798L.getDuration();
                }
                if (!j.this.au) {
                    j.this.f38804R.setText(String.valueOf((int) (j.this.y() / 1000.0f)));
                    j.this.f38804R.setVisibility(0);
                }
                j jVar2 = j.this;
                jVar2.b(jVar2.l(), 0);
                c1381a.getVideoWidth();
                c1381a.getVideoHeight();
                if (j.this.f38805S != null) {
                    j.this.f38805S.a(j.this.y());
                }
                if (j.this.ac) {
                    j.this.ab.a(ResourceUtil.getDrawableId(j.this.l(), "sig_image_video_mute"));
                    j.this.f38797K.setMute(true);
                }
                j.this.r().a(j.this.f38810X, j.this.f38795I.l());
                if (!j.this.f38808V && (j.this.f38807U == 0 || j.this.f38807U == -1)) {
                    SigMacroCommon macroCommon = j.this.f38798L.getMacroCommon();
                    macroCommon.addMarcoKey(SigMacroCommon._COMPLETED_, "0");
                    macroCommon.addMarcoKey(SigMacroCommon._VIDEOTIME_, String.valueOf(j.this.y() / 1000));
                }
                if (j.this.ag) {
                    j.this.f38802P.a(j.this.y(), 0);
                }
            }
        });
        try {
            if (!this.f38790D) {
                ThreadPoolFactory.getFixIOExecutor().submit(new Runnable() { // from class: com.sigmob.sdk.videoAd.A
                    @Override // java.lang.Runnable
                    public final void run() throws IllegalArgumentException {
                        this.f38732b.aa();
                    }
                });
                this.f38816r = b(context);
            }
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
        String proxyVideoUrl = this.f38798L.getProxyVideoUrl();
        c1381a.setUp(proxyVideoUrl);
        c(proxyVideoUrl);
        c1381a.setVisibility(i2);
        return c1381a;
    }

    private void j(Context context, int i2) {
        ar arVar = new ar(context);
        this.ab = arVar;
        arVar.setId(ClientMetadata.generateViewId());
        this.ab.setVisibility(i2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(22.0f, context), Dips.dipsToIntPixels(22.0f, context));
        layoutParams.addRule(4, this.an.getId());
        layoutParams.addRule(11);
        int i3 = this.f38814p;
        layoutParams.setMargins(i3, i3 * 2, i3, 0);
        m().addView(this.ab, layoutParams);
        this.ab.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.videoAd.j.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    if (j.this.ac) {
                        j.this.r().a(C1244a.f35649A, (int) j.this.f38797K.getCurrentPositionWhenPlaying());
                        j.this.ab.a(ResourceUtil.getDrawableId(j.this.l(), "sig_image_video_unmute"));
                        j.this.f38797K.setMute(false);
                    } else {
                        j.this.r().a(C1244a.f35698z, (int) j.this.f38797K.getCurrentPositionWhenPlaying());
                        j.this.ab.a(ResourceUtil.getDrawableId(j.this.l(), "sig_image_video_mute"));
                        j.this.f38797K.setMute(true);
                    }
                    j.this.ac = !r3.ac;
                }
                return true;
            }
        });
        if (this.f38798L.getIsMute() == 0) {
            this.ab.a(ResourceUtil.getDrawableId(l(), "sig_image_video_unmute"));
        } else {
            this.ab.a(ResourceUtil.getDrawableId(l(), "sig_image_video_mute"));
            this.f38797K.setMute(true);
            this.ac = true;
        }
    }

    public void A() {
        if (this.f38798L.getMaterial().disable_auto_deeplink.booleanValue()) {
            z();
        }
        a((int) this.f38797K.getCurrentPositionWhenPlaying(), false);
        int iB = B();
        C1292d c1292d = this.f38791E;
        if (c1292d != null) {
            c1292d.setDuration(iB);
        }
    }

    public int B() {
        try {
            int rewardSeconds = this.f38798L.getRewardSeconds();
            if (rewardSeconds > -1) {
                if (y() > 0 && rewardSeconds * 1000 > y()) {
                    rewardSeconds = (int) (y() / 1000.0f);
                }
                return (int) (rewardSeconds - (this.f38797K.getCurrentPositionWhenPlaying() / 1000.0f));
            }
            if (y() <= 0) {
                return -1;
            }
            return (int) (((y() / 1000.0f) * (this.f38798L.getRewardPercent() * 0.01d)) - (this.f38797K.getCurrentPositionWhenPlaying() / 1000.0f));
        } catch (Throwable unused) {
            return -1;
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void i() {
    }

    @Override // com.sigmob.sdk.base.common.ac
    public void onAdClick(boolean z2, com.sigmob.sdk.base.a aVar) {
        C1282v c1282vR;
        int currentPositionWhenPlaying;
        String str;
        this.az = true;
        W();
        if (z2) {
            ClickCommon clickCommon = this.f38798L.getClickCommon();
            int i2 = AnonymousClass7.f38841b[aVar.ordinal()];
            if (i2 == 1) {
                ad.a(com.sigmob.sdk.base.a.COMPANION, "click", this.f38798L, clickCommon.isDeeplink, clickCommon.clickUrl, clickCommon.clickCoordinate, y(), (JSONObject) null);
                c1282vR = r();
                currentPositionWhenPlaying = (int) this.f38797K.getCurrentPositionWhenPlaying();
                str = C1244a.f35691s;
            } else if (i2 == 2) {
                ad.a(com.sigmob.sdk.base.a.VIDEO_CLICK, "click", this.f38798L, clickCommon.isDeeplink, clickCommon.clickUrl, clickCommon.clickCoordinate, y(), (JSONObject) null);
                c1282vR = r();
                currentPositionWhenPlaying = (int) this.f38797K.getCurrentPositionWhenPlaying();
                str = C1244a.f35692t;
            } else if (i2 != 3) {
                ad.a(com.sigmob.sdk.base.a.ENDCARD, "click", this.f38798L, clickCommon.isDeeplink, clickCommon.clickUrl, clickCommon.clickCoordinate, y(), (JSONObject) null);
                c1282vR = r();
                currentPositionWhenPlaying = (int) this.f38797K.getCurrentPositionWhenPlaying();
                str = "click";
            } else {
                c1282vR = r();
                currentPositionWhenPlaying = (int) this.f38797K.getCurrentPositionWhenPlaying();
                str = C1244a.f35681i;
            }
            c1282vR.a(str, currentPositionWhenPlaying);
        }
    }

    public C1282v r() {
        if (this.f38800N == null) {
            C1282v c1282v = new C1282v();
            this.f38800N = c1282v;
            c1282v.a(a());
        }
        return this.f38800N;
    }

    public void w() {
        C1301m c1301m;
        if (this.f38794H || (c1301m = this.af) == null) {
            return;
        }
        c1301m.setVisibility(0);
        this.f38794H = true;
    }

    public int y() {
        C1381a c1381a = this.f38797K;
        if (c1381a == null) {
            return 0;
        }
        int i2 = this.f38810X;
        return i2 > 0 ? this.f38795I.b(i2) : this.f38795I.b((int) c1381a.getDuration());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        RelativeLayout relativeLayout = this.f38812Z;
        if (relativeLayout == null || relativeLayout.getVisibility() == 0) {
            return;
        }
        this.f38824z = System.currentTimeMillis();
        this.f38812Z.setVisibility(0);
        this.f38787A = "loading";
        int i2 = this.f38820v + 1;
        this.f38820v = i2;
        if (i2 > 2) {
            a((int) this.f38797K.getCurrentPositionWhenPlaying(), true);
        } else {
            this.f38789C.postDelayed(new Runnable() { // from class: com.sigmob.sdk.videoAd.r
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38850b.ab();
                }
            }, 5000L);
        }
    }

    private void H() {
        switch ((int) this.f38798L.getWidgetId(0)) {
            case 138731:
                L();
                break;
            case 138733:
                M();
                break;
            case 138757:
                I();
                break;
            case 138758:
                K();
                break;
        }
        com.sigmob.sdk.base.views.v vVar = this.ap;
        if (vVar == null) {
            return;
        }
        vVar.a();
    }

    private void I() {
        Context contextL = l();
        this.ap = new com.sigmob.sdk.base.views.ac(contextL);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, contextL);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(145.0f, contextL);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels2);
        am.a aVar = new am.a(contextL, new AnonymousClass10(), am.d.SHAKE);
        this.ao = aVar;
        aVar.a(SensorEntity.format(this.f38798L));
        this.ao.a();
        m().addView(this.ap, layoutParams);
    }

    private void K() {
        Context contextL = l();
        this.ap = new aw(contextL);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, contextL);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, Dips.dipsToIntPixels(145.0f, contextL));
        am.a aVar = new am.a(contextL, new AnonymousClass11(), am.d.WRING);
        this.ao = aVar;
        aVar.a(SensorEntity.format(this.f38798L));
        this.ao.a();
        m().addView(this.ap, layoutParams);
    }

    private void M() {
        Context contextL = l();
        this.ap = new com.sigmob.sdk.base.views.am(contextL);
        int iDipsToIntPixels = Dips.dipsToIntPixels(92.0f, contextL);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, Dips.dipsToIntPixels(145.0f, contextL));
        am.a aVar = new am.a(contextL, new AnonymousClass13(), am.d.SLOPE);
        this.ao = aVar;
        aVar.a(SensorEntity.format(this.f38798L));
        this.ao.a();
        m().addView(this.ap, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        if (this.f38808V) {
            return;
        }
        try {
            int currentPositionWhenPlaying = (int) this.f38797K.getCurrentPositionWhenPlaying();
            if (this.f38807U > 0 && currentPositionWhenPlaying == 0) {
                SigmobLog.d("video seek to " + this.f38807U);
                this.f38797K.a(this.f38807U);
            }
            C1292d c1292d = this.f38791E;
            if ((c1292d == null || c1292d.getVisibility() != 0) && !this.al) {
                this.f38797K.d();
            }
            if (this.f38807U != -1) {
                this.f38795I.a(l(), this.f38807U);
            }
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        if (this.f38808V) {
            return;
        }
        try {
            this.f38797K.j();
            SigmobLog.i("videoView.pause()");
            this.f38807U = (int) this.f38797K.getCurrentPositionWhenPlaying();
            r().a(C1244a.f35682j, (int) this.f38797K.getCurrentPositionWhenPlaying());
            this.f38795I.b(l(), this.f38807U);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    private void Q() {
        try {
            this.f38806T = this.f38795I.e(y());
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    private void T() {
        int i2;
        int iO = this.f38795I.o();
        int iY = y() - 2;
        if (iO == 99999999) {
            i2 = 0;
        } else if (iO == -99999999) {
            a(iY);
            return;
        } else {
            if (iO > 0) {
                a(iO);
                return;
            }
            i2 = iO + iY;
        }
        a(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        com.sigmob.sdk.base.utils.d.a(f38778f, this.f38798L);
        this.f38789C.post(new Runnable() { // from class: com.sigmob.sdk.videoAd.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f38856b.X();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X() {
        a(IntentActions.ACTION_INTERSTITIAL_CLICK);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y() {
        a(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z() {
        U();
        this.aa = true;
        this.f38795I.b(l(), y(), this.f38798L);
        k().a();
    }

    private View a(Context context, C1379f c1379f, int i2) {
        Preconditions.NoThrow.checkNotNull(context);
        if (c1379f == null) {
            View view = new View(context);
            view.setVisibility(4);
            return view;
        }
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setGravity(17);
        m().addView(relativeLayout, 0, new RelativeLayout.LayoutParams(-1, -1));
        C1303o c1303oA = a(context, c1379f);
        c1303oA.setVisibility(i2);
        relativeLayout.addView(c1303oA, new LinearLayout.LayoutParams(-1, -1));
        return c1303oA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(int i2) {
        final Bitmap frameAtTime = this.f38801O.getFrameAtTime(i2 * 1000, 2);
        if (frameAtTime == null) {
            return;
        }
        this.f38789C.post(new Runnable() { // from class: com.sigmob.sdk.videoAd.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f38853b.a(frameAtTime);
            }
        });
    }

    private void i(Context context, int i2) {
        com.sigmob.sdk.base.views.w wVar = new com.sigmob.sdk.base.views.w(context);
        this.f38804R = wVar;
        wVar.setId(ClientMetadata.generateViewId());
        this.f38804R.setVisibility(i2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(22.0f, context), Dips.dipsToIntPixels(22.0f, context));
        layoutParams.addRule(10);
        ar arVar = this.ab;
        if (arVar != null) {
            layoutParams.addRule(0, arVar.getId());
            layoutParams.setMargins(0, this.f38814p * 2, 0, 0);
        }
        m().addView(this.f38804R, layoutParams);
        this.f38804R.setEnabled(false);
        this.f38804R.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.videoAd.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f38851b.a(view);
            }
        });
        if ((this.f38798L.getSkipPercent() != 0 || this.f38798L.getSkipSeconds() >= 0) && this.f38798L.getSkipSeconds() != 0) {
            return;
        }
        a(0, false);
    }

    public static int p() {
        return 0;
    }

    public boolean C() {
        return B() <= 0;
    }

    @Override // com.sigmob.sdk.videoAd.AbstractC1375b, com.sigmob.sdk.base.common.AbstractC1262j
    public void e() {
        super.e();
        n().getWindow().addFlags(1024);
        MaterialMeta material = this.f38798L.getMaterial();
        this.f38818t = ClientMetadata.getInstance().getInsetBottom();
        if (this.f38811Y) {
            V();
        } else {
            if (this.f38795I == null) {
                throw new IllegalStateException("BaseVideoConfig does not have a video disk path");
            }
            if (this.ag) {
                e(l(), 4);
            }
            Boolean bool = material.has_companion_endcard;
            if (bool != null && bool.booleanValue() && material.companion != null) {
                g(l(), 4);
                this.f38793G = material.companion.show_delay_secs.intValue();
            }
            a(l(), 0);
            j(l(), 0);
            i(l(), 4);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new C1377d("start", 0.0f));
            arrayList.add(new C1377d(C1244a.f35683k, 0.25f));
            arrayList.add(new C1377d(C1244a.f35685m, 0.5f));
            arrayList.add(new C1377d(C1244a.f35686n, 0.75f));
            this.f38795I.a((List<C1377d>) arrayList);
            a(IntentActions.ACTION_INTERSTITIAL_VOPEN);
        }
        f(l(), 4);
        H();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void f() {
        if (this.aa) {
            a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
            return;
        }
        am.a aVar = this.ao;
        if (aVar != null) {
            aVar.b();
            com.sigmob.sdk.base.views.v vVar = this.ap;
            if (vVar != null) {
                vVar.b();
            }
        }
        if (this.f38811Y) {
            return;
        }
        O();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void g() {
        am.a aVar;
        if (!this.f38811Y && this.ar == null) {
            N();
        }
        View view = this.f38799M;
        if (view != null && (view instanceof C1303o)) {
            ((C1303o) view).resumeTimers();
        }
        this.aq = false;
        if (this.ar != null || (aVar = this.ao) == null) {
            return;
        }
        aVar.a();
        com.sigmob.sdk.base.views.v vVar = this.ap;
        if (vVar != null) {
            vVar.a();
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void h() {
        try {
            SigmobLog.d("VideoViewController onDestroy() called");
            C1258h.g().b(this);
            if (!this.aa) {
                a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
            }
            if (this.ax != null) {
                C1258h.d().unregisterCacheListener(this, this.ax);
            }
            com.sigmob.sdk.base.views.w wVar = this.an;
            if (wVar != null) {
                wVar.setOnClickListener(null);
                ViewUtil.removeFromParent(this.an);
            }
            com.sigmob.sdk.base.views.w wVar2 = this.am;
            if (wVar2 != null) {
                wVar2.setOnClickListener(null);
                ViewUtil.removeFromParent(this.am);
            }
            DialogC1346b dialogC1346b = this.ar;
            if (dialogC1346b != null) {
                dialogC1346b.a((WindNativeAdData.DislikeInteractionCallback) null);
                this.ar.dismiss();
                this.ar.b();
            }
            this.f38795I.k();
            ImageLoader.ImageContainer imageContainer = this.ae;
            if (imageContainer != null) {
                imageContainer.cancelRequest();
                this.ae = null;
            }
            C1282v c1282v = this.f38800N;
            if (c1282v != null) {
                c1282v.a();
                this.f38800N = null;
            }
            MediaMetadataRetriever mediaMetadataRetriever = this.f38801O;
            if (mediaMetadataRetriever != null) {
                mediaMetadataRetriever.release();
            }
            ar arVar = this.f38803Q;
            if (arVar != null) {
                arVar.setOnTouchListener(null);
            }
            com.sigmob.sdk.base.views.w wVar3 = this.f38804R;
            if (wVar3 != null) {
                wVar3.setOnTouchListener(null);
            }
            ar arVar2 = this.ab;
            if (arVar2 != null) {
                arVar2.setOnTouchListener(null);
            }
            C1381a c1381a = this.f38797K;
            if (c1381a != null) {
                c1381a.r();
            }
            View view = this.f38799M;
            if (view != null && (view instanceof C1303o)) {
                ((C1303o) view).setWebViewClickListener(null);
                ((C1303o) this.f38799M).setLogoClickListener(null);
                ((C1303o) this.f38799M).destroy();
            }
            U();
            am.a aVar = this.ao;
            if (aVar != null) {
                aVar.c();
                this.ao = null;
            }
            BaseAdUnit baseAdUnit = this.f38798L;
            if (baseAdUnit != null) {
                baseAdUnit.destroy();
            }
            this.f38799M = null;
            this.f38802P = null;
            super.h();
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public boolean j() {
        return false;
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void o() {
    }

    public String s() {
        return this.f38792F;
    }

    public boolean t() {
        long currentPositionWhenPlaying;
        try {
            currentPositionWhenPlaying = (int) this.f38797K.getCurrentPositionWhenPlaying();
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
        if (this.f38798L.getSkipSeconds() > -1) {
            return (((float) currentPositionWhenPlaying) / 1000.0f) + 0.3f >= ((float) this.f38798L.getSkipSeconds());
        }
        if (y() > 0) {
            return ((((float) y()) / 1000.0f) * ((float) this.f38798L.getSkipPercent())) * 0.01f < ((float) currentPositionWhenPlaying) / 1000.0f;
        }
        return true;
    }

    public boolean u() {
        try {
            if (this.f38798L.getAd_type() == 1) {
                long currentPositionWhenPlaying = (int) this.f38797K.getCurrentPositionWhenPlaying();
                if (this.f38798L.getChargeSeconds() > -1) {
                    return (((float) currentPositionWhenPlaying) / 1000.0f) + 0.3f >= ((float) this.f38798L.getChargeSeconds());
                }
                if (y() > 0 && (currentPositionWhenPlaying * 100) / y() >= this.f38798L.getChargePercent()) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return true;
        }
    }

    public boolean v() {
        C1301m c1301m = this.af;
        if (c1301m != null && c1301m.a()) {
            return true;
        }
        try {
            boolean z2 = ((long) ((int) this.f38797K.getCurrentPositionWhenPlaying())) / 1000 >= ((long) this.f38793G);
            if (!z2) {
                return z2;
            }
            SigmobLog.d("showAble CompanionAds");
            return z2;
        } catch (Throwable th) {
            SigmobLog.e("shouldBeShowCompanionAds", th);
            return true;
        }
    }

    public void x() {
        if (this.av) {
            return;
        }
        this.av = true;
        this.f38798L.getMacroCommon().addMarcoKey(SigMacroCommon._PLAYLASTFRAME_, "1");
        if (this.f38809W) {
            return;
        }
        r().a("complete", (int) this.f38797K.getCurrentPositionWhenPlaying());
    }

    public void z() {
        if (this.f38799M == null && this.f38798L.isEndCardIndexExist()) {
            try {
                C1379f c1379fE = C1374a.e(this.f38798L);
                this.f38805S = c1379fE;
                c1379fE.a(this.f38795I);
                this.f38799M = a(n(), this.f38805S, 4);
                this.f38805S.a(y());
                h(l(), 4);
            } catch (Throwable th) {
                this.f38805S = null;
                SigmobLog.e(th.getMessage());
                HashMap map = new HashMap();
                map.put("error", th.getMessage());
                a(IntentActions.ACTION_REWARDED_VIDEO_PLAYFAIL, map);
                this.f35959d.a();
            }
        }
    }

    private void c(Context context, int i2) {
        if (this.am == null) {
            com.sigmob.sdk.base.views.w wVar = new com.sigmob.sdk.base.views.w(context);
            this.am = wVar;
            wVar.setText("反馈");
            this.am.setOnClickListener(this.ay);
            this.am.setId(ClientMetadata.generateViewId());
            int iDipsToIntPixels = Dips.dipsToIntPixels(3.0f, this.f35956a);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(45.0f, context), Dips.dipsToIntPixels(30.0f, context));
            layoutParams.addRule(0, this.f38803Q.getId());
            layoutParams.addRule(6, this.f38803Q.getId());
            layoutParams.setMargins(0, -iDipsToIntPixels, 0, 0);
            m().addView(this.am, layoutParams);
        }
        com.sigmob.sdk.base.views.w wVar2 = this.am;
        if (wVar2 != null) {
            wVar2.setVisibility(i2);
        }
    }

    private void e(Context context, int i2) {
        as asVar = new as(context);
        this.f38802P = asVar;
        asVar.setAnchorId(this.f38797K.getId());
        this.f38802P.setVisibility(i2);
        m().addView(this.f38802P);
    }

    private void f(Context context, int i2) {
        if (this.f38791E != null) {
            return;
        }
        C1292d c1292d = new C1292d(context, this.f38795I.q());
        this.f38791E = c1292d;
        c1292d.setVisibility(i2);
        m().addView(this.f38791E);
        this.f38791E.setDialogListener(new C1292d.a() { // from class: com.sigmob.sdk.videoAd.j.15
            @Override // com.sigmob.sdk.base.views.C1292d.a
            public void a() {
                if (!j.this.f38808V) {
                    j.this.r().a("skip", (int) j.this.f38797K.getCurrentPositionWhenPlaying());
                    j.this.f38795I.b(((AbstractC1262j) j.this).f35956a, (int) j.this.f38797K.getCurrentPositionWhenPlaying(), j.this.y(), j.this.f38798L);
                }
                j.this.f38791E.setVisibility(8);
                if (j.this.af != null && j.this.af.getFourElementsLayout() != null) {
                    j.this.af.getFourElementsLayout().setClickable(true);
                }
                if (j.this.f38795I.m()) {
                    j.this.k().a();
                    return;
                }
                if (!j.this.f38790D) {
                    j jVar = j.this;
                    jVar.a((int) jVar.f38797K.getCurrentPositionWhenPlaying());
                }
                j.this.f38797K.i();
                j.this.V();
                j.this.f38808V = true;
                if (j.this.r() != null) {
                    j.this.f38800N.a("show", 0);
                }
            }

            @Override // com.sigmob.sdk.base.views.C1292d.a
            public void b() {
                j.this.f38797K.d();
                j.this.f38791E.setVisibility(8);
                if (j.this.af == null || j.this.af.getFourElementsLayout() == null) {
                    return;
                }
                j.this.af.getFourElementsLayout().setClickable(true);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void g(android.content.Context r18, int r19) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.videoAd.j.g(android.content.Context, int):void");
    }

    private void h(Context context, int i2) {
        if (this.f38803Q == null) {
            ar arVar = new ar(context);
            this.f38803Q = arVar;
            arVar.setId(ClientMetadata.generateViewId());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(22.0f, context), Dips.dipsToIntPixels(22.0f, context));
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            int i3 = this.f38814p;
            layoutParams.setMargins(i3, i3 * 2, i3, i3);
            m().addView(this.f38803Q, layoutParams);
            BaseAdUnit baseAdUnit = this.f38798L;
            if (baseAdUnit != null && !com.sigmob.sdk.base.utils.s.a((CharSequence) baseAdUnit.getCloseCardHtmlData()) && !this.az) {
                com.sigmob.sdk.base.views.z zVar = new com.sigmob.sdk.base.views.z(n(), this.f38798L, this.f38795I);
                this.ai = zVar;
                zVar.a(new z.a() { // from class: com.sigmob.sdk.videoAd.q
                    @Override // com.sigmob.sdk.base.views.z.a
                    public final void onCloseClick() {
                        this.f38849a.Z();
                    }
                });
            }
            this.f38803Q.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.videoAd.j.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 1) {
                        if (j.this.az || j.this.ai == null || j.this.ai.a() || j.this.aj) {
                            j.this.aa = true;
                            j.this.f38795I.b(j.this.l(), j.this.y(), j.this.f38798L);
                            j.this.k().a();
                        } else {
                            j.this.ai.show();
                            j.this.aj = true;
                        }
                    }
                    return true;
                }
            });
            this.f38803Q.a(this.f38798L);
            String strF = this.f38795I.f();
            if (strF != null) {
                this.f38803Q.a(strF);
            }
        }
        ar arVar2 = this.f38803Q;
        if (arVar2 != null) {
            arVar2.setVisibility(i2);
        }
        c(l(), i2);
    }

    @Override // com.sigmob.sdk.base.common.C1258h.a
    public BaseAdUnit a() {
        return this.f38798L;
    }

    public void q() {
        C1290b c1290b = new C1290b(l().getApplicationContext(), 0);
        this.f38815q = c1290b;
        c1290b.setId(ClientMetadata.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, Dips.dipsToIntPixels(16.0f, l()));
        C1301m c1301m = this.af;
        if (c1301m != null) {
            layoutParams.addRule(8, c1301m.getId());
        } else {
            layoutParams.addRule(12);
            layoutParams.setMargins(0, 0, 0, this.f38814p);
        }
        try {
            this.f38815q.a(this.f38798L.getAd_source_logo());
            if (!this.f38798L.getInvisibleAdLabel()) {
                this.f38815q.b(com.sigmob.sdk.base.k.h());
            }
        } catch (Throwable unused) {
        }
        m().addView(this.f38815q, layoutParams);
    }

    private C1303o a(Context context, C1379f c1379f) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(c1379f);
        Preconditions.NoThrow.checkNotNull(c1379f.a());
        C1303o c1303oA = C1303o.a(context, this.f38798L.getAd_source_logo(), false, this.f38798L.getInvisibleAdLabel());
        c1303oA.addJavascriptInterface(new a(), "sigVersion");
        c1303oA.setWebViewClickListener(new C1303o.a() { // from class: com.sigmob.sdk.videoAd.o
            @Override // com.sigmob.sdk.base.views.C1303o.a
            public final void onWebViewClick(MotionEvent motionEvent, MotionEvent motionEvent2) throws UnsupportedEncodingException {
                this.f38847a.b(motionEvent, motionEvent2);
            }
        });
        c1303oA.setDownloadListener(new DownloadListener() { // from class: com.sigmob.sdk.videoAd.t
            @Override // android.webkit.DownloadListener
            public final void onDownloadStart(String str, String str2, String str3, String str4, long j2) throws UnsupportedEncodingException {
                this.f38852b.a(str, str2, str3, str4, j2);
            }
        });
        c1303oA.setAdUnit(this.f38798L);
        c1303oA.setWebViewClient(new AnonymousClass6());
        c1379f.a().a(c1303oA);
        c1303oA.a((InterfaceC1246b) null);
        return c1303oA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final int i2) {
        if (this.ak == null) {
            DialogC1305q dialogC1305q = new DialogC1305q(n(), this.f38798L);
            this.ak = dialogC1305q;
            dialogC1305q.a(new DialogC1305q.b() { // from class: com.sigmob.sdk.videoAd.j.5
                @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                public void a() {
                    if (j.this.ak != null) {
                        j.this.ak.dismiss();
                        j.this.ak.c();
                        j.this.ak = null;
                        j.this.al = false;
                    }
                    if (j.this.f38797K != null && i2 == 1) {
                        j.this.f38797K.d();
                    }
                    if (j.this.ao != null) {
                        j.this.ao.a();
                    }
                    j.this.r().a(C1244a.f35679g, (int) j.this.f38797K.getCurrentPositionWhenPlaying());
                }

                @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                public void b() {
                    if (j.this.f38797K != null && i2 == 1) {
                        j.this.f38797K.j();
                    }
                    if (j.this.ao != null) {
                        j.this.ao.b();
                    }
                    j.this.r().a(C1244a.f35678f, (int) j.this.f38797K.getCurrentPositionWhenPlaying());
                }

                @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                public void a(Error error) {
                }

                @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                public void a(String str, String str2) throws UnsupportedEncodingException {
                    if (j.this.f38805S == null) {
                        j.this.z();
                    }
                    ClickCommon clickCommon = j.this.f38798L.getClickCommon();
                    clickCommon.click_area = ClickCommon.CLICK_AREA_BTN;
                    clickCommon.click_scene = "appinfo";
                    j.this.f38795I.a(com.sigmob.sdk.base.a.ENDCARD, str, str2, true);
                }
            });
        }
        DialogC1305q dialogC1305q2 = this.ak;
        if (dialogC1305q2 == null || !dialogC1305q2.a() || this.al) {
            return;
        }
        this.ak.show();
        this.al = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, int i2) {
        if (this.f38798L.getRewardStyle() == 1) {
            this.as = new com.sigmob.sdk.base.views.w(context);
            int iB = B();
            if (iB > 0) {
                this.as.setText(iB + "s 后获取奖励");
            } else {
                this.as.setText("已获得奖励");
                b(false);
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(97.0f, context), Dips.dipsToIntPixels(22.0f, context));
            layoutParams.addRule(1, this.an.getId());
            int i3 = this.f38814p;
            layoutParams.setMargins(i3, i3 * 2, 0, 0);
            m().addView(this.as, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(MotionEvent motionEvent, MotionEvent motionEvent2) throws UnsupportedEncodingException {
        if (this.f38803Q.getVisibility() != 0 || this.aa) {
            SigmobLog.w("ignore invalid click");
            return;
        }
        this.f38798L.getClickCommon().sld = "0";
        ad.a(this.f38798L, motionEvent2, PointCategory.ENDCARDCLICK, true);
        SigMacroCommon macroCommon = this.f38798L.getMacroCommon();
        macroCommon.updateClickMarco(motionEvent, motionEvent2, true);
        this.f38813h = macroCommon.getCoordinate();
        this.f38788B = true;
        if (this.f38798L.getMaterial().click_type.intValue() != EnumC1268m.FullScreen.a() || com.sigmob.sdk.base.utils.s.a((CharSequence) this.f38798L.getLanding_page()) || this.f38798L.getMaterial().creative_type.intValue() == EnumC1270n.CreativeTypeVideo_EndCardURL.a()) {
            this.ah = true;
            return;
        }
        this.f38798L.getClickCommon().click_area = ClickCommon.CLICK_AREA_MATERIAL;
        this.f38798L.getClickCommon().click_scene = "endcard";
        this.f38795I.a(com.sigmob.sdk.base.a.ENDCARD, this.f38813h, true);
    }

    private void c(String str) {
        Uri uri;
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str) || (uri = Uri.parse(str)) == null) {
            return;
        }
        String host = uri.getHost();
        if (!com.sigmob.sdk.base.utils.s.a((CharSequence) host) && host.equalsIgnoreCase("127.0.0.1")) {
            Pattern patternCompile = Pattern.compile("/(.*)");
            String path = uri.getPath();
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) path)) {
                return;
            }
            Matcher matcher = patternCompile.matcher(path);
            if (matcher.find()) {
                this.ax = matcher.group(1);
                C1258h.d().registerCacheListener(this, this.ax);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        b(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z2) {
        if (this.at || this.f38798L.getAd_type() == 4) {
            return;
        }
        this.at = true;
        int iY = z2 ? y() : (int) this.f38797K.getCurrentPositionWhenPlaying();
        r().a(C1244a.f35674b, iY);
        this.f38795I.c(l().getApplicationContext(), iY, y(), a());
    }

    private String a(List<String> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        int i2 = 0;
        do {
            if (i2 != 0) {
                sb.append(',');
            }
            sb.append(list.get(i2));
            i2++;
        } while (i2 < list.size());
        sb.append(']');
        return sb.toString();
    }

    @Override // com.sigmob.sdk.base.common.C1258h.a
    public void b(BaseAdUnit baseAdUnit) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i2) {
        try {
            ThreadPoolFactory.getFixIOExecutor().submit(new Runnable() { // from class: com.sigmob.sdk.videoAd.y
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38858b.c(i2);
                }
            });
        } catch (RuntimeException e2) {
            SigmobLog.e(e2.getMessage());
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(int i2, int i3, Intent intent) {
        if (i3 == -1) {
            k().a();
        }
    }

    public void b(String str) {
        if ("start".equals(str)) {
            a(IntentActions.ACTION_INTERSTITIAL_SHOW);
            a(IntentActions.ACTION_REWARDED_VIDEO_PLAY);
        }
        C1282v c1282vR = r();
        if (c1282vR == null) {
            return;
        }
        c1282vR.a(str, (int) this.f38797K.getCurrentPositionWhenPlaying());
    }

    private void a(int i2, boolean z2) {
        com.sigmob.sdk.base.views.w wVar = this.f38804R;
        if (wVar == null || this.au) {
            return;
        }
        this.au = true;
        wVar.setText("跳过");
        this.f38804R.setEnabled(true);
        ValueAnimator duration = ValueAnimator.ofInt(Dips.dipsToIntPixels(22.0f, l()), Dips.dipsToIntPixels(45.0f, l())).setDuration(300L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.videoAd.B
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f38733a.a(valueAnimator);
            }
        });
        duration.start();
        this.f38804R.setVisibility(0);
        r().a(z2, i2);
        r().a("show_skip", i2);
    }

    public void b(boolean z2) {
        if (this.f38798L.getAd_type() == 4 || this.ad) {
            return;
        }
        this.ad = true;
        int iY = z2 ? y() : (int) this.f38797K.getCurrentPositionWhenPlaying();
        this.f38789C.postDelayed(new Runnable() { // from class: com.sigmob.sdk.videoAd.x
            @Override // java.lang.Runnable
            public final void run() {
                this.f38857b.Y();
            }
        }, 100L);
        r().a("reward", iY);
        this.f38795I.c(l().getApplicationContext(), iY, y(), a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f38804R.getLayoutParams();
        layoutParams.width = iIntValue;
        this.f38804R.setLayoutParams(layoutParams);
        this.f38804R.invalidate();
    }

    public void a(Context context) {
        this.f38812Z = new RelativeLayout(context);
        ImageView imageView = new ImageView(context);
        imageView.setImageBitmap(EnumC1306s.LOADING.a());
        imageView.setId(ClientMetadata.generateViewId());
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, BaseConstants.Time.HOUR, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(8000000);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setRepeatMode(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        imageView.setAnimation(rotateAnimation);
        this.f38812Z.addView(imageView, layoutParams);
        this.f38812Z.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        m().addView(this.f38812Z, layoutParams2);
    }

    private void a(Context context, int i2) {
        if (this.an == null) {
            com.sigmob.sdk.base.views.w wVar = new com.sigmob.sdk.base.views.w(context);
            this.an = wVar;
            wVar.setText("反馈");
            this.an.setId(ClientMetadata.generateViewId());
            this.an.setOnClickListener(this.ay);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(45.0f, context), Dips.dipsToIntPixels(22.0f, context));
            layoutParams.addRule(9);
            layoutParams.addRule(10);
            int i3 = this.f38814p;
            layoutParams.setMargins(i3, i3 * 2, 0, 0);
            m().addView(this.an, layoutParams);
        }
        com.sigmob.sdk.base.views.w wVar2 = this.an;
        if (wVar2 != null) {
            wVar2.setVisibility(i2);
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Configuration configuration) {
        if (this.f38795I != null && this.f38805S == null) {
            C1379f c1379fE = C1374a.e(this.f38798L);
            this.f38805S = c1379fE;
            c1379fE.a(this.f38795I);
        }
        C1282v c1282vR = r();
        if (c1282vR == null) {
            return;
        }
        c1282vR.a(C1244a.f35650B, (int) this.f38797K.getCurrentPositionWhenPlaying());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Bitmap bitmap) {
        this.f38816r.setScaleType(ImageView.ScaleType.FIT_XY);
        this.f38816r.setImageBitmap(bitmap);
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Bundle bundle) {
        try {
            bundle.putBoolean(f38781j, this.f38808V);
            bundle.putInt(f38780i, this.f38807U);
            bundle.putBoolean(f38782k, this.f38811Y);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MotionEvent motionEvent, MotionEvent motionEvent2) throws UnsupportedEncodingException {
        boolean z2;
        this.f38798L.getClickCommon().click_area = ClickCommon.CLICK_AREA_MATERIAL;
        this.f38798L.getClickCommon().click_scene = "ad";
        ClickAreaSetting clickAreaSetting = this.f38798L.getClickAreaSetting();
        float fFloatValue = clickAreaSetting.left.floatValue() * ClientMetadata.getInstance().getDisplayMetrics().widthPixels;
        float fFloatValue2 = (1.0f - clickAreaSetting.right.floatValue()) * ClientMetadata.getInstance().getDisplayMetrics().widthPixels;
        float fFloatValue3 = clickAreaSetting.top.floatValue() * ClientMetadata.getInstance().getDisplayMetrics().heightPixels;
        float fFloatValue4 = (1.0f - clickAreaSetting.bottom.floatValue()) * ClientMetadata.getInstance().getDisplayMetrics().heightPixels;
        if (fFloatValue >= motionEvent2.getRawX() || motionEvent2.getRawX() >= fFloatValue2 || fFloatValue3 >= motionEvent2.getRawY() || motionEvent2.getRawY() >= fFloatValue4) {
            z2 = false;
        } else {
            SigMacroCommon macroCommon = this.f38798L.getMacroCommon();
            macroCommon.addMarcoKey(SigMacroCommon._PROGRESS_, String.valueOf(((int) P()) * 100));
            z2 = true;
            macroCommon.updateClickMarco(motionEvent, motionEvent2, true);
            this.f38813h = macroCommon.getCoordinate();
            if (this.f38805S == null) {
                z();
            }
            this.f38795I.a(com.sigmob.sdk.base.a.VIDEO_CLICK, this.f38813h, true);
        }
        ad.a(this.f38798L, motionEvent2, "useless_video_click", z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        r().a(C1244a.f35690r, (int) this.f38797K.getCurrentPositionWhenPlaying());
        if (C()) {
            b(false);
        }
        if (this.ad || this.f38798L.getConfirmDialog() == 2 || this.f38798L.getAd_type() == 4) {
            r().a("skip", (int) this.f38797K.getCurrentPositionWhenPlaying());
            this.f38795I.b(this.f35956a, (int) this.f38797K.getCurrentPositionWhenPlaying(), y(), this.f38798L);
            a(false, false);
            return;
        }
        this.f38797K.j();
        SigmobLog.i("videoView.pause()");
        this.f38791E.setDuration(B());
        this.f38791E.setVisibility(0);
        C1301m c1301m = this.af;
        if (c1301m == null || c1301m.getFourElementsLayout() == null) {
            return;
        }
        this.af.getFourElementsLayout().setClickable(false);
    }

    @Override // com.sigmob.sdk.base.common.C1258h.a
    public void a(BaseAdUnit baseAdUnit) {
        if (baseAdUnit.getUuid().equals(this.f38798L.getUuid()) && baseAdUnit.isEndCardIndexExist()) {
            this.f38789C.post(new Runnable() { // from class: com.sigmob.sdk.videoAd.p
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38848b.z();
                }
            });
        }
    }

    @Override // com.sigmob.sdk.videocache.d
    public void a(File file, String str, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put("duration_seq", a(this.f38822x));
            options.put("video_time_seq", a(this.f38823y));
            options.put("skip_state", this.f38787A);
            options.put("video_duration", String.format(Locale.getDefault(), "%.2f", Float.valueOf(y() / 1000.0f)));
            options.put("endcard_loading_state", this.f38821w);
            pointEntitySigmob.setOptions(options);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, String str3, String str4, long j2) throws UnsupportedEncodingException {
        if (this.f38788B) {
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) this.f38798L.getLanding_page()) || this.f38798L.getInteractionType() == 2) {
                this.f38798L.setCustomLandPageUrl(str);
            }
            this.f38798L.getClickCommon().click_area = ClickCommon.CLICK_AREA_COMPANION;
            this.f38798L.getClickCommon().click_scene = "endcard";
            this.f38795I.a(com.sigmob.sdk.base.a.ENDCARD, this.f38813h, true);
            SigmobLog.d("onDownloadStart() called with: url = [" + str + "], userAgent = [" + str2 + "], contentDisposition = [" + str3 + "], mimetype = [" + str4 + "], contentLength = [" + j2 + "]");
        }
    }

    @Override // com.sigmob.sdk.videocache.d
    public void a(String str, Throwable th) {
        SigmobLog.e("url", th);
        ad.a("video", 0, th.getMessage(), this.f38798L, (ad.a) null);
        a(false, true);
    }

    public void a(boolean z2, boolean z3) {
        if (this.aw) {
            return;
        }
        this.aw = true;
        F();
        boolean videoErrorReward = this.f38798L.getVideoErrorReward();
        c(z2);
        if (z2 || (z3 && videoErrorReward)) {
            b(z2);
            if (z2) {
                x();
            }
        } else if (this.f38795I.m()) {
            k().a();
            return;
        }
        if (!this.f38790D) {
            if (z2) {
                T();
            } else {
                a((int) this.f38797K.getCurrentPositionWhenPlaying());
            }
        }
        this.f38797K.i();
        V();
        this.f38808V = true;
        C1282v c1282vR = r();
        if (c1282vR == null) {
            return;
        }
        c1282vR.a("show", 0);
    }
}
