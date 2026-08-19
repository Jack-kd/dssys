package com.byazt.hp;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.work.WorkRequest;
import com.anythink.core.common.f.s;
import com.byazt.dnb.jl;
import com.byazt.dth.LazeLayout;
import com.byazt.jo.xs;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.lf.w;
import com.byazt.nc.hp;
import com.byazt.oh.NativeDrawVideoTsView;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.qt.zy;
import com.byazt.su.jx;
import com.byazt.tw.a;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.xci.ms;
import com.byazt.ymw.u;
import com.byazt.ymw.vv;
import com.byazt.yx.EcMallWebView;
import com.byazt.zn.ky;
import com.byazt.zn.r;
import com.byazt.zn.xh;
import io.flutter.plugin.platform.PlatformPlugin;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 28, 38})
/* loaded from: classes2.dex */
public class j extends com.byazt.kd.l implements jx.j, jx.InterfaceC0367jx, com.byazt.wn.hp, hp.InterfaceC0317hp, LazeLayout.hp<NativeVideoTsView>, com.byazt.dth.hp<NativeVideoTsView> {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.db.jx f20759a;

    /* renamed from: e, reason: collision with root package name */
    public LazeLayout f20760e;
    public int eb;
    public volatile WeakReference<NativeVideoTsView> gu;
    public com.byazt.nc.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public int[] f20761j;
    public WeakReference<View> jl;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public volatile int f20762k;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.jt.l f20763l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f20764q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.za.hp f20765s;

    /* renamed from: u, reason: collision with root package name */
    public mp f20766u;

    /* renamed from: v, reason: collision with root package name */
    public volatile boolean f20767v;
    public com.byazt.pt.hp vv;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.nq.hp f20768w;
    public CreativeContainer xs;
    public com.byazt.nq.l zy;

    public j(Context context, mp mpVar, int i2, com.byazt.jt.l lVar) {
        super(new com.byazt.db.jx(context, mpVar, i2, lVar, true));
        this.f20761j = null;
        this.f20764q = false;
        this.f20760e = null;
        this.gu = null;
        this.jl = null;
        this.vv = new com.byazt.pt.hp(null) { // from class: com.byazt.hp.j.4
            @Override // com.byazt.pt.hp
            public void hp(zy zyVar) {
            }

            @Override // com.byazt.pt.hp
            public void l(View view, zy zyVar) {
                if (j.this.gu == null || j.this.gu.get() == null) {
                    return;
                }
                ((NativeVideoTsView) j.this.gu.get()).gu();
            }

            @Override // com.byazt.pt.hp
            public void hp(View view, zy zyVar) {
                if (j.this.gu == null || j.this.gu.get() == null) {
                    return;
                }
                ((NativeVideoTsView) j.this.gu.get()).gu();
            }
        };
        com.byazt.db.jx jxVar = (com.byazt.db.jx) getNativeAd();
        this.f20759a = jxVar;
        jxVar.getInteractionManager().hp(this);
        this.jx = i2;
        this.f20763l = lVar;
        this.hp = new com.byazt.nc.hp();
        this.f20766u = mpVar;
        this.eb = ky.zy(mpVar);
        this.f20759a.setPluginAdInteractionListener(this.vv);
        if (context == null || mp.jx(mpVar) || !CreativeContainer.hp(mpVar)) {
            return;
        }
        this.xs = new CreativeContainer(context, mpVar, this.f20759a.getInteractionManager());
    }

    public NativeVideoTsView createNativeVideoTsView(boolean z2) {
        NativeVideoTsView nativeDrawVideoTsView = z2 ? new NativeDrawVideoTsView(this.f20759a.getContext(), this.f20759a.getMaterialMeta()) : new NativeVideoTsView(this.f20759a.getContext(), this.f20759a.getMaterialMeta(), false, false, ky.l(this.jx), false, false);
        this.gu = new WeakReference<>(nativeDrawVideoTsView);
        this.f20759a.setWeakReferenceTsView(this.gu);
        this.f20759a.setVideoViewEasyPlayableSender();
        return nativeDrawVideoTsView;
    }

