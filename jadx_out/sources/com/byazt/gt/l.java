package com.byazt.gt;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MIN_JITTER_BUFFER, 34})
/* loaded from: classes2.dex */
public class l implements com.byazt.ub.jx {
    public static volatile l hp;

    /* renamed from: l, reason: collision with root package name */
    public final CopyOnWriteArraySet<com.byazt.ub.jx> f20610l = new CopyOnWriteArraySet<>();

    private l() {
    }

    public static l hp() {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new l();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    @Override // com.byazt.ub.jx
    public void l(boolean z2, JSONObject jSONObject) {
        Iterator<com.byazt.ub.jx> it = this.f20610l.iterator();
        while (it.hasNext()) {
            it.next().l(z2, jSONObject);
        }
    }

    @Override // com.byazt.ub.jx
    public void hp(String str, String str2, String str3) {
        Iterator<com.byazt.ub.jx> it = this.f20610l.iterator();
        while (it.hasNext()) {
            it.next().hp(str, str2, str3);
        }
    }

    @Override // com.byazt.ub.jx
    public void hp(boolean z2, String str, String str2, String str3, String str4, String str5, String str6) {
        Iterator<com.byazt.ub.jx> it = this.f20610l.iterator();
        while (it.hasNext()) {
            it.next().hp(z2, str, str2, str3, str4, str5, str6);
        }
    }

    @Override // com.byazt.ub.jx
    public void hp(boolean z2, JSONObject jSONObject) {
        Iterator<com.byazt.ub.jx> it = this.f20610l.iterator();
        while (it.hasNext()) {
            it.next().hp(z2, jSONObject);
        }
    }
}
