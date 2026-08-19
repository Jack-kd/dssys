package com.byazt.ju;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.LinkedList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_200, 45})
/* loaded from: classes.dex */
public class e extends com.byazt.qa.w {
    public k hp;

    public e(k kVar) {
        this.hp = kVar;
    }

    @Override // com.byazt.qa.jx
    public List<com.byazt.qa.l> getAdLoadInfo() {
        if (this.hp == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i2 = 0; i2 < this.hp.l().size(); i2++) {
            linkedList.add(new s(this.hp.l().get(i2)));
        }
        return linkedList;
    }

    @Override // com.byazt.qa.jx
    public com.byazt.qa.hp getBestEcpm() {
        k kVar = this.hp;
        return kVar != null ? new eb(kVar.j()) : new eb(null);
    }

    @Override // com.byazt.qa.jx
    public List<com.byazt.qa.hp> getCacheList() {
        if (this.hp == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i2 = 0; i2 < this.hp.w().size(); i2++) {
            linkedList.add(new eb(this.hp.w().get(i2)));
        }
        return linkedList;
    }

    @Override // com.byazt.qa.jx
    public List<com.byazt.qa.hp> getMultiBiddingEcpm() {
        if (this.hp == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i2 = 0; i2 < this.hp.jx().size(); i2++) {
            linkedList.add(new eb(this.hp.jx().get(i2)));
        }
        return linkedList;
    }

    @Override // com.byazt.qa.jx
    public com.byazt.qa.hp getShowEcpm() {
        k kVar = this.hp;
        return kVar != null ? new eb(kVar.a()) : new eb(null);
    }

    @Override // com.byazt.qa.w
    public boolean hasDislike() {
        k kVar = this.hp;
        if (kVar != null) {
            return kVar.eb();
        }
        return false;
    }

    @Override // com.byazt.qa.w
    public boolean isExpress() {
        k kVar = this.hp;
        if (kVar != null) {
            return kVar.s();
        }
        return false;
    }

    @Override // com.byazt.qa.jx
    public boolean isReady() {
        k kVar = this.hp;
        if (kVar != null) {
            return kVar.hp();
        }
        return true;
    }

    @Override // com.byazt.qa.w
    public void onPause() {
        k kVar = this.hp;
        if (kVar != null) {
            kVar.e();
        }
    }

    @Override // com.byazt.qa.w
    public void onResume() {
        k kVar = this.hp;
        if (kVar != null) {
            kVar.q();
        }
    }

    @Override // com.byazt.qa.w
    public void setShakeViewListener(final com.byazt.tl.a aVar) {
        k kVar = this.hp;
        if (kVar != null) {
            kVar.hp(new v() { // from class: com.byazt.ju.e.1
                @Override // com.byazt.ju.v
                public void hp() {
                    com.byazt.tl.a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.hp();
                    }
                }
            });
        }
    }

    @Override // com.byazt.qa.w
    public void setUseCustomVideo(boolean z2) {
        k kVar = this.hp;
        if (kVar != null) {
            kVar.hp(z2);
        }
    }
}
