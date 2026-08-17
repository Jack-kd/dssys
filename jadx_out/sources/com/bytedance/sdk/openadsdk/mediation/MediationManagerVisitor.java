package com.bytedance.sdk.openadsdk.mediation;

import android.os.Bundle;
import com.byazt.fl.v;
import com.byazt.kj.hp;
import com.byazt.tu.l;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 1817})
/* loaded from: classes3.dex */
public class MediationManagerVisitor {
    private static volatile MediationManagerVisitor hp;

    /* renamed from: l, reason: collision with root package name */
    private static volatile Object f28969l;
    private l jx;

    private MediationManagerVisitor() {
    }

    public static MediationManagerVisitor getInstance() {
        if (hp == null) {
            synchronized (MediationManagerVisitor.class) {
                try {
                    if (hp == null) {
                        hp = new MediationManagerVisitor();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public synchronized IMediationManager getMediationManager() {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("mediation_manager", "mediation_manager");
            TTAdManager adManager = TTAdSdk.getAdManager();
            Object obj = f28969l;
            if (adManager != null) {
                f28969l = adManager.getExtra(null, bundle);
            }
            if (f28969l == null) {
                return null;
            }
            if (this.jx == null) {
                this.jx = new l(v.hp(f28969l));
            } else if (obj != f28969l) {
                this.jx.hp(v.hp(f28969l));
            }
            return this.jx;
        } catch (Throwable th) {
            throw th;
        }
    }
}
