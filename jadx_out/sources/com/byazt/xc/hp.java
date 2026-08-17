package com.byazt.xc;

import android.app.Activity;
import androidx.annotation.Nullable;
import androidx.core.location.LocationRequestCompat;
import com.byazt.qt.gu;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 592, 28})
/* loaded from: classes3.dex */
public class hp extends gu {
    public com.byazt.toc.s hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.pk.hp f27170l;

    public hp(com.byazt.toc.s sVar) {
        this.hp = sVar;
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
        com.byazt.toc.s sVar = this.hp;
        if (sVar != null) {
            return sVar.u();
        }
        return -1;
    }

    @Override // com.byazt.qt.gu
    public Map<String, Object> getMediaExtraInfo() {
        com.byazt.toc.s sVar = this.hp;
        if (sVar != null) {
            return sVar.xs();
        }
        return null;
    }

    @Override // com.byazt.qt.gu
    public com.byazt.qa.j getMediationManager() {
        return new s(new l(this.hp));
    }

    @Override // com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        com.byazt.toc.s sVar = this.hp;
        if (sVar != null) {
            sVar.hp(lVar);
        }
    }

    @Override // com.byazt.qt.gu
    public void setDownloadListener(final com.byazt.gu.jx jxVar) {
        com.byazt.toc.s sVar = this.hp;
        if (sVar != null) {
            sVar.hp(new com.byazt.voc.l() { // from class: com.byazt.xc.hp.2
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
        this.f27170l = hpVar;
    }

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
    }

    @Override // com.byazt.qt.gu
    public void showFullScreenVideoAd(Activity activity) {
        com.byazt.toc.s sVar = this.hp;
        if (sVar != null) {
            sVar.hp(activity);
        }
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
    }

    private void hp() {
        com.byazt.toc.s sVar = this.hp;
        if (sVar == null) {
            return;
        }
        sVar.hp(new com.byazt.sws.hp() { // from class: com.byazt.xc.hp.1
            @Override // com.byazt.sws.hp
            public void a() {
                if (hp.this.f27170l != null) {
                    hp.this.f27170l.j();
                }
            }

            @Override // com.byazt.sws.hp
            public void g_() {
                if (hp.this.f27170l != null) {
                    hp.this.f27170l.hp();
                }
            }

            @Override // com.byazt.sws.hp
            public void h_() {
                if (hp.this.f27170l != null) {
                    hp.this.f27170l.l();
                }
            }

            @Override // com.byazt.sws.hp
            public void hp() {
                if (hp.this.f27170l != null) {
                    hp.this.f27170l.hp(null);
                }
            }

            @Override // com.byazt.sws.hp
            public void j() {
                if (hp.this.f27170l != null) {
                    hp.this.f27170l.jx();
                }
            }

            @Override // com.byazt.sws.hp
            public void w() {
                if (hp.this.f27170l instanceof com.byazt.lg.l) {
                    ((com.byazt.lg.l) hp.this.f27170l).w();
                }
            }

            @Override // com.byazt.sws.hp
            public void hp(com.byazt.dq.hp hpVar) {
                if (hpVar == null || !(hp.this.f27170l instanceof com.byazt.lg.l)) {
                    return;
                }
                ((com.byazt.lg.l) hp.this.f27170l).hp(hpVar.hp, hpVar.f19238l);
            }

            @Override // com.byazt.sws.hp
            public void hp(com.byazt.ti.hp hpVar) {
                if (hp.this.f27170l instanceof com.byazt.lg.l) {
                    ((com.byazt.lg.l) hp.this.f27170l).l(j.hp(hpVar));
                }
            }
        });
    }

    @Override // com.byazt.qt.gu
    public void showFullScreenVideoAd(Activity activity, Object obj, String str) {
        com.byazt.toc.s sVar = this.hp;
        if (sVar != null) {
            sVar.l(activity, obj, str);
        }
    }
}
