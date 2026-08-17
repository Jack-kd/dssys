package com.byazt.na;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 2, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME})
/* loaded from: classes3.dex */
public class sz {
    public final Map<String, String> hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f23505j;
    public final s jx;

    /* renamed from: l, reason: collision with root package name */
    public final LottieAnimationView f23506l;

    public sz() {
        this.hp = new HashMap();
        this.f23505j = true;
        this.f23506l = null;
        this.jx = null;
    }

    public String hp(String str) {
        return str;
    }

    public final String jx(String str, String str2) {
        if (this.f23505j && this.hp.containsKey(str2)) {
            return this.hp.get(str2);
        }
        String strHp = hp(str, str2);
        if (this.f23505j) {
            this.hp.put(str2, strHp);
        }
        return strHp;
    }

    public void l(String str, String str2) {
        this.hp.put(str, str2);
        hp();
    }

    public String hp(String str, String str2) {
        return hp(str2);
    }

    private void hp() {
        LottieAnimationView lottieAnimationView = this.f23506l;
        if (lottieAnimationView != null) {
            lottieAnimationView.invalidate();
        }
        s sVar = this.jx;
        if (sVar != null) {
            sVar.invalidateSelf();
        }
    }

    public sz(LottieAnimationView lottieAnimationView) {
        this.hp = new HashMap();
        this.f23505j = true;
        this.f23506l = lottieAnimationView;
        this.jx = null;
    }
}
