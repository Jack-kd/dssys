package com.byazt.nj;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.byazt.htw.j;
import com.byazt.qa.eb;
import com.byazt.toc.zy;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 932, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.qt.l {
    public zy hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.p000if.hp f23639j;
    public com.byazt.mu.l jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.mu.hp f23640l;

    /* renamed from: w, reason: collision with root package name */
    public j f23641w = new j() { // from class: com.byazt.nj.hp.2
        @Override // com.byazt.htw.j
        public Activity getActivity() {
            return null;
        }

        @Override // com.byazt.htw.j
        public void hp() {
            if (hp.this.jx != null) {
                hp.this.jx.hp(hp.this);
            }
        }

        @Override // com.byazt.htw.j
        public void jx() {
            if (hp.this.jx != null) {
                hp.this.jx.hp();
            }
        }

        @Override // com.byazt.htw.j
        public void l() {
            if (hp.this.jx != null) {
                hp.this.jx.l();
            }
        }
    };

    public hp(zy zyVar, com.byazt.p000if.hp hpVar) {
        this.hp = zyVar;
        this.f23639j = hpVar;
        hp();
    }

    @Override // com.byazt.qt.l
    public int getInteractionType() {
        zy zyVar = this.hp;
        if (zyVar != null) {
            return zyVar.u();
        }
        return -1;
    }

    @Override // com.byazt.qt.l
    public String getLifecycleId() {
        return null;
    }

    @Override // com.byazt.qt.l
    public Map<String, Object> getMediaExtraInfo() {
        zy zyVar = this.hp;
        if (zyVar != null) {
            return zyVar.xs();
        }
        return null;
    }

    @Override // com.byazt.qt.l
    public eb getMediationManager() {
        return new com.byazt.cl.hp(new l(this.hp));
    }

    @Override // com.byazt.qt.l
    public View getSplashCardView() {
        zy zyVar = this.hp;
        if (zyVar != null) {
            return zyVar.a();
        }
        return null;
    }

    @Override // com.byazt.qt.l
    public View getSplashView() {
        zy zyVar = this.hp;
        if (zyVar != null) {
            return zyVar.ns();
        }
        return null;
    }

    @Override // com.byazt.qt.l
    public void hideSkipButton() {
        zy zyVar = this.hp;
        if (zyVar != null) {
            zyVar.b();
        }
    }

    @Override // com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        zy zyVar = this.hp;
        if (zyVar != null) {
            zyVar.hp(lVar);
        }
    }

    @Override // com.byazt.qt.l
    public void setDownloadListener(final com.byazt.gu.jx jxVar) {
        zy zyVar = this.hp;
        if (zyVar != null) {
            zyVar.hp(new com.byazt.voc.l() { // from class: com.byazt.nj.hp.3
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

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
    }

    @Override // com.byazt.qt.l
    public void setSplashAdListener(com.byazt.mu.hp hpVar) {
        this.f23640l = hpVar;
    }

    @Override // com.byazt.qt.l
    public void setSplashCardListener(com.byazt.mu.l lVar) {
        this.jx = lVar;
    }

    @Override // com.byazt.qt.l
    public void showSplashCardView(ViewGroup viewGroup, Activity activity) {
        zy zyVar = this.hp;
        if (zyVar == null || viewGroup == null || activity == null) {
            return;
        }
        zyVar.hp(viewGroup, activity);
    }

    @Override // com.byazt.qt.l
    public void showSplashView(ViewGroup viewGroup) {
        zy zyVar = this.hp;
        if (zyVar == null || viewGroup == null) {
            return;
        }
        zyVar.hp(viewGroup);
    }

    @Override // com.byazt.qt.l
    public PluginValueSet values() {
        return com.byazt.xi.hp.hp(super.values()).hp(1, com.byazt.owd.l.hp()).l();
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
    }

    private void hp() {
        this.hp.hp(new com.byazt.htw.l() { // from class: com.byazt.nj.hp.1
            @Override // com.byazt.htw.l
            public void hp(com.byazt.dq.hp hpVar) {
                if (hp.this.f23639j == null || hpVar == null) {
                    return;
                }
                hp.this.f23639j.hp(hp.this, new com.byazt.eb.hp(hpVar.hp, hpVar.f19238l));
            }

            @Override // com.byazt.htw.l
            public void j() {
                if (hp.this.f23640l != null) {
                    hp.this.f23640l.l(hp.this);
                }
            }

            @Override // com.byazt.htw.l
            public void l(int i2) {
                if (hp.this.f23640l != null) {
                    hp.this.f23640l.hp(hp.this, i2);
                }
            }

            @Override // com.byazt.htw.l
            public void w() {
                if (hp.this.f23640l != null) {
                    hp.this.f23640l.hp(hp.this);
                }
            }

            @Override // com.byazt.htw.l
            public void hp(int i2) {
                if (hp.this.f23640l != null) {
                    hp.this.f23640l.hp(hp.this, i2);
                }
            }
        });
        this.hp.hp(this.f23641w);
    }
}
