package com.meishu.sdk.platform.ms;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.anythink.core.common.d.i;
import com.bykv.vk.component.ttvideo.player.C;
import com.meishu.sdk.activity.MeishuRewardVideoPlayerActivity;
import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.ad.fullscreenvideo.IFullScreenMediaListener;
import com.meishu.sdk.core.ad.fullscreenvideo.IFullScreenVideoAd;
import com.meishu.sdk.core.ad.reward.RewardAdMediaListener;
import com.meishu.sdk.core.ad.reward.RewardVideoAd;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.loader.InteractionListener;
import com.meishu.sdk.core.safe.SafeBroadcastReceiver;
import com.meishu.sdk.core.utils.C1242a;
import com.meishu.sdk.core.utils.DownloadDialogBean;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.ResultBean;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.e1;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.v0;
import com.meishu.sdk.core.webview.o;
import com.meishu.sdk.meishu_ad.n0;
import com.meishu.sdk.platform.ms.splash.ShakeUtil;
import java.util.Map;

/* loaded from: classes4.dex */
public class a extends com.meishu.sdk.core.ad.a implements RewardVideoAd, IFullScreenVideoAd {

    /* renamed from: a, reason: collision with root package name */
    public c f32830a;

    /* renamed from: b, reason: collision with root package name */
    public g f32831b;

    /* renamed from: c, reason: collision with root package name */
    public InteractionListener f32832c;

    /* renamed from: d, reason: collision with root package name */
    public RewardAdMediaListener f32833d;

    /* renamed from: e, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.nativ.f f32834e;

    /* renamed from: f, reason: collision with root package name */
    public com.meishu.sdk.platform.ms.reward.a f32835f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f32836g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f32837h;

    /* renamed from: i, reason: collision with root package name */
    public long f32838i;

    /* renamed from: j, reason: collision with root package name */
    public long f32839j;

    /* renamed from: k, reason: collision with root package name */
    public long f32840k;

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f32841l;

    /* renamed from: m, reason: collision with root package name */
    public BroadcastReceiver f32842m;

    /* renamed from: n, reason: collision with root package name */
    public volatile boolean f32843n;

    /* renamed from: o, reason: collision with root package name */
    public IFullScreenMediaListener f32844o;

