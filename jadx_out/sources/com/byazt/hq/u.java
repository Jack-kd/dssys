package com.byazt.hq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;

@com.byazt.kj.hp(hp = {0, 1, 158, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes2.dex */
public abstract class u {
    public static final u hp = new u() { // from class: com.byazt.hq.u.1
    };

    public interface hp {
        u hp(w wVar);
    }

    public void hp(w wVar, IOException iOException) {
    }

    public void hp(w wVar, InetSocketAddress inetSocketAddress, Proxy proxy, b bVar, IOException iOException) {
    }

    public static hp hp(u uVar) {
        return new hp() { // from class: com.byazt.hq.u.2
            @Override // com.byazt.hq.u.hp
            public u hp(w wVar) {
                return u.this;
            }
        };
    }
}
