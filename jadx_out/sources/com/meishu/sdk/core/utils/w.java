package com.meishu.sdk.core.utils;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.meishu.sdk.core.safe.SafeBroadcastReceiver;

/* loaded from: classes4.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public final IntentFilter f32037a = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");

    /* renamed from: b, reason: collision with root package name */
    public final b f32038b = new b();

    /* renamed from: c, reason: collision with root package name */
    public boolean f32039c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f32040d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f32041e;

    public static class b extends SafeBroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        public final w f32042a;

        @Override // com.meishu.sdk.core.safe.SafeBroadcastReceiver
        public void a(Context context, Intent intent) {
            w wVar;
            String stringExtra = intent.getStringExtra(MediationConstant.KEY_REASON);
            LogUtil.dev("HW", "reason:" + stringExtra);
            if ("homekey".equals(stringExtra)) {
                w wVar2 = this.f32042a;
                if (wVar2 != null) {
                    wVar2.f32039c = true;
                    return;
                }
                return;
            }
            if (!"recentapps".equals(stringExtra) || (wVar = this.f32042a) == null) {
                return;
            }
            wVar.f32040d = true;
        }

        public b(w wVar) {
            this.f32042a = wVar;
        }
    }
}