    @Override // com.byazt.kd.l, com.byazt.qt.zy
    public void destroy() {
        NativeVideoTsView nativeVideoTsView;
        if (this.gu != null && (nativeVideoTsView = this.gu.get()) != null) {
            nativeVideoTsView.sz();
        }
        LazeLayout lazeLayout = this.f20760e;
        if (lazeLayout != null) {
            lazeLayout.hp();
        }
        CreativeContainer creativeContainer = this.xs;
        if (creativeContainer != null) {
            creativeContainer.setOnClickListener(null);
        }
        super.destroy();
    }

    public JSONObject filterVideoKeys(Map<String, Object> map) throws Exception {
        JSONObject jSONObject = new JSONObject();
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (key != null && (key.contains("video") || key.contains(s.a.f3400b) || key.contains("videoUrl"))) {
                    jSONObject.put(key, value);
                }
            }
        }
        return jSONObject;
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rk.l.jx(getLifecycleId(), 3);
    }

    public int getAdType() {
        return this.jx;
    }

    @Override // com.byazt.kd.l, com.byazt.qt.zy
    public View getAdView() {
        NativeVideoTsView nativeVideoTsView;
        NativeVideoTsView nativeVideoTsViewInflate = null;
        if (this.f20759a.getMaterialMeta() == null || this.f20759a.getContext() == null) {
            return null;
        }
        com.byazt.ktd.l.hp(this.f20759a.getMaterialMeta().hp());
        if (mp.l(this.f20759a.getMaterialMeta())) {
            k.hp().hp(this.f20759a.getMaterialMeta(), 3, "valid invoke");
        }
        if (com.byazt.zls.j.hp(this.f20759a.getMaterialMeta())) {
            return hp();
        }
        Context context = this.f20759a.getContext();
        if (mp.jx(this.f20766u)) {
            if (!com.byazt.dnb.s.hp() || !sz.l().el().f21529l) {
                try {
                    nativeVideoTsViewInflate = inflate(context);
                } catch (Throwable unused) {
                }
                if (nativeVideoTsViewInflate != null) {
                    onFill(nativeVideoTsViewInflate);
                }
                return nativeVideoTsViewInflate;
            }
            if (this.gu != null && (nativeVideoTsView = this.gu.get()) != null) {
                nativeVideoTsView.setNativeRenderAd(true);
                return nativeVideoTsView;
            }
            this.f20760e = new LazeLayout(context, this, this);
        } else if (this.xs != null) {
            com.byazt.db.jx jxVar = this.f20759a;
            if (jxVar != null && jxVar.getInteractionManager() != null) {
                this.f20759a.getInteractionManager().hp(this.xs);
            }
            return this.xs;
        }
        com.byazt.kl.j.hp().hp(this.f20759a.getMaterialMeta()).hp(this.jx).l(this.eb);
        return this.f20760e;
    }

    @Override // com.byazt.qt.e
    public int getAdViewHeight() {
        com.byazt.db.jx jxVar = this.f20759a;
        if (jxVar != null) {
            mp materialMeta = jxVar.getMaterialMeta();
            int imageMode = this.f20759a.getImageMode();
            if (CreativeContainer.hp(materialMeta) && (imageMode == 5 || imageMode == 15 || imageMode == 2001 || imageMode == 2002)) {
                return materialMeta.vi().get(0).jx();
            }
        }
        try {
            if (this.f20761j == null) {
                this.f20761j = l();
            }
            int[] iArr = this.f20761j;
            if (iArr != null && iArr.length >= 2) {
                return iArr[1];
            }
            return 720;
        } catch (Throwable th) {
            u.hp("TTFeedAdImpl", "getAdViewHeight error", th);
            return 720;
        }
    }

    @Override // com.byazt.qt.e
    public int getAdViewWidth() {
        com.byazt.db.jx jxVar = this.f20759a;
        if (jxVar != null) {
            mp materialMeta = jxVar.getMaterialMeta();
            int imageMode = this.f20759a.getImageMode();
            if (CreativeContainer.hp(materialMeta) && (imageMode == 5 || imageMode == 15 || imageMode == 2001 || imageMode == 2002)) {
                return materialMeta.vi().get(0).l();
            }
        }
        try {
            if (this.f20761j == null) {
                this.f20761j = l();
            }
            int[] iArr = this.f20761j;
            if (iArr != null && iArr.length >= 2) {
                return iArr[0];
            }
            return PlatformPlugin.DEFAULT_SYSTEM_UI;
        } catch (Throwable th) {
            u.hp("TTFeedAdImpl", "getAdViewWidth error", th);
            return PlatformPlugin.DEFAULT_SYSTEM_UI;
        }
    }

    public int getCodeId() {
        return this.eb;
    }

    @Override // com.byazt.qt.e
    public com.byazt.za.hp getCustomVideo() {
        if (mp.l(this.f20766u)) {
            k.hp().hp(this.f20766u, 1, "invalid invoke");
            return null;
        }
        if (!mp.hp(this.f20759a.getMaterialMeta())) {
            return null;
        }
        if (this.f20765s == null) {
            this.f20765s = new com.byazt.za.hp() { // from class: com.byazt.hp.j.3

                /* renamed from: l, reason: collision with root package name */
                public long f20769l = 0;

                @Override // com.byazt.za.hp
                public String getVideoUrl() {
                    if (mp.l(j.this.f20766u)) {
                        k.hp().hp(j.this.f20766u, 2, "invalid invoke url");
                        return null;
                    }
                    if (j.this.f20759a.getMaterialMeta() == null || j.this.f20759a.getMaterialMeta().bu() != 1 || df.v(j.this.f20759a.getMaterialMeta()) == null) {
                        return null;
                    }
                    if (!j.this.f20764q) {
                        j.this.f20764q = true;
                    }
                    return df.hp(j.this.f20759a.getMaterialMeta());
                }

                @Override // com.byazt.za.hp
                public void reportVideoAutoStart() {
                    com.byazt.jdb.j.hp(j.this.f20759a.getMaterialMeta(), ky.l(j.this.f20759a.getMaterialMeta()), "feed_auto_play", 0L, 0, (Map<String, Object>) null);
                    if (df.v(j.this.f20759a.getMaterialMeta()) != null) {
                        a aVarHp = df.hp(4, j.this.f20759a.getMaterialMeta());
                        aVarHp.putExtra("material_meta", j.this.f20759a.getMaterialMeta());
                        com.byazt.jt.l lVarDb = j.this.f20759a.getMaterialMeta().db();
                        aVarHp.putExtra("ad_slot", Integer.valueOf(lVarDb != null ? lVarDb.sz() : 0));
                        aVarHp.setPlayerType(-1);
                        com.byazt.qvz.j.hp(j.this.f20759a.getMaterialMeta(), (com.byazt.wn.hp) j.this, aVarHp, true, com.byazt.qvz.j.hp());
                    }
                }

                @Override // com.byazt.za.hp
                public void reportVideoBreak(long j2) {
                    if (this.f20769l == 0) {
                        this.f20769l = SystemClock.elapsedRealtime();
                    }
                    long videoDuration = ((long) j.this.getVideoDuration()) * 1000;
                    long jElapsedRealtime = (SystemClock.elapsedRealtime() - this.f20769l) - j2;
                    long j3 = jElapsedRealtime >= 0 ? jElapsedRealtime : 0L;
                    xs.hp hpVar = new xs.hp();
                    hpVar.hp(j2);
                    hpVar.jx(videoDuration);
                    hpVar.l(j3);
                    hpVar.w(0);
                    hpVar.a(0);
                    hpVar.hp(true);
                    com.byazt.qvz.j.hp(j.this, hpVar, null, -1);
                }

                @Override // com.byazt.za.hp
                public void reportVideoContinue(long j2) {
                    if (this.f20769l == 0) {
                        this.f20769l = SystemClock.elapsedRealtime();
                    }
                    long jElapsedRealtime = (SystemClock.elapsedRealtime() - this.f20769l) - j2;
                    long j3 = jElapsedRealtime >= 0 ? jElapsedRealtime : 0L;
                    xs.hp hpVar = new xs.hp();
                    hpVar.hp(j2);
                    hpVar.jx(((long) j.this.getVideoDuration()) * 1000);
                    hpVar.l(j3);
                    hpVar.hp(true);
                    com.byazt.qvz.j.l(j.this, hpVar);
                }

                @Override // com.byazt.za.hp
                public void reportVideoError(long j2, int i2, int i3) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (this.f20769l == 0) {
                        this.f20769l = jElapsedRealtime;
                    }
                    long j3 = jElapsedRealtime - this.f20769l;
                    long videoDuration = ((long) j.this.getVideoDuration()) * 1000;
                    long j4 = j3 - j2;
                    if (j4 < 0) {
                        j4 = 0;
                    }
                    int i4 = j3 == 0 ? 1 : 0;
                    xs.hp hpVar = new xs.hp();
                    hpVar.l(j4);
                    hpVar.jx(videoDuration);
                    hpVar.hp(j2);
                    hpVar.hp(i2);
                    hpVar.l(i3);
                    hpVar.hp(true);
                    com.byazt.qvz.j.hp((com.byazt.wn.hp) j.this, hpVar, "customer error", i4, false);
                }

                @Override // com.byazt.za.hp
                public void reportVideoFinish() {
                    if (this.f20769l == 0) {
                        this.f20769l = SystemClock.elapsedRealtime();
                    }
                    long videoDuration = ((long) j.this.getVideoDuration()) * 1000;
                    long jElapsedRealtime = (SystemClock.elapsedRealtime() - this.f20769l) - videoDuration;
                    long j2 = jElapsedRealtime >= 0 ? jElapsedRealtime : 0L;
                    xs.hp hpVar = new xs.hp();
                    hpVar.hp(videoDuration);
                    hpVar.jx(videoDuration);
                    hpVar.l(j2);
                    hpVar.a(0);
                    hpVar.hp(true);
                    com.byazt.qvz.j.j(j.this, hpVar);
                }

                @Override // com.byazt.za.hp
                public void reportVideoPause(long j2) {
                    if (this.f20769l == 0) {
                        this.f20769l = SystemClock.elapsedRealtime();
                    }
                    long jElapsedRealtime = (SystemClock.elapsedRealtime() - this.f20769l) - j2;
                    long j3 = jElapsedRealtime >= 0 ? jElapsedRealtime : 0L;
                    xs.hp hpVar = new xs.hp();
                    hpVar.hp(j2);
                    hpVar.jx(((long) j.this.getVideoDuration()) * 1000);
                    hpVar.l(j3);
                    hpVar.hp(true);
                    com.byazt.qvz.j.hp(j.this, hpVar, -1);
                }

                @Override // com.byazt.za.hp
                public void reportVideoStart() {
                    this.f20769l = SystemClock.elapsedRealtime();
                    xs.hp hpVar = new xs.hp();
                    hpVar.l(true);
                    hpVar.hp(true);
                    com.byazt.qvz.j.hp(j.this, hpVar);
                }

                @Override // com.byazt.za.hp
                public void reportVideoStartError(int i2, int i3) {
                    HashMap map = new HashMap();
                    map.put("creative_id", j.this.f20759a.getMaterialMeta().j());
                    map.put("error_code", Integer.valueOf(i2));
                    map.put("extra_error_code", Integer.valueOf(i3));
                    map.put("is_customer", 1);
                    com.byazt.tw.j jVarV = df.v(j.this.f20759a.getMaterialMeta());
                    if (jVarV != null) {
                        map.put("video_size", Long.valueOf(jVarV.getSize()));
                        map.put("video_resolution", jVarV.getResolution());
                    }
                    com.byazt.jdb.j.jx(j.this.f20759a.getMaterialMeta(), ky.l(j.this.f20759a.getMaterialMeta()), "play_start_error", map);
                }
            };
        }
        return this.f20765s;
    }

    @Override // com.byazt.nc.hp.InterfaceC0317hp
    public boolean getHasUseCustomizeVideo() {
        return this.f20764q;
    }

    @Override // com.byazt.qt.zy
    public String getLifecycleId() {
        mp mpVar = this.f20766u;
        if (mpVar != null) {
            return mpVar.di();
        }
        return null;
    }

    @Override // com.byazt.kd.l, com.byazt.qt.zy
    public Map<String, Object> getMediaExtraInfo() throws JSONException {
        JSONObject jSONObjectFilterVideoKeys;
        Map<String, Object> mediaExtraInfo = this.f20759a.getMediaExtraInfo();
        if (w.hp("media_ext_video", 1.0d)) {
            Exception e2 = null;
            try {
                jSONObjectFilterVideoKeys = filterVideoKeys(mediaExtraInfo);
                try {
                    mp materialMeta = this.f20759a.getMaterialMeta();
                    if (jSONObjectFilterVideoKeys != null && jSONObjectFilterVideoKeys.length() > 0) {
                        jSONObjectFilterVideoKeys.put("rit", ky.hp(materialMeta, ""));
                        jSONObjectFilterVideoKeys.put("req_id", materialMeta.ns());
                        jSONObjectFilterVideoKeys.put("cid", materialMeta.j());
                    }
                } catch (Exception e3) {
                    e2 = e3;
                }
            } catch (Exception e4) {
                jSONObjectFilterVideoKeys = null;
                e2 = e4;
            }
            if (jSONObjectFilterVideoKeys != null && jSONObjectFilterVideoKeys.length() > 0) {
                k.hp().hp("media_ext_video", jSONObjectFilterVideoKeys, e2);
            }
        }
        mp materialMeta2 = this.f20759a.getMaterialMeta();
        if (materialMeta2 == null) {
            return mediaExtraInfo;
        }
        if (mediaExtraInfo == null) {
            mediaExtraInfo = new HashMap<>();
        }
        mediaExtraInfo.put("reward_task_type", Integer.valueOf(materialMeta2.nf()));
        mediaExtraInfo.put("reward_task_threshold", Integer.valueOf(materialMeta2.xn() != null ? materialMeta2.xn().l() : -1));
        if (materialMeta2.hy() == 166 && com.byazt.we.hp.hp(materialMeta2)) {
            int iJ = ms.j(materialMeta2);
            int iW = ms.w(materialMeta2);
            mediaExtraInfo.put("live_author_follower_count", Integer.valueOf(iJ));
            mediaExtraInfo.put("live_watch_count", Integer.valueOf(iW));
        }
        return mediaExtraInfo;
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qa.w getMediationManager() {
        return new com.byazt.pi.jx();
    }

    public NativeVideoTsView getNativeVideoTsView() {
        if (this.gu != null) {
            return this.gu.get();
        }
        return null;
    }

    @Override // com.byazt.qt.e
    public double getVideoDuration() {
        if (jl.hp(this.f20759a.getMaterialMeta())) {
            return 0.0d;
        }
        return df.eb(this.f20759a.getMaterialMeta());
    }

    @Override // com.byazt.nc.hp.InterfaceC0317hp
    public com.byazt.nc.hp getVideoModel() {
        return this.hp;
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onProgressUpdate(long j2, long j3) {
        com.byazt.nq.hp hpVar = this.f20768w;
        if (hpVar != null) {
            hpVar.hp(j2, j3);
        }
        hp(j2, j3);
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoAdContinuePlay() {
        com.byazt.nq.hp hpVar = this.f20768w;
        if (hpVar != null) {
            hpVar.j(this);
        }
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoAdPaused() {
        com.byazt.nq.hp hpVar = this.f20768w;
        if (hpVar != null) {
            hpVar.jx(this);
        }
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoAdStartPlay() {
        com.byazt.nq.hp hpVar = this.f20768w;
        if (hpVar != null) {
            hpVar.l(this);
        }
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoComplete() {
        com.byazt.nq.hp hpVar = this.f20768w;
        if (hpVar != null) {
            hpVar.w(this);
        }
        if (!jx() || this.f20767v) {
            return;
        }
        this.zy.hp(0);
        this.f20767v = true;
    }

    @Override // com.byazt.su.jx.j
    public void onVideoError(int i2, int i3) {
        com.byazt.nq.hp hpVar = this.f20768w;
        if (hpVar != null) {
            hpVar.hp(i2, i3);
        }
    }

    @Override // com.byazt.su.jx.j
    public void onVideoLoad() {
        com.byazt.nq.hp hpVar = this.f20768w;
        if (hpVar != null) {
            hpVar.hp(this);
        }
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.pt.hp hpVar, com.byazt.tl.j jVar) {
        View adView;
        try {
            registerViewForInteraction(viewGroup, (List<View>) null, list, list2, list3, (View) null, hpVar);
            if (jVar != null) {
                View viewFindViewById = viewGroup.findViewById(jVar.jl());
                if (viewFindViewById != null && getAdLogo() != null) {
                    viewFindViewById.setVisibility(0);
                    if (viewFindViewById instanceof ViewGroup) {
                        ((ViewGroup) viewFindViewById).removeAllViews();
                        ImageView imageView = new ImageView(viewGroup.getContext());
                        imageView.setImageBitmap(getAdLogo());
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                        layoutParams.width = xh.jx(viewGroup.getContext(), 38.0f);
                        layoutParams.height = xh.jx(viewGroup.getContext(), 38.0f);
                        viewFindViewById.setLayoutParams(layoutParams);
                        ((ViewGroup) viewFindViewById).addView(imageView, -1, -1);
                    } else if (viewFindViewById instanceof ImageView) {
                        ((ImageView) viewFindViewById).setImageBitmap(getAdLogo());
                    }
                }
                FrameLayout frameLayout = (FrameLayout) viewGroup.findViewById(jVar.eb());
                if (frameLayout != null && (adView = getAdView()) != null) {
                    xh.s(adView);
                    frameLayout.removeAllViews();
                    frameLayout.addView(adView, -1, -1);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.qt.zy
    public void setEasyPlayWidgetListener(com.byazt.pt.l lVar) {
        com.byazt.db.jx jxVar = this.f20759a;
        if (jxVar != null) {
            jxVar.setEasyPlayWidgetListener(lVar);
        }
    }

    @Override // com.byazt.qt.e
    public void setVideoAdListener(com.byazt.nq.hp hpVar) {
        this.f20768w = hpVar;
    }

    @Override // com.byazt.qt.e
    public void setVideoRewardListener(com.byazt.nq.l lVar) {
        this.zy = lVar;
    }

    private boolean jx() {
        if (this.f20759a.getMaterialMeta() == null || this.zy == null) {
            return false;
        }
        int iPg = this.f20759a.getMaterialMeta().pg();
        return iPg == 1 || iPg == 2;
    }

    private int[] l() {
        if (this.f20759a.getMaterialMeta() == null) {
            return null;
        }
        if (this.f20759a.getMaterialMeta().hy() == 166 && ms.hp(this.f20759a.getMaterialMeta())) {
            return new int[]{ms.jl(this.f20759a.getMaterialMeta()), ms.zy(this.f20759a.getMaterialMeta())};
        }
        if (this.f20759a.getMaterialMeta().qe() == 1 && this.f20759a.getMaterialMeta().eq() == 1 && df.u(this.f20759a.getMaterialMeta()) != null) {
            return df.u(this.f20759a.getMaterialMeta()).getWidthAndHeight();
        }
        if (df.v(this.f20759a.getMaterialMeta()) != null) {
            return df.v(this.f20759a.getMaterialMeta()).getWidthAndHeight();
        }
        return null;
    }

    @Override // com.byazt.dth.hp
    public NativeVideoTsView inflate(Context context) {
        hp(this.eb);
        NativeVideoTsView nativeVideoTsViewCreateNativeVideoTsView = createNativeVideoTsView(false);
        nativeVideoTsViewCreateNativeVideoTsView.setVideoAdClickListenerTTNativeAd(this);
        nativeVideoTsViewCreateNativeVideoTsView.setAdCreativeClickListener(new NativeVideoTsView.hp() { // from class: com.byazt.hp.j.1
            @Override // com.byazt.oh.NativeVideoTsView.hp
            public void hp(View view, int i2) {
                if (j.this.f20759a.getInteractionManager() != null) {
                    j.this.f20759a.getInteractionManager().hp(view, i2);
                }
            }
        });
        com.byazt.jz.s.u().hp(-1L);
        nativeVideoTsViewCreateNativeVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.j() { // from class: com.byazt.hp.j.2
            @Override // com.byazt.oh.NativeVideoTsView.j
            public void hp(boolean z2, long j2, long j3, long j4, boolean z3, boolean z4) {
                com.byazt.nc.hp hpVar = j.this.hp;
                if (hpVar != null) {
                    hpVar.hp = z2;
                    hpVar.f23534w = j2;
                    hpVar.f23530a = j3;
                    hpVar.eb = j4;
                    hpVar.f23531j = z3;
                    hpVar.f23533s = z4;
                }
            }
        });
        nativeVideoTsViewCreateNativeVideoTsView.setVideoAdLoadListener(this);
        nativeVideoTsViewCreateNativeVideoTsView.setVideoAdInteractionListener(this);
        if (5 == this.jx) {
            nativeVideoTsViewCreateNativeVideoTsView.setIsAutoPlay(this.f20759a.isAllowDevOperate() ? this.f20763l.w() : this.f20759a.isAutoPlay());
        } else {
            nativeVideoTsViewCreateNativeVideoTsView.setIsAutoPlay(this.f20759a.isAutoPlay());
        }
        nativeVideoTsViewCreateNativeVideoTsView.setIsQuiet(this.f20766u.dh() == 1);
        com.byazt.gog.jx jxVarHp = this.f20759a.getInteractionManager().hp();
        if (jxVarHp != null) {
            jxVarHp.hp(this);
        }
        return nativeVideoTsViewCreateNativeVideoTsView;
    }

    @Override // com.byazt.dth.LazeLayout.hp
    public void onFill(NativeVideoTsView nativeVideoTsView) {
        if (nativeVideoTsView != null) {
            nativeVideoTsView.setNativeRenderAd(true);
            nativeVideoTsView.hp(0L, true, false);
        }
    }

    private View hp() {
        View view;
        WeakReference<View> weakReference = this.jl;
        if (weakReference != null && (view = weakReference.get()) != null) {
            return view;
        }
        EcMallWebView ecMallWebView = new EcMallWebView(this.f20759a.getContext(), this.f20759a.getMaterialMeta(), this.jx == 9 ? 6 : 1);
        ecMallWebView.setMaterialMeta(r.hp(this.f20766u));
        this.jl = new WeakReference<>(ecMallWebView);
        return ecMallWebView;
    }

    private void hp(int i2) {
        int iA = sz.l().a(i2);
        if (3 == iA) {
            this.f20759a.setAllowDevOperate(false);
            this.f20759a.setAutoPlay(false);
            return;
        }
        if (1 == iA && vv.j(this.f20759a.getContext())) {
            this.f20759a.setAllowDevOperate(false);
        } else if (2 == iA) {
            if (!vv.w(this.f20759a.getContext()) && !vv.j(this.f20759a.getContext()) && !vv.a(this.f20759a.getContext())) {
                return;
            } else {
                this.f20759a.setAllowDevOperate(false);
            }
        } else if (4 == iA) {
            this.f20759a.setAllowDevOperate(true);
            return;
        } else {
            if (5 != iA) {
                return;
            }
            if (!vv.j(this.f20759a.getContext()) && !vv.a(this.f20759a.getContext())) {
                return;
            }
        }
        this.f20759a.setAutoPlay(true);
    }

    private void hp(long j2, long j3) {
        int i2;
        if (jx() && !this.f20767v) {
            int iPg = this.f20759a.getMaterialMeta().pg();
            long j4 = iPg == 1 ? 15000L : iPg == 2 ? WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS : 0L;
            if (j3 <= j4) {
                i2 = (int) ((j3 - j2) / 1000);
            } else {
                i2 = (int) ((j4 - j2) / 1000);
            }
            if (i2 < 0) {
                i2 = 0;
            }
            if (i2 == this.f20762k) {
                return;
            }
            this.f20762k = i2;
            if (this.f20762k == 0) {
                this.f20767v = true;
            }
            this.zy.hp(this.f20762k);
        }
    }
}
