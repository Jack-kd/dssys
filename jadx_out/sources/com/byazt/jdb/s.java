package com.byazt.jdb;

import android.text.TextUtils;
import com.byazt.jdb.q;
import com.byazt.jz.lv;
import com.byazt.xci.cx;
import com.byazt.xci.mp;
import com.byazt.xci.xs;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 169, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes.dex */
public class s {
    public static volatile s hp;

    private s() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(mp mpVar, String str) throws JSONException {
        if (mpVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
        jxVarHp.put("save_jump_success_time", System.currentTimeMillis());
        JSONObject jSONObjectIj = mpVar.ij();
        if (jSONObjectIj == null) {
            return;
        }
        jxVarHp.put("save_dpl_success_materialmeta", jSONObjectIj.toString());
        jxVarHp.put("save_jump_success_ad_tag", str);
    }

    public static s hp() {
        if (hp == null) {
            synchronized (s.class) {
                try {
                    if (hp == null) {
                        hp = new s();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(final mp mpVar, final String str, final boolean z2, final boolean z3, final q.hp hpVar) {
        if (mpVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.vh.hp.hp(1);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        new q().hp(new q.hp() { // from class: com.byazt.jdb.s.1

            /* renamed from: s, reason: collision with root package name */
            public boolean f21425s = false;

            @Override // com.byazt.jdb.q.hp
            public void hp(long j2) {
                q.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(j2);
                }
                hp(false, "resume");
                if (!z2) {
                    hp(str, z3);
                }
                com.byazt.jz.l.hp().put("dpl_reject_by_dialog", true);
                j.hp(mpVar, str, "dpl_popup", System.currentTimeMillis() - jCurrentTimeMillis);
                if (j2 > cx.l()) {
                    com.byazt.vh.hp.hp(2);
                } else {
                    com.byazt.vh.hp.hp(3);
                }
            }

            @Override // com.byazt.jdb.q.hp
            public void hp(String str2) {
                q.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(str2);
                }
                hp(false, str2);
            }

            @Override // com.byazt.jdb.q.hp
            public void hp(boolean z4) {
                q.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(z4);
                }
                this.f21425s = z4;
                hp(z4, "stop");
                if (!this.f21425s && !z2) {
                    hp(str, z3);
                }
                com.byazt.jz.l.hp().put("dpl_reject_by_dialog", false);
            }

            private void hp(String str2, boolean z4) {
                mp mpVar2 = mpVar;
                if (mpVar2 == null || this.f21425s) {
                    return;
                }
                boolean zXs = mpVar2.xs();
                xs xsVarK = mpVar.k();
                if (xsVarK == null || xsVarK.hp()) {
                    return;
                }
                int iJx = xsVarK.jx();
                if (zXs) {
                    return;
                }
                if (iJx == 1 || iJx == 2) {
                    lv.hp(mpVar, str2, z4);
                }
            }

            private void hp(final boolean z4, final String str2) {
                com.byazt.uid.w.hp(new com.byazt.uid.eb("EventData") { // from class: com.byazt.jdb.s.1.1
                    @Override // java.lang.Runnable
                    public void run() throws JSONException {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        if (z2) {
                            j.jx(mpVar, str, z4 ? "lp_dpl_success" : "lp_dpl_failed");
                            return;
                        }
                        String str3 = z4 ? "dpl_success" : "dpl_failed";
                        HashMap map = new HashMap();
                        boolean zHp = com.byazt.jz.s.u().hp();
                        map.put("has_focus", Boolean.valueOf(com.byazt.jz.s.u().hp(true)));
                        map.put("is_background", Boolean.valueOf(zHp));
                        map.put("life", str2);
                        map.put("total_duration", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                        AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                        j.q(mpVar, str, str3, map);
                        AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                        mp mpVar2 = mpVar;
                        if (mpVar2 == null || !z4) {
                            return;
                        }
                        s.l(mpVar2, str);
                    }
                }, 5);
            }
        });
    }
}
