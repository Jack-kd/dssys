package com.meishu.sdk.core.webview;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.DisplayMetrics;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.webview.jsbridge.bean.ClickTempParam;

/* loaded from: classes4.dex */
public class p extends com.meishu.sdk.core.webview.listener.e {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.platform.ms.c f32138b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f32139c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ q f32140d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(q qVar, com.meishu.sdk.core.webview.listener.d dVar, com.meishu.sdk.platform.ms.c cVar, Context context) {
        super(dVar);
        this.f32140d = qVar;
        this.f32138b = cVar;
        this.f32139c = context;
    }

    @Override // com.meishu.sdk.core.webview.listener.d
    public void onClosePage() {
        Handler handler = q.f32142i;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        j jVar = this.f32140d.f32150g;
        if (jVar != null) {
            jVar.onCloseWebView();
        }
    }

    @Override // com.meishu.sdk.core.webview.listener.d
    public void onWebClicked(ClickTempParam clickTempParam) {
        int webTempId;
        AdSlot adSlotA;
        boolean open_browser = clickTempParam.getOpen_browser();
        com.meishu.sdk.platform.ms.c cVar = this.f32138b;
        if ((cVar instanceof com.meishu.sdk.meishu_ad.nativ.d) && ((com.meishu.sdk.meishu_ad.nativ.d) cVar).f32371a == AdType.REWARD.value() && (adSlotA = this.f32138b.a()) != null) {
            com.meishu.sdk.meishu_ad.nativ.f fVar = (com.meishu.sdk.meishu_ad.nativ.f) adSlotA;
            if (!o.a(fVar.getWebTempUrl()) || fVar.getWebTempId() <= 0) {
                open_browser = true;
            }
        }
        q qVar = this.f32140d;
        Context context = this.f32139c;
        com.meishu.sdk.platform.ms.c cVar2 = this.f32138b;
        qVar.getClass();
        if (cVar2.a() instanceof BaseAdSlot) {
            webTempId = ((BaseAdSlot) cVar2.a()).getWebTempId();
            if (webTempId <= 0) {
                webTempId = ((BaseAdSlot) cVar2.a()).getRewardTmpId();
            }
            int reward_tmp_time = ((BaseAdSlot) cVar2.a()).getReward_tmp_time();
            if (reward_tmp_time > 0) {
                q.f32143j = reward_tmp_time * 1000;
            }
        } else {
            webTempId = 0;
        }
        if (!qVar.f32147d) {
            if (q.f32142i == null) {
                q.f32142i = new Handler();
            }
            q.f32142i.post(qVar.f32149f);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Intent intent = new Intent();
        intent.setAction("broadcast_onclick");
        intent.putExtra("clk_act_type", 2);
        intent.putExtra("image_width", displayMetrics.widthPixels);
        intent.putExtra("image_height", displayMetrics.heightPixels);
        intent.putExtra("click_reward_tmp_id", webTempId);
        intent.putExtra("open_loading_page_browser", open_browser);
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
    }

    @Override // com.meishu.sdk.core.webview.listener.d
    public void onWebReady(boolean z2) {
        j jVar = this.f32140d.f32150g;
        if (jVar != null) {
            jVar.onWebReady(z2);
        }
    }
}
