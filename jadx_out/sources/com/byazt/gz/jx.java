package com.byazt.gz;

import android.text.TextUtils;
import androidx.core.location.LocationRequestCompat;
import com.byazt.pg.dy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_AVPH_DNS_PARSE, 30})
/* loaded from: classes2.dex */
public class jx implements dy {

    /* renamed from: l, reason: collision with root package name */
    public l f20635l = new l();
    public hp jx = new hp();
    public boolean hp = !this.f20635l.hp();

    @Override // com.byazt.pg.dy
    public String get(String str) {
        String str2 = this.f20635l.hp() ? this.f20635l.get(str) : "";
        return (this.hp && TextUtils.isEmpty(str2)) ? this.jx.get(str) : str2;
    }

    @Override // com.byazt.pg.dy
    public boolean getBoolean(String str) {
        boolean z2 = this.f20635l.hp() ? this.f20635l.getBoolean(str) : false;
        return (!this.hp || z2) ? z2 : this.jx.getBoolean(str);
    }

    @Override // com.byazt.pg.dy
    public int getInt(String str) {
        int i2 = this.f20635l.hp() ? this.f20635l.getInt(str) : Integer.MAX_VALUE;
        return (this.hp && i2 == Integer.MAX_VALUE) ? this.jx.getInt(str) : i2;
    }

    @Override // com.byazt.pg.dy
    public long getLong(String str) {
        long j2 = this.f20635l.hp() ? this.f20635l.getLong(str) : LocationRequestCompat.PASSIVE_INTERVAL;
        return (this.hp && j2 == 2147483647L) ? this.jx.getLong(str) : j2;
    }

    @Override // com.byazt.pg.dy
    public void set(String str, String str2) {
        if (this.f20635l.hp()) {
            this.f20635l.set(str, str2);
        }
    }
}
