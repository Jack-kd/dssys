package com.byazt.ju;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_200, 150})
/* loaded from: classes.dex */
public class q extends com.byazt.oj.hp {
    public final com.byazt.rt.jx hp;

    public q(com.byazt.rt.jx jxVar) {
        this.hp = jxVar;
    }

    private com.byazt.bki.l hp(Activity activity, com.byazt.rt.jx jxVar) {
        final com.byazt.qt.eb dislikeDialog = jxVar.getDislikeDialog(activity);
        return new com.byazt.bki.l() { // from class: com.byazt.ju.q.1
            @Override // com.byazt.bki.l
            public void hp() {
                com.byazt.qt.eb ebVar = dislikeDialog;
                if (ebVar != null) {
                    ebVar.showDislikeDialog();
                }
            }

            @Override // com.byazt.bki.l
            public void hp(final com.byazt.bki.eb ebVar) {
                com.byazt.qt.eb ebVar2 = dislikeDialog;
                if (ebVar2 != null) {
                    ebVar2.setDislikeInteractionCallback(new com.byazt.cg.hp(null) { // from class: com.byazt.ju.q.1.1
                        @Override // com.byazt.cg.hp
                        public void hp() {
                            com.byazt.bki.eb ebVar3 = ebVar;
                            if (ebVar3 != null) {
                                ebVar3.l();
                            }
                        }

                        @Override // com.byazt.cg.hp
                        public void l() {
                            com.byazt.bki.eb ebVar3 = ebVar;
                            if (ebVar3 != null) {
                                ebVar3.hp();
                            }
                        }

                        @Override // com.byazt.cg.hp
                        public void hp(int i2, String str, boolean z2) {
                            com.byazt.bki.eb ebVar3 = ebVar;
                            if (ebVar3 != null) {
                                ebVar3.hp(i2, str);
                            }
                        }
                    });
                }
            }
        };
    }

    @Override // com.byazt.oj.hp
    public String getActionText() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getActionText();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public int getAdImageMode() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getImageMode();
        }
        return -1;
    }

    @Override // com.byazt.oj.hp
    public String getDescription() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getAdDescription();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public com.byazt.oj.jx getDislikeDialog(Activity activity) {
        com.byazt.rt.jx jxVar;
        if (activity == null || (jxVar = this.hp) == null) {
            return null;
        }
        return new com.byazt.ys.l(hp(activity, jxVar));
    }

    @Override // com.byazt.oj.hp
    public com.byazt.qt.eb getDislikeDialog2(Activity activity) {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getDislikeDialog(activity);
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public com.byazt.qt.j getDislikeInfo() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getDislikeInfo();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public String getIconUrl() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getIconUrl();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public List<String> getImageList() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getImages();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public String getImageUrl() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getImageUrl();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public int getInteractionType() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getInteractionType();
        }
        return -1;
    }

    @Override // com.byazt.oj.hp
    public com.byazt.oj.j getNativeAdAppInfo() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar == null || !jxVar.hasAppInfo()) {
            return null;
        }
        com.byazt.qjq.hp hpVar = new com.byazt.qjq.hp();
        hpVar.j(this.hp.getAppName());
        hpVar.w(this.hp.getAuthorName());
        hpVar.hp(this.hp.getPackageSizeBytes());
        hpVar.a(this.hp.getPermissionsUrl());
        hpVar.eb(this.hp.getPrivacyAgreement());
        hpVar.s(this.hp.getVersionName());
        hpVar.hp(this.hp.getPermissionsMap());
        hpVar.l(this.hp.getAppInfoExtra());
        hpVar.jx(this.hp.getFunctionDescUrl());
        hpVar.hp(this.hp.getRegUrl());
        hpVar.l(this.hp.getRegNumber());
        return new com.byazt.ys.jx(hpVar);
    }

    @Override // com.byazt.oj.hp
    public String getSource() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getSource();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public double getStarRating() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getStarRating();
        }
        return 0.0d;
    }

    @Override // com.byazt.oj.hp
    public String getTitle() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getAdTitle();
        }
        return null;
    }

    @Override // com.byazt.oj.hp
    public boolean hasDislike() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.hasDislike();
        }
        return false;
    }

    @Override // com.byazt.oj.hp
    public void registerView(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.tl.j jVar) {
    }

    @Override // com.byazt.oj.hp
    public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.setDislikeCallback(activity, hpVar);
        }
    }

    @Override // com.byazt.oj.hp
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.setDislikeDialog(dialog, numArr);
        }
    }

    @Override // com.byazt.oj.hp
    public com.byazt.oj.jx getDislikeDialog(Activity activity, Map<String, Object> map) {
        com.byazt.rt.jx jxVar;
        if (activity == null || map == null || (jxVar = this.hp) == null) {
            return null;
        }
        return new com.byazt.ys.l(hp(activity, jxVar));
    }

    @Override // com.byazt.oj.hp
    public com.byazt.qt.eb getDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getDislikeDialog(dialog, numArr);
        }
        return null;
    }
}
