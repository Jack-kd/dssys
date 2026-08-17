package com.byazt.qfg;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.jz.EmptyView;
import com.byazt.jz.n;
import com.byazt.sw.hp;
import com.byazt.xci.mp;
import com.byazt.xci.nr;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 150})
/* loaded from: classes3.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.gog.jx f24684a;
    public SoftReference<com.byazt.qfg.hp> eb;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public jx f24685j;
    public FrameLayout jx;

    /* renamed from: l, reason: collision with root package name */
    public mp f24686l;

    /* renamed from: q, reason: collision with root package name */
    public Handler f24687q = new Handler(Looper.getMainLooper());

    /* renamed from: s, reason: collision with root package name */
    public SoftReference<com.byazt.gu.jx> f24688s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.go.hp f24689w;

    public interface hp {
        Context getActivity();

        void hp();

        void hp(long j2);

        void l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        this.f24687q.postDelayed(new Runnable() { // from class: com.byazt.qfg.q.4
            @Override // java.lang.Runnable
            public void run() {
                if (!com.byazt.zbc.a.hp) {
                    q.this.l();
                    return;
                }
                com.byazt.zbc.a.hp = false;
                if (q.this.f24684a instanceof com.byazt.fy.hp) {
                    ((com.byazt.fy.hp) q.this.f24684a).s().hp(new com.byazt.cb.hp() { // from class: com.byazt.qfg.q.4.1
                        @Override // com.byazt.cb.hp
                        public void hp() {
                        }

                        @Override // com.byazt.cb.hp
                        public void jx() {
                            q.this.l();
                        }

                        @Override // com.byazt.cb.hp
                        public void l() {
                        }
                    });
                }
            }
        }, 100L);
    }

    public void hp(Context context, mp mpVar) {
        this.hp = context;
        this.f24686l = mpVar;
        this.jx = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.jx.setLayoutParams(layoutParams);
        nr.l(this.f24686l);
    }

    public void l() {
        jx jxVar = this.f24685j;
        if (jxVar != null) {
            jxVar.l();
        }
    }

    public ViewGroup hp() {
        return this.jx;
    }

    public void hp(String str, int i2, com.byazt.qfg.hp hpVar, com.byazt.gu.jx jxVar) {
        this.eb = new SoftReference<>(hpVar);
        if (jxVar != null) {
            this.f24688s = new SoftReference<>(jxVar);
        }
        HashMap map = new HashMap();
        map.put("splash_show_type", Integer.valueOf(i2));
        com.byazt.go.hp hpVar2 = new com.byazt.go.hp(this.hp, this.f24686l, str, 4);
        ((com.byazt.sw.hp) hpVar2.hp(com.byazt.sw.hp.class)).hp(this);
        ((com.byazt.ey.hp) hpVar2.hp(com.byazt.ey.hp.class)).hp(map);
        SoftReference<com.byazt.gu.jx> softReference = this.f24688s;
        if (softReference == null) {
            hp(str, this.jx, null);
        } else {
            hp(str, this.jx, softReference.get());
        }
        ((com.byazt.sw.hp) hpVar2.hp(com.byazt.sw.hp.class)).hp(this.f24684a);
        hp.InterfaceC0368hp interfaceC0368hp = new hp.InterfaceC0368hp() { // from class: com.byazt.qfg.q.1
            @Override // com.byazt.sw.hp.InterfaceC0368hp
            public void hp(View view, int i3) {
                if (q.this.eb != null && q.this.eb.get() != null) {
                    ((com.byazt.qfg.hp) q.this.eb.get()).l();
                }
                q.this.jx();
            }
        };
        ((com.byazt.sw.hp) hpVar2.hp(com.byazt.sw.hp.class)).hp(interfaceC0368hp);
        mp mpVar = this.f24686l;
        if (mpVar != null) {
            n.l(mpVar.jm(), interfaceC0368hp, hp.InterfaceC0368hp.class);
        }
        this.f24689w = hpVar2;
        jx jxVar2 = this.f24685j;
        if (jxVar2 != null) {
            jxVar2.hp(hpVar2);
        }
    }

    private com.byazt.gog.jx hp(mp mpVar, String str) {
        if (mpVar.q() == 4) {
            return com.byazt.ff.s.hp(this.hp, mpVar, str);
        }
        return null;
    }

    private void hp(String str, final ViewGroup viewGroup, com.byazt.gu.jx jxVar) {
        mp mpVar = this.f24686l;
        if (mpVar == null || this.hp == null || viewGroup == null) {
            return;
        }
        this.f24684a = hp(mpVar, str);
        EmptyView emptyView = new EmptyView(this.hp, viewGroup, this.f24686l.ub());
        emptyView.hp(this.f24686l, str);
        emptyView.setAdType(3);
        viewGroup.addView(emptyView);
        if (jxVar != null) {
            hp(jxVar);
        }
        emptyView.setCallback(new EmptyView.hp() { // from class: com.byazt.qfg.q.2
            @Override // com.byazt.jz.EmptyView.hp
            public void hp(View view, Map<String, Object> map) {
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void l() {
                if (q.this.f24684a != null) {
                    q.this.f24684a.jx();
                }
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void hp(boolean z2) {
                if (q.this.f24684a != null && z2) {
                    q.this.f24684a.l();
                }
                q.this.hp(z2);
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void hp() {
                ViewGroup viewGroup2;
                Context context;
                if (q.this.f24684a != null) {
                    q.this.f24684a.hp();
                }
                if (q.this.f24684a == null || (viewGroup2 = viewGroup) == null || viewGroup2.getParent() == null) {
                    return;
                }
                try {
                    context = ((View) viewGroup.getParent()).getContext();
                } catch (Exception unused) {
                    context = null;
                }
                if (context == null || !(context instanceof Activity)) {
                    return;
                }
                q.this.f24684a.hp((Activity) context, false);
            }
        });
    }

    private void hp(final com.byazt.gu.jx jxVar) {
        com.byazt.gog.jx jxVar2 = this.f24684a;
        if (jxVar2 == null) {
            return;
        }
        jxVar2.hp(new com.byazt.gog.hp() { // from class: com.byazt.qfg.q.3
            @Override // com.byazt.gog.hp
            public void hp() {
                com.byazt.gu.jx jxVar3 = jxVar;
                if (jxVar3 != null) {
                    jxVar3.hp();
                }
            }

            @Override // com.byazt.gog.hp
            public void jx(long j2, long j3, String str, String str2) {
                com.byazt.gu.jx jxVar3 = jxVar;
                if (jxVar3 != null) {
                    jxVar3.jx(j2, j3, str, str2);
                }
            }

            @Override // com.byazt.gog.hp
            public void l(long j2, long j3, String str, String str2) {
                com.byazt.gu.jx jxVar3 = jxVar;
                if (jxVar3 != null) {
                    jxVar3.l(j2, j3, str, str2);
                }
            }

            @Override // com.byazt.gog.hp
            public void hp(long j2, long j3, String str, String str2) {
                com.byazt.gu.jx jxVar3 = jxVar;
                if (jxVar3 != null) {
                    jxVar3.hp(j2, j3, str, str2);
                }
            }

            @Override // com.byazt.gog.hp
            public void hp(long j2, String str, String str2) {
                com.byazt.gu.jx jxVar3 = jxVar;
                if (jxVar3 != null) {
                    jxVar3.hp(j2, str, str2);
                }
            }

            @Override // com.byazt.gog.hp
            public void hp(String str, String str2) {
                com.byazt.gu.jx jxVar3 = jxVar;
                if (jxVar3 != null) {
                    jxVar3.hp(str, str2);
                }
            }
        });
    }

    public void hp(int i2) {
        if (i2 == 2 && nr.hp(this.f24686l)) {
            this.f24685j = new j();
        }
        jx jxVar = this.f24685j;
        if (jxVar != null) {
            jxVar.hp(this.hp, this.jx, this.f24686l);
            this.f24685j.hp(this.f24689w);
        }
    }

    public void hp(com.byazt.oh.j jVar, hp hpVar) {
        jx jxVar = this.f24685j;
        if (jxVar != null) {
            jxVar.hp(jVar, hpVar);
        }
    }

    public void hp(boolean z2) {
        jx jxVar = this.f24685j;
        if (jxVar != null) {
            jxVar.hp(z2);
        }
    }
}
