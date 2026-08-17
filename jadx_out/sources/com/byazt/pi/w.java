package com.byazt.pi;

import com.byazt.qa.eb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.LinkedList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1341, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends eb {
    @Override // com.byazt.qa.eb
    public void destroy() {
    }

    @Override // com.byazt.qa.jx
    public List<com.byazt.qa.l> getAdLoadInfo() {
        return new LinkedList();
    }

    @Override // com.byazt.qa.jx
    public List<com.byazt.qa.hp> getCacheList() {
        return new LinkedList();
    }

    @Override // com.byazt.qa.jx
    public List<com.byazt.qa.hp> getMultiBiddingEcpm() {
        return new LinkedList();
    }

    @Override // com.byazt.qa.jx
    public boolean isReady() {
        return true;
    }

    @Override // com.byazt.qa.jx
    public hp getBestEcpm() {
        return new hp();
    }

    @Override // com.byazt.qa.jx
    public hp getShowEcpm() {
        return new hp();
    }
}
