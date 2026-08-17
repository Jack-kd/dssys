package com.byazt.xc;

import android.app.Activity;
import androidx.annotation.Nullable;
import androidx.core.location.LocationRequestCompat;
import com.byazt.qt.gu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 592, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends gu {
    public com.byazt.toc.hp hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.pk.hp f27174l;

    public w(com.byazt.toc.hp hpVar) {
        this.hp = hpVar;
        hp();
    }

    @Override // com.byazt.qt.gu
    public long getExpirationTimestamp() {
        return LocationRequestCompat.PASSIVE_INTERVAL;
    }

    @Override // com.byazt.qt.gu
    public int getFullVideoAdType() {
        return 0;
    }

    @Override // com.byazt.qt.gu
    public int getInteractionType() {
        com.byazt.toc.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.u();
        }
        return -1;
    }

    @Override // com.byazt.qt.gu
    public Map<String, Object> getMediaExtraInfo() {
        com.byazt.toc.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.xs();
        }
        return null;
    }

    @Override // com.byazt.qt.gu
    public com.byazt.qa.j getMediationManager() {
        return new s(new a(this.hp));
    }

    @Override // com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        com.byazt.toc.hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(lVar);
        }
    }

    @Override // com.byazt.qt.gu
    public void setDownloadListener(final com.byazt.gu.jx jxVar) {
        com.byazt.toc.hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(new com.byazt.voc.l() { // from class: com.byazt.xc.w.2
                @Override // com.byazt.voc.l
                public void hp() {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp();
                    }
                }

                @Override // com.byazt.voc.l
                public void l() {
                }

                @Override // com.byazt.voc.l
                public void l(long j2, long j3, @Nullable String str, @Nullable String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.jx(j2, j3, str, str2);
                    }
                }

                @Override // com.byazt.voc.l
                public void hp(long j2, long j3, int i2, int i3, @Nullable String str, @Nullable String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp(j2, j3, str, str2);
                    }
                }

                @Override // com.byazt.voc.l
                public void hp(long j2, long j3, @Nullable String str, @Nullable String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.l(j2, j3, str, str2);
                    }
                }

                @Override // com.byazt.voc.l
                public void hp(long j2, @Nullable String str, @Nullable String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp(j2, str, str2);
                    }
                }

                @Override // com.byazt.voc.l
                public void hp(@Nullable String str, @Nullable String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp(str, str2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.qt.gu
    public void setFullScreenVideoAdInteractionListener(com.byazt.pk.hp hpVar) {
        this.f27174l = hpVar;
    }

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
    }

    @Override // com.byazt.qt.gu
    public void showFullScreenVideoAd(Activity activity) {
        com.byazt.toc.hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(activity);
        }
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
    }

    private void hp() {
        com.byazt.toc.hp hpVar = this.hp;
        if (hpVar == null) {
            return;
        }
        hpVar.hp(new com.byazt.to.hp() { // from class: com.byazt.xc.w.1
            @Override // com.byazt.to.hp
            public void a() {
                if (w.this.f27174l != null) {
                    w.this.f27174l.j();
                }
            }

            @Override // com.byazt.to.hp
            public void eb() {
                if (w.this.f27174l instanceof com.byazt.lg.l) {
                    ((com.byazt.lg.l) w.this.f27174l).a();
                }
            }

            @Override // com.byazt.to.hp
            public void hp() {
                if (w.this.f27174l != null) {
                    w.this.f27174l.hp(null);
                }
            }

            @Override // com.byazt.to.hp
            public void j() {
                if (w.this.f27174l != null) {
                    w.this.f27174l.jx();
                }
            }

            @Override // com.byazt.to.hp
            public void jx() {
                if (w.this.f27174l != null) {
                    w.this.f27174l.l();
                }
            }

            @Override // com.byazt.to.hp
            public void l() {
                if (w.this.f27174l != null) {
                    w.this.f27174l.hp();
                }
            }

            @Override // com.byazt.to.hp
            public void s() {
                if (w.this.f27174l instanceof com.byazt.lg.l) {
                    ((com.byazt.lg.l) w.this.f27174l).eb();
                }
            }

            @Override // com.byazt.to.hp
            public void w() {
                if (w.this.f27174l instanceof com.byazt.lg.l) {
                    ((com.byazt.lg.l) w.this.f27174l).w();
                }
            }

            @Override // com.byazt.to.hp
            public void hp(com.byazt.dq.hp hpVar2) {
                if (hpVar2 == null || !(w.this.f27174l instanceof com.byazt.lg.l)) {
                    return;
                }
                ((com.byazt.lg.l) w.this.f27174l).hp(hpVar2.hp, hpVar2.f19238l);
            }

            @Override // com.byazt.to.hp
            public void hp(com.byazt.ti.hp hpVar2) {
                if (w.this.f27174l instanceof com.byazt.lg.l) {
                    ((com.byazt.lg.l) w.this.f27174l).l(j.hp(hpVar2));
                }
            }
        });
    }

    @Override // com.byazt.qt.gu
    public void showFullScreenVideoAd(Activity activity, Object obj, String str) {
        com.byazt.toc.hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(activity, obj, str);
        }
    }
}
