package com.byazt.fib;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.CountDownTimer;
import android.text.TextUtils;
import com.byazt.jz.d;
import com.byazt.xci.mp;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yrp.gu;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, 94})
/* loaded from: classes2.dex */
public class eb implements com.byazt.qu.hp {
    public com.byazt.xci.w hp;

    /* renamed from: j, reason: collision with root package name */
    public gu f19743j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f19744l;

    /* renamed from: w, reason: collision with root package name */
    public Map<String, Object> f19745w;

    public eb(com.byazt.xci.w wVar, Context context, gu guVar, Map<String, Object> map) {
        this.hp = wVar;
        this.f19744l = context;
        this.f19743j = guVar;
        this.f19745w = map;
    }

    private mp jx() {
        return com.byazt.rj.jx.hp(this.f19743j, this.f19745w);
    }

    private void l() {
        new CountDownTimer(3000L, 3000L) { // from class: com.byazt.fib.eb.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (com.byazt.jz.s.u() == null || com.byazt.jz.s.u().hp()) {
                    eb.this.hp(true);
                } else {
                    eb.this.hp(false);
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
            }
        }.start();
    }

    public void hp(String str) {
        this.jx = str;
    }

    @Override // com.byazt.qu.hp
    public boolean hp(Map<String, Object> map) {
        return hp();
    }

    public boolean l(String str) {
        if (this.f19744l == null) {
            return false;
        }
        try {
            Uri uri = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
            com.byazt.ymw.l.startActivity(this.f19744l, intent, TextUtils.equals(d.f21859s, UMModuleRegister.INNER));
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean hp() {
        com.byazt.xci.w wVar = this.hp;
        if (wVar == null) {
            com.byazt.rj.jx.hp(this.f19745w, com.byazt.ex.w.f19551s);
            return false;
        }
        String strHp = wVar.hp();
        if (this.f19743j.a() == 3 && !TextUtils.isEmpty(strHp)) {
            boolean zL = l(strHp);
            if (zL) {
                l();
                com.byazt.rj.jx.hp(this.f19745w, com.byazt.ex.w.jx);
                return zL;
            }
            hp(false);
            com.byazt.rj.jx.hp(this.f19745w, com.byazt.ex.w.f19550q);
            return zL;
        }
        com.byazt.rj.jx.hp(this.f19745w, com.byazt.ex.w.f19551s);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(boolean z2) {
        if (z2) {
            com.byazt.jdb.j.l(jx(), this.jx, "quickapp_success");
        } else {
            com.byazt.jdb.j.l(jx(), this.jx, "quickapp_fail");
        }
    }
}