    /* renamed from: com.meishu.sdk.platform.ms.a$a, reason: collision with other inner class name */
    public class C0699a extends SafeBroadcastReceiver {
        public C0699a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:117:0x021e A[Catch: all -> 0x021c, TryCatch #4 {all -> 0x021c, blocks: (B:108:0x0203, B:110:0x0209, B:112:0x0211, B:117:0x021e, B:119:0x022d), top: B:159:0x0203, outer: #5 }] */
        /* JADX WARN: Type inference failed for: r10v26, types: [com.meishu.sdk.core.loader.IAdLoadListener] */
        /* JADX WARN: Type inference failed for: r10v34, types: [com.meishu.sdk.core.loader.c] */
        @Override // com.meishu.sdk.core.safe.SafeBroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(android.content.Context r10, android.content.Intent r11) {
            /*
                Method dump skipped, instructions count: 702
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.ms.a.C0699a.a(android.content.Context, android.content.Intent):void");
        }
    }

    public class b implements a0.i {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f32846a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ n0 f32847b;

        public b(Context context, n0 n0Var) {
            this.f32846a = context;
            this.f32847b = n0Var;
        }

        @Override // com.meishu.sdk.core.utils.a0.i
        public void a() {
            com.meishu.sdk.platform.ms.reward.a aVar = a.this.f32835f;
            if (aVar != null) {
                aVar.onAdRenderFail("视频加载失败", ErrorCodeUtil.RES_LOAD_ERROR.intValue());
            }
        }

        @Override // com.meishu.sdk.core.utils.a0.i
        public void success() {
            a.this.a(this.f32846a, this.f32847b);
        }
    }

    public a(g gVar, c cVar, com.meishu.sdk.meishu_ad.nativ.f fVar, com.meishu.sdk.platform.ms.reward.a aVar) {
        super(null, "MS");
        this.f32837h = false;
        this.f32842m = new C0699a();
        this.f32831b = gVar;
        this.f32830a = cVar;
        this.f32834e = fVar;
        this.f32835f = aVar;
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [com.meishu.sdk.core.loader.c] */
    public static void a(a aVar) {
        aVar.getClass();
        try {
            if (C1242a.a((AdSlot) aVar.f32834e)) {
                LogUtil.dev("RewardVideoAdAdapter", "has exp. return");
                return;
            }
            if (aVar.f32843n) {
                return;
            }
            aVar.f32843n = true;
            com.meishu.sdk.meishu_ad.nativ.f fVar = aVar.f32834e;
            if (fVar != null) {
                fVar.setHasExposed(true);
            }
            v0.a(aVar.f32831b.getAdLoader().getPosId(), 3);
            String[] strArrB = i0.b(aVar.f32831b.f32888a.getMonitorUrl(), aVar.f32838i + i.f2495E + aVar.f32839j + i.f2495E + aVar.f32840k);
            i0.a(strArrB);
            if (strArrB != null) {
                LogUtil.d("RewardVideoAdAdapter", "send onAdExposure");
                for (String str : strArrB) {
                    if (!TextUtils.isEmpty(str)) {
                        g gVar = aVar.f32831b;
                        a0.a(aVar.f32831b.getContext(), i0.a(i0.a(str, ((com.meishu.sdk.meishu_ad.nativ.f) gVar.f32888a).getAct_type(), gVar instanceof com.meishu.sdk.platform.ms.reward.b ? AdType.REWARD : AdType.FULL_SCREEN_VIDEO)), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00a2 A[Catch: all -> 0x001c, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x0005, B:7:0x0012, B:13:0x0021, B:15:0x002d, B:18:0x0035, B:20:0x003d, B:22:0x004f, B:24:0x0054, B:28:0x0062, B:30:0x007a, B:31:0x007f, B:34:0x0084, B:36:0x008a, B:39:0x008f, B:40:0x00a2, B:42:0x00a8, B:43:0x00b1), top: B:50:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void b(android.content.Context r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r0 = r4.f32836g     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L21
            java.lang.String r5 = "RewardVideoAdAdapter"
            java.lang.String r0 = "同一个激励视频只能展示一次"
            com.meishu.sdk.core.utils.LogUtil.d(r5, r0)     // Catch: java.lang.Throwable -> L1c
            java.lang.String r5 = "同一个激励视频只能展示一次"
            com.meishu.sdk.platform.ms.reward.a r0 = r4.f32835f     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L1f
            java.lang.Integer r1 = com.meishu.sdk.core.exception.ErrorCodeUtil.RES_LOAD_ERROR     // Catch: java.lang.Throwable -> L1c
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L1c
            r0.onAdRenderFail(r5, r1)     // Catch: java.lang.Throwable -> L1c
            goto L1f
        L1c:
            r5 = move-exception
            goto Lba
        L1f:
            monitor-exit(r4)
            return
        L21:
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L1c
            r4.f32838i = r0     // Catch: java.lang.Throwable -> L1c
            com.meishu.sdk.platform.ms.c r0 = r4.f32830a     // Catch: java.lang.Throwable -> L1c
            boolean r1 = r0 instanceof com.meishu.sdk.meishu_ad.nativ.d     // Catch: java.lang.Throwable -> L1c
            if (r1 == 0) goto L32
            com.meishu.sdk.meishu_ad.nativ.d r0 = (com.meishu.sdk.meishu_ad.nativ.d) r0     // Catch: java.lang.Throwable -> L1c
            com.meishu.sdk.meishu_ad.n0 r0 = r0.f32378h     // Catch: java.lang.Throwable -> L1c
            goto L33
        L32:
            r0 = 0
        L33:
            if (r0 == 0) goto La2
            com.meishu.sdk.platform.ms.g r1 = r4.f32831b     // Catch: java.lang.Throwable -> L1c
            T extends com.meishu.sdk.core.ad.AdSlot r1 = r1.f32888a     // Catch: java.lang.Throwable -> L1c
            boolean r2 = r1 instanceof com.meishu.sdk.meishu_ad.nativ.f     // Catch: java.lang.Throwable -> L1c
            if (r2 == 0) goto La2
            com.meishu.sdk.meishu_ad.nativ.f r1 = (com.meishu.sdk.meishu_ad.nativ.f) r1     // Catch: java.lang.Throwable -> L1c
            java.lang.String[] r1 = r1.getEventUrl()     // Catch: java.lang.Throwable -> L1c
            com.meishu.sdk.core.utils.p1.b(r1)     // Catch: java.lang.Throwable -> L1c
            r1 = 1
            r4.f32836g = r1     // Catch: java.lang.Throwable -> L1c
            com.meishu.sdk.platform.ms.c r2 = r4.f32830a     // Catch: java.lang.Throwable -> L1c
            boolean r3 = r2 instanceof com.meishu.sdk.meishu_ad.nativ.d     // Catch: java.lang.Throwable -> L1c
            if (r3 == 0) goto L53
            com.meishu.sdk.meishu_ad.nativ.d r2 = (com.meishu.sdk.meishu_ad.nativ.d) r2     // Catch: java.lang.Throwable -> L1c
            r2.f32382l = r1     // Catch: java.lang.Throwable -> L1c
        L53:
            r2 = 0
            com.meishu.sdk.meishu_ad.nativ.f r3 = r4.f32834e     // Catch: java.lang.Throwable -> L1c java.lang.Exception -> L5f
            java.lang.String r3 = r3.getReq_id()     // Catch: java.lang.Throwable -> L1c java.lang.Exception -> L5f
            boolean r3 = com.meishu.sdk.activity.MeishuRewardH5Activity.isValid(r3)     // Catch: java.lang.Throwable -> L1c java.lang.Exception -> L5f
            goto L60
        L5f:
            r3 = r2
        L60:
            if (r3 == 0) goto L84
            r4.f32837h = r1     // Catch: java.lang.Throwable -> L1c
            r4.a(r5)     // Catch: java.lang.Throwable -> L1c
            android.content.Intent r0 = new android.content.Intent     // Catch: java.lang.Throwable -> L1c
            r0.<init>()     // Catch: java.lang.Throwable -> L1c
            java.lang.Class<com.meishu.sdk.activity.MeishuRewardH5Activity> r1 = com.meishu.sdk.activity.MeishuRewardH5Activity.class
            r0.setClass(r5, r1)     // Catch: java.lang.Throwable -> L1c
            r1 = 67108864(0x4000000, float:1.5046328E-36)
            r0.setFlags(r1)     // Catch: java.lang.Throwable -> L1c
            boolean r1 = r5 instanceof android.app.Activity     // Catch: java.lang.Throwable -> L1c
            if (r1 != 0) goto L7f
            r1 = 268435456(0x10000000, float:2.524355E-29)
            r0.addFlags(r1)     // Catch: java.lang.Throwable -> L1c
        L7f:
            r5.startActivity(r0)     // Catch: java.lang.Throwable -> L1c
            monitor-exit(r4)
            return
        L84:
            com.meishu.sdk.platform.ms.g r1 = r4.f32831b     // Catch: java.lang.Throwable -> L1c
            boolean r3 = r1 instanceof com.meishu.sdk.platform.ms.reward.b     // Catch: java.lang.Throwable -> L1c
            if (r3 == 0) goto L8f
            r4.a(r5, r0)     // Catch: java.lang.Throwable -> L1c
            monitor-exit(r4)
            return
        L8f:
            T extends com.meishu.sdk.core.ad.AdSlot r1 = r1.f32888a     // Catch: java.lang.Throwable -> L1c
            com.meishu.sdk.meishu_ad.nativ.f r1 = (com.meishu.sdk.meishu_ad.nativ.f) r1     // Catch: java.lang.Throwable -> L1c
            java.lang.String[] r1 = r1.getImageUrls()     // Catch: java.lang.Throwable -> L1c
            r1 = r1[r2]     // Catch: java.lang.Throwable -> L1c
            com.meishu.sdk.platform.ms.a$b r2 = new com.meishu.sdk.platform.ms.a$b     // Catch: java.lang.Throwable -> L1c
            r2.<init>(r5, r0)     // Catch: java.lang.Throwable -> L1c
            com.meishu.sdk.core.utils.a0.a(r1, r2)     // Catch: java.lang.Throwable -> L1c
            goto Lb8
        La2:
            java.lang.String r5 = "视频加载失败"
            com.meishu.sdk.platform.ms.reward.a r0 = r4.f32835f     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto Lb1
            java.lang.Integer r1 = com.meishu.sdk.core.exception.ErrorCodeUtil.RES_LOAD_ERROR     // Catch: java.lang.Throwable -> L1c
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L1c
            r0.onAdRenderFail(r5, r1)     // Catch: java.lang.Throwable -> L1c
        Lb1:
            java.lang.String r5 = "RewardVideoAdAdapter"
            java.lang.String r0 = "showAd: 请先加载视频"
            com.meishu.sdk.core.utils.LogUtil.e(r5, r0)     // Catch: java.lang.Throwable -> L1c
        Lb8:
            monitor-exit(r4)
            return
        Lba:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L1c
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.ms.a.b(android.content.Context):void");
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void destroy() {
        MeishuRewardVideoPlayerActivity.clearRewardMediaView();
        this.f32830a = null;
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        resultBean.setCid(this.f32834e.getCid());
        resultBean.setCat(this.f32834e.getCat());
        resultBean.setAderId(this.f32834e.getAder_id());
        resultBean.setFromId(this.f32834e.getFromId());
        resultBean.setDrawing(this.f32834e.getDrawing());
        resultBean.setPid(this.f32834e.getPosId());
        resultBean.setReqId(this.f32834e.getReq_id());
        resultBean.setPrice(this.f32834e.getEcpm());
        resultBean.setEcpm(String.valueOf(this.f32834e.getEcpm()));
        resultBean.setS_ext(this.f32834e.getS_ext());
        resultBean.setS_code(this.f32834e.getS_code());
        resultBean.setSdkName("MS");
        resultBean.setAdInfo(C1242a.a((BaseAdSlot) this.f32834e));
        return resultBean;
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public boolean isAdValid() {
        int expire_timestamp = this.f32834e.getExpire_timestamp();
        return SystemClock.uptimeMillis() - this.f32834e.getLoadedTime() < (expire_timestamp <= 0 ? 1740000L : (long) (expire_timestamp * 1000));
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.s2s.ISBidding
    public void sendLossNotification(Map map) {
        a0.a(this.f32831b.getContext(), this.f32834e.getLossUrl(), (Map<String, Object>) map);
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.s2s.ISBidding
    public void sendWinNotification(Map map) {
        a0.b(this.f32831b.getContext(), this.f32834e.getWinUrl(), map);
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public void setInteractionListener(InteractionListener interactionListener) {
        try {
            this.f32832c = interactionListener;
            this.f32830a.setInteractionListener(interactionListener);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void setMediaListener(RewardAdMediaListener rewardAdMediaListener) {
        this.f32833d = rewardAdMediaListener;
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void showAd() {
        try {
            b(this.f32831b.getContext());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.fullscreenvideo.IFullScreenVideoAd
    public void setMediaListener(IFullScreenMediaListener iFullScreenMediaListener) {
        this.f32844o = iFullScreenMediaListener;
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void showAd(Activity activity) {
        try {
            c cVar = this.f32830a;
            if (cVar instanceof com.meishu.sdk.meishu_ad.nativ.d) {
                ((com.meishu.sdk.meishu_ad.nativ.d) cVar).f32380j = activity;
            }
            b(activity);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(Context context, n0 n0Var) {
        try {
            com.meishu.sdk.meishu_ad.nativ.f fVar = (com.meishu.sdk.meishu_ad.nativ.f) this.f32831b.f32888a;
            int i2 = context.getResources().getConfiguration().orientation;
            Intent intent = new Intent();
            intent.setClass(context, MeishuRewardVideoPlayerActivity.class);
            intent.setFlags(67108864);
            intent.putExtra(MeishuRewardVideoPlayerActivity.orientation_key, i2);
            intent.putExtra(MeishuRewardVideoPlayerActivity.local_ad_id_key, this.f32831b.f32888a.hashCode() + "");
            ShakeUtil.getInstance().a(fVar.getPosId(), fVar.getLoadedTime(), fVar.getDclk());
            if (fVar.getAdPatternType() != 2 && fVar.getImageUrls() != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Image_src, fVar.getImageUrls()[0]);
            }
            String[] strArr = fVar.f32398j;
            if (strArr != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Video_start_key, strArr);
            }
            String[] strArr2 = fVar.f32399k;
            if (strArr2 != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Video_one_quarter_key, strArr2);
            }
            String[] strArr3 = fVar.f32400l;
            if (strArr3 != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Video_one_half_key, strArr3);
            }
            String[] strArr4 = fVar.f32401m;
            if (strArr4 != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Video_three_quarter_key, strArr4);
            }
            String[] strArr5 = fVar.f32402n;
            if (strArr5 != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Video_complete_key, strArr5);
            }
            String[] strArr6 = fVar.f32403o;
            if (strArr6 != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Video_pause_key, strArr6);
            }
            String[] strArr7 = fVar.f32404p;
            if (strArr7 != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Video_resume_key, strArr7);
            }
            String[] strArr8 = fVar.f32406r;
            if (strArr8 != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Video_mute_key, strArr8);
            }
            String[] strArr9 = fVar.f32407s;
            if (strArr9 != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Video_unmute_key, strArr9);
            }
            if (fVar.getVideo_cover() != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Video_cover, fVar.getVideo_cover());
            }
            String str = fVar.f32396h;
            if (str != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Video_endcover, str);
            }
            long j2 = fVar.f32397i;
            if (j2 != 0) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Video_keep_time, j2);
            }
            if (!TextUtils.isEmpty(fVar.title)) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Ad_title, fVar.title);
            }
            if (!TextUtils.isEmpty(fVar.desc)) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Ad_content, fVar.desc);
            }
            if (!TextUtils.isEmpty(fVar.getFromLogo())) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.From_logo, fVar.getFromLogo());
            }
            String str2 = fVar.iconUrl;
            if (str2 != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Ad_icon_url, str2);
            }
            if (fVar.getEventUrl() != null) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Event_url, fVar.getEventUrl());
            }
            String str3 = fVar.f32392d;
            if (TextUtils.isEmpty(str3)) {
                if (fVar.getInteractionType() == 0) {
                    str3 = "查看详情";
                } else {
                    str3 = "点击下载";
                }
            }
            intent.putExtra(MeishuRewardVideoPlayerActivity.Action_text, str3);
            intent.putExtra(MeishuRewardVideoPlayerActivity.Clickable_range, fVar.f32410v);
            intent.putExtra(MeishuRewardVideoPlayerActivity.Close_btn, fVar.f32411w);
            intent.putExtra(MeishuRewardVideoPlayerActivity.Clk_type, fVar.getAct_type());
            intent.putExtra(MeishuRewardVideoPlayerActivity.Power_index, fVar.getPower_index());
            intent.putExtra(MeishuRewardVideoPlayerActivity.Power_index2, fVar.getPower_index2());
            intent.putExtra(MeishuRewardVideoPlayerActivity.Power_count, fVar.getPower_count());
            intent.putExtra(MeishuRewardVideoPlayerActivity.Power_delay, fVar.getPower_delay());
            intent.putExtra(MeishuRewardVideoPlayerActivity.Interaction_type, fVar.getInteractionType());
            g gVar = this.f32831b;
            if (gVar instanceof com.meishu.sdk.platform.ms.reward.b) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Ad_type, AdType.REWARD.value());
                if (e1.b(context) && o.a(fVar.getWebTempUrl()) && fVar.getWebTempId() > 0) {
                    intent.putExtra(MeishuRewardVideoPlayerActivity.Web_temp_url, fVar.getWebTempUrl());
                    intent.putExtra(MeishuRewardVideoPlayerActivity.Web_temp_id, fVar.getWebTempId());
                }
                if (e1.a(context, fVar)) {
                    intent.putExtra(MeishuRewardVideoPlayerActivity.Reward_tmp_url, fVar.getReward_tmp_url());
                    intent.putExtra(MeishuRewardVideoPlayerActivity.Reward_tmp_type, fVar.getReward_tmp_type());
                    intent.putExtra(MeishuRewardVideoPlayerActivity.Reward_tmp_time, fVar.getReward_tmp_time());
                    intent.putExtra(MeishuRewardVideoPlayerActivity.Reward_tmp_id, fVar.getRewardTmpId());
                }
            } else if (gVar instanceof com.meishu.sdk.platform.ms.fullscreenvideo.a) {
                intent.putExtra(MeishuRewardVideoPlayerActivity.Ad_type, AdType.FULL_SCREEN_VIDEO.value());
            }
            c cVar = this.f32830a;
            if (cVar instanceof com.meishu.sdk.meishu_ad.nativ.d) {
                MeishuRewardVideoPlayerActivity.setVideoMute(((com.meishu.sdk.meishu_ad.nativ.d) cVar).f32381k);
            }
            MeishuRewardVideoPlayerActivity.setFullScreenAd(this.f32830a);
            DownloadDialogBean downloadDialogBean = new DownloadDialogBean();
            downloadDialogBean.setApp_name(fVar.getAppName());
            downloadDialogBean.setApp_feature(fVar.getApp_feature());
            downloadDialogBean.setApp_intro(fVar.getApp_intro());
            downloadDialogBean.setApp_privacy(fVar.getApp_privacy());
            downloadDialogBean.setApp_size(fVar.getApp_size());
            downloadDialogBean.setDeveloper(fVar.getDeveloper());
            downloadDialogBean.setPayment_types(fVar.getPayment_types());
            downloadDialogBean.setApp_permission(fVar.getApp_permission());
            downloadDialogBean.setApp_permission_url(fVar.getApp_permission_url());
            downloadDialogBean.setApp_intor_url(fVar.getApp_intor_url());
            downloadDialogBean.setApp_private_agreement(fVar.getPrivacy_agreement());
            MeishuRewardVideoPlayerActivity.setDownloadDialogBean(downloadDialogBean);
            a(context);
            if (!(context instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            MeishuRewardVideoPlayerActivity.setMediaView(n0Var);
            context.startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
            com.meishu.sdk.platform.ms.reward.a aVar = this.f32835f;
            if (aVar != null) {
                aVar.onAdRenderFail("视频加载失败", ErrorCodeUtil.RES_LOAD_ERROR.intValue());
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.meishu.sdk.core.loader.c] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.meishu.sdk.core.loader.c] */
    public static void b(a aVar) {
        if (aVar.f32841l) {
            LocalBroadcastManager.getInstance(aVar.f32831b.getContext()).unregisterReceiver(aVar.f32842m);
            LogUtil.d("RewardVideoAdAdapter", "onVideoActivityClosed: 激励视频广告回收资源");
        }
        if (aVar.f32831b.getAdLoader().getLoaderListener() != null) {
            aVar.f32831b.getAdLoader().getLoaderListener().onAdClosed();
        }
        InteractionListener interactionListener = aVar.f32832c;
        if (interactionListener != null) {
            interactionListener.onAdClosed();
        }
    }

    public final void a(Context context) {
        try {
            this.f32841l = true;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("broadcast_onclick");
            intentFilter.addAction("broadcast_onreward");
            intentFilter.addAction("broadcast_onclosed");
            intentFilter.addAction("broadcast_on_video_complete");
            LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(context);
            intentFilter.addAction("broadcast_on_video_start");
            intentFilter.addAction("broadcast_on_video_pause");
            intentFilter.addAction("broadcast_on_video_resume");
            intentFilter.addAction("broadcast_on_video_error");
            localBroadcastManager.registerReceiver(this.f32842m, intentFilter);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
