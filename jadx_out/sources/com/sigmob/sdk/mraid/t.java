package com.sigmob.sdk.mraid;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.mraid.AbstractC1322n;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class t extends AbstractC1322n implements AbstractC1322n.a, com.sigmob.sdk.videocache.d {

    /* renamed from: c, reason: collision with root package name */
    public static final int f38042c = 0;

    /* renamed from: d, reason: collision with root package name */
    public static final int f38043d = 1;

    /* renamed from: e, reason: collision with root package name */
    public static final int f38044e = 2;

    /* renamed from: f, reason: collision with root package name */
    public static final int f38045f = 3;

    /* renamed from: g, reason: collision with root package name */
    public static final int f38046g = 4;

    /* renamed from: h, reason: collision with root package name */
    public static final int f38047h = 0;

    /* renamed from: i, reason: collision with root package name */
    public static final int f38048i = 1;

    /* renamed from: j, reason: collision with root package name */
    public static final int f38049j = 2;

    /* renamed from: k, reason: collision with root package name */
    public static final int f38050k = 4;

    /* renamed from: l, reason: collision with root package name */
    public static final int f38051l = 8;

    /* renamed from: m, reason: collision with root package name */
    private r f38052m;

    /* renamed from: n, reason: collision with root package name */
    private String f38053n;

    /* renamed from: o, reason: collision with root package name */
    private u f38054o;

    /* renamed from: com.sigmob.sdk.mraid.t$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f38056a;

        static {
            int[] iArr = new int[com.sigmob.sdk.videoplayer.d.values().length];
            f38056a = iArr;
            try {
                iArr[com.sigmob.sdk.videoplayer.d.STATE_PREPARED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38056a[com.sigmob.sdk.videoplayer.d.STATE_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38056a[com.sigmob.sdk.videoplayer.d.STATE_PAUSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38056a[com.sigmob.sdk.videoplayer.d.STATE_PLAYING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38056a[com.sigmob.sdk.videoplayer.d.STATE_AUTO_COMPLETE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38056a[com.sigmob.sdk.videoplayer.d.STATE_PREPARING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38056a[com.sigmob.sdk.videoplayer.d.STATE_BUFFERING_START.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38056a[com.sigmob.sdk.videoplayer.d.STATE_BUFFERING_END.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38056a[com.sigmob.sdk.videoplayer.d.STATE_STOP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public t(String str) {
        super(str);
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n
    public View a() {
        return this.f38052m;
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n.a
    public void c(JSONObject jSONObject) {
        r rVar = this.f38052m;
        if (rVar == null) {
            return;
        }
        rVar.a(0);
        this.f38052m.d();
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n.a
    public void d(JSONObject jSONObject) {
        r rVar = this.f38052m;
        if (rVar == null) {
            return;
        }
        rVar.j();
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n.a
    public void e(JSONObject jSONObject) {
        r rVar = this.f38052m;
        if (rVar == null) {
            return;
        }
        rVar.i();
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n.a
    public void f(JSONObject jSONObject) {
        if (this.f38052m == null) {
            return;
        }
        this.f38052m.setMute(jSONObject.optBoolean("muted", false));
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n.a
    public void g(JSONObject jSONObject) {
        if (this.f38052m == null) {
            return;
        }
        this.f38052m.a(((int) jSONObject.optDouble("seekTime", 0.0d)) * 1000);
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n.a
    public void h(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (this.f38052m == null || jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("frame")) == null) {
            return;
        }
        Context contextE = com.sigmob.sdk.b.e();
        int iOptDouble = (int) jSONObjectOptJSONObject.optDouble("x", 0.0d);
        int iOptDouble2 = (int) jSONObjectOptJSONObject.optDouble("y", 0.0d);
        int iOptDouble3 = (int) jSONObjectOptJSONObject.optDouble("w", -1.0d);
        int iOptDouble4 = (int) jSONObjectOptJSONObject.optDouble("h", -1.0d);
        if (iOptDouble3 > 0) {
            iOptDouble3 = Dips.dipsToIntPixels(iOptDouble3, contextE);
        }
        if (iOptDouble4 > 0) {
            iOptDouble4 = Dips.dipsToIntPixels(iOptDouble4, contextE);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iOptDouble3, iOptDouble4);
        this.f38052m.setX(Dips.dipsToIntPixels(iOptDouble, contextE));
        this.f38052m.setY(Dips.dipsToIntPixels(iOptDouble2, contextE));
        this.f38052m.setLayoutParams(layoutParams);
        this.f38052m.requestLayout();
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n
    public void b() {
        if (com.sigmob.sdk.base.utils.v.b(this.f38052m)) {
            com.sigmob.sdk.base.utils.w.a(this.f38052m);
            this.f38052m.removeAllViews();
            this.f38052m.r();
            this.f38052m = null;
        }
        if (com.sigmob.sdk.base.utils.s.b(this.f38053n)) {
            C1258h.d().unregisterCacheListener(this, this.f38053n);
        }
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n.a
    public void a(Context context, JSONObject jSONObject) {
        r rVar = new r(context);
        this.f38052m = rVar;
        rVar.setVideoPlayerStatusListener(new com.sigmob.sdk.videoplayer.k() { // from class: com.sigmob.sdk.mraid.t.1
            @Override // com.sigmob.sdk.videoplayer.k
            public void a(long j2, long j3) {
                if (t.this.f38054o == null) {
                    return;
                }
                t.this.f38054o.a(t.this.f37986a, j2, j3);
            }

            @Override // com.sigmob.sdk.videoplayer.k
            public void a(com.sigmob.sdk.videoplayer.d dVar) {
                SigmobLog.d("VIDEO_PLAYER_STATE change: " + dVar);
                switch (AnonymousClass2.f38056a[dVar.ordinal()]) {
                    case 1:
                        if (t.this.f38054o != null) {
                            t.this.f38054o.a(t.this.f37986a, t.this.f38052m.getDuration(), t.this.f38052m.getVideoWidth(), t.this.f38052m.getVideoHeight());
                        }
                        if (t.this.f38054o != null) {
                            t.this.f38054o.b(t.this.f37986a, 2);
                        }
                        if (t.this.f38054o != null) {
                            t.this.f38054o.b(t.this.f37986a, 4);
                            break;
                        }
                        break;
                    case 2:
                        if (t.this.f38054o != null) {
                            t.this.f38054o.a(t.this.f37986a, t.this.f38052m.getErrorCode(), t.this.f38052m.getErrorMessage());
                            break;
                        }
                        break;
                    case 3:
                        if (t.this.f38054o != null) {
                            t.this.f38054o.a(t.this.f37986a, 2);
                            break;
                        }
                        break;
                    case 4:
                        if (t.this.f38054o != null) {
                            t.this.f38054o.a(t.this.f37986a, 1);
                            break;
                        }
                        break;
                    case 5:
                        if (t.this.f38054o != null) {
                            u uVar = t.this.f38054o;
                            t tVar = t.this;
                            uVar.a(tVar.f37986a, tVar.f38052m.getDuration(), t.this.f38052m.getDuration());
                            u uVar2 = t.this.f38054o;
                            t tVar2 = t.this;
                            uVar2.a(tVar2.f37986a, tVar2.f38052m.getDuration());
                            break;
                        }
                        break;
                    case 6:
                        if (t.this.f38054o != null) {
                            t.this.f38054o.b(t.this.f37986a, 1);
                            break;
                        }
                        break;
                    case 7:
                        if (t.this.f38054o != null) {
                            t.this.f38052m.j();
                            t.this.f38054o.b(t.this.f37986a, 8);
                            break;
                        }
                        break;
                    case 8:
                        if (t.this.f38054o != null) {
                            t.this.f38052m.d();
                            t.this.f38054o.b(t.this.f37986a, 2);
                            break;
                        }
                        break;
                    case 9:
                        if (t.this.f38054o != null) {
                            t.this.f38054o.a(t.this.f37986a, 4);
                            break;
                        }
                        break;
                }
            }
        });
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n.a
    public void b(JSONObject jSONObject) {
        r rVar = this.f38052m;
        if (rVar == null) {
            return;
        }
        rVar.d();
    }

    public void a(u uVar) {
        this.f38054o = uVar;
    }

    @Override // com.sigmob.sdk.videocache.d
    public void a(File file, String str, int i2) {
    }

    private void a(String str, String str2) {
        Uri uri = Uri.parse(str2);
        if (uri != null && "127.0.0.1".equalsIgnoreCase(uri.getHost())) {
            Pattern patternCompile = Pattern.compile("/(.*)");
            String path = uri.getPath();
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) path)) {
                return;
            }
            Matcher matcher = patternCompile.matcher(path);
            if (matcher.find()) {
                this.f38053n = matcher.group(1);
                C1258h.d().registerCacheListener(this, this.f38053n);
            }
        }
    }

    @Override // com.sigmob.sdk.videocache.d
    public void a(String str, Throwable th) {
        SigmobLog.e("url", th);
        u uVar = this.f38054o;
        if (uVar == null) {
            return;
        }
        uVar.a(this.f37986a, 0, th.getMessage());
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n.a
    public void a(JSONObject jSONObject) {
        if (this.f38052m == null) {
            return;
        }
        String strOptString = jSONObject.optString("URL");
        if (jSONObject.optBoolean("proxy", false) && com.sigmob.sdk.base.utils.s.b(strOptString) && strOptString.startsWith("http")) {
            Uri uri = Uri.parse(strOptString);
            if (uri != null && !"127.0.0.1".equalsIgnoreCase(uri.getHost())) {
                strOptString = C1258h.d().getProxyUrl(strOptString);
            }
            a(this.f37986a, strOptString);
        }
        this.f38052m.setUp(strOptString);
        this.f38052m.n();
    }
}
